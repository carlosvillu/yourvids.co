<!-- Your main view, should have "view-main" class -->
<div id="view-boards" class="view tab view-main">

  <!-- Top Navbar-->
  <div class="navbar">
    <div class="navbar-inner">
      <!-- We need cool sliding animation on title element, so we have additional "sliding" class -->
      <div class="center sliding">Boards</div>
      <div class="right"></div>
    </div>
  </div>

  <div class="pages navbar-through">
    {% include "./boards.tpl" %}
  </div>

</div>
