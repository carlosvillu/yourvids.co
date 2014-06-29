<!-- Top Navbar-->
<div class="navbar">
  <div class="navbar-inner">
    <div class="left">
      <a href="#" class="back link">
        <i class="icon icon-back-blue"></i>
       </a>
    </div>
    <div class="center sliding">{{ video.title }}</div>
  </div>
</div>


<div data-page="video-{{video._id}}" class="page">
  <div class="page-content">

    <div class="content-block-title">{{ video.description }}</div>
    <div class="content-block">
      <div class="content-block-inner">
        <div class="video-container">
          <iframe id="{{ video.src_id }}" src="https://www.youtube.com/embed/{{ video.src_id }}?enablejsapi=1" frameborder="0" width="560" height="315"></iframe>
        </div>
      </div>
    </div>


    <div class="content-block-title">Relateds Videos</div>
    <div class="content-block">
      <div class="content-block-inner grid">
        {% for video in relateds %}
          <a href="video.html?id={{ video._id }}&board={{ board }}" class="link"><img class="responsive" src="http://i.ytimg.com/vi/{{ video.src_id }}/default.jpg"/></a>
        {% endfor %}
      </div>
    </div>


  </div>
</div>
