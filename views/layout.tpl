<!DOCTYPE html>
<html>
  <head>
    {% block header %}{% include "./header/index.tpl" %}{% endblock %}
  </head>
  <body>

    <div class="statusbar-overlay"></div>

    {% block left-panel %}
      {% include "./partials/left-panel.tpl" %}
    {% endblock %}

    <div class="views tabs toolbar-through">
      {% block views %}
        {% include "./create/index.tpl" %}
        {% include "./boards/index.tpl" %}
      {% endblock %}

      {% block tabbar %}{% include "./partials/tabbar.tpl" %}{% endblock %}
    </div>

      {% block footer %}{% include "./footer/index.tpl" %}{% endblock %}
      {% block browser-tpls %}{% include "./partials/browser-tpls.tpl" %}{% endblock %}

  </body>
</html>
