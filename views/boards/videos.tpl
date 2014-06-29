<!-- Top Navbar-->
<div class="navbar">
  <div class="navbar-inner">
    <div class="left">
      <a href="#" class="back link">
        <i class="icon icon-back-blue"></i>
       </a>
    </div>
    <div class="center sliding">{{ board.title }}</div>
  </div>
</div>


<div data-page="videos-board-{{ board._id }}" class="page">
  <div class="page-content">

    <div class="content-block">
      <div class="content-block-inner">
        <div class="grid">
          {% for video in videos %}
          <a href="video.html?id={{ video._id }}&board={{ board.subdomain }}" class="link"><img class="responsive" src="http://i.ytimg.com/vi/{{ video.src_id }}/default.jpg"/></a>
          {% endfor %}
        </div>
      </div>
    </div>

  </div>
</div>
