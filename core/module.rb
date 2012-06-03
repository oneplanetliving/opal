class Module
  def ===(object)
    %x{

      if (object == null) {
        return false;
      }

      var search = object._klass;

      while (search) {
        if (search === this) {
          return true;
        }

        search = search._super;
      }

      return false;
    }
  end

  def alias_method(newname, oldname)
    `this._proto[mid_to_jsid(newname)] = this._proto[mid_to_jsid(oldname)]`
    self
  end

  def ancestors
    %x{
      var parent = this,
          result = [];

      while (parent) {
        if (parent._isSingleton) {
          continue;
        }
        else if (parent._isIClass)
          result.push(parent._klass);
        else {
          result.push(parent);
        }

        parent = parent._super;
      }

      return result;
    }
  end

  def append_features(klass)
    %x{
      var module = this;

      if (!klass.$included_modules) {
        klass.$included_modules = [];
      }

      if (klass.$included_modules.indexOf(module) != -1) {
        return;
      }

      klass.$included_modules.push(module);

      if (!module.$included_in) {
        module.$included_in = [];
      }

      module.$included_in.push(klass);

      var donator   = module._alloc.prototype,
          prototype = klass._proto,
          methods   = module._methods;

      for (var i = 0, length = methods.length; i < length; i++) {
        var method = methods[i];
        prototype[method] = donator[method];
      }

      if (klass.$included_in) {
        __donate(klass, methods.slice(), true);
      }
    }

    self
  end

  # Private helper function to define attributes
  %x{
    function define_attr(klass, name, getter, setter) {
      if (getter) {
        var get_jsid = mid_to_jsid(name);

        klass._alloc.prototype[get_jsid] = function() {
          var res = this[name];
          return res == null ? nil : res;
        };

        __donate(klass, [get_jsid]);
      }

      if (setter) {
        var set_jsid = mid_to_jsid(name + '=');

        klass._alloc.prototype[set_jsid] = function(val) {
          return this[name] = val;
        };

        __donate(klass, [set_jsid]);
      }
    }
  }

  def attr_accessor(*attrs)
    %x{
      for (var i = 0, length = attrs.length; i < length; i++) {
        define_attr(this, attrs[i], true, true);
      }

      return nil;
    }
  end

  def attr_reader(*attrs)
    %x{
      for (var i = 0, length = attrs.length; i < length; i++) {
        define_attr(this, attrs[i], true, false);
      }

      return nil;
    }
  end

  def attr_writer(*attrs)
    %x{
      for (var i = 0, length = attrs.length; i < length; i++) {
        define_attr(this, attrs[i], false, true);
      }

      return nil;
    }
  end

  def attr(name, setter = false)
    `define_attr(this, name, true, setter)`

    self
  end

  def define_method(name, &block)
    %x{
      if (block === nil) {
        no_block_given();
      }

      var jsid = mid_to_jsid(name);
      block._jsid = jsid;

      this._alloc.prototype[jsid] = block;
      __donate(this, [jsid]);

      return nil;
    }
  end

  def include(*mods)
    %x{
      var i = mods.length - 1, mod;
      while (i >= 0) {
        mod = mods[i];
        define_iclass(this, mod);
        mod.$append_features(this);
        mod.$included(this);
        i--;
      }

      return this;
    }
  end

  # FIXME
  def instance_methods
    []
  end

  def included(mod)
  end

  def module_eval(&block)
    %x{
      if (block === nil) {
        no_block_given();
      }

      return block.call(this);
    }
  end

  alias class_eval module_eval

  def name
    `this._name`
  end

  alias public_instance_methods instance_methods

  alias to_s name
end
