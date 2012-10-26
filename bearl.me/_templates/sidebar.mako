<aside class="span4 well">
  <section>
    <ul class="nav nav-list">
    <li class="nav-header">Latest Posts</li>
      % for post in bf.config.blog.iter_posts_published(5):
      <li><a href="${post.path}">${post.title}</a></li>
      % endfor
    </ul>
  </section>
  <section>
    <ul class="nav nav-list">
      <li class="nav-header">Contact Me</li>
      <address>
        <li><strong>Luke Bearl</strong></li>
        <li><a href="mailto:#">luke@bearl.me</a></li>
        <li><abbr title="Phone">P:</abbr>(414) 671-9493</li>
        <li><a href="http://www.twitter.com/lbearl">@lbearl</a></li>
        <li><a href="http://www.linkedin.com/in/lbearl">LinkedIn</a></li>
        <li><a href="http://www.github.com/lbearl">GitHub</a></li>
        <li><a href="http://www.bitbucket.org/bearl">BitBucket</a></li>
      </address>
    </ul>
  </section>
</aside>
</section>
</aside>
