<div data-page="boards-list" class="page">
  <div class="page-content">
    <div class="page-content">
      <div class="list-block">
    
        <ul>

          {% for board in boards %}
          <li>
          <a href="videos.html?board={{board._id}}&title={{ board.title }}" class="item-content item-link">
                  <div class="item-inner">
                      <div class="item-title">
                        {{ board.title }}
                      </div>
                      <div class="item-after"></div>
                  </div>
              </a>
          </li>
          {% endfor %}

        </ul>
      
      </div>
    </div>
  </div>
</div>
