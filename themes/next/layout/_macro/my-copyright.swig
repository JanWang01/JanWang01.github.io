{% if page.copyright %}
<div class="my_post_copyright">
  <p><span>本文作者:</span><a href="/about" title="访问 {{ theme.author }} 的个人博客">{{ theme.author }}</a></p>
  <p><span>本文链接:</span><a href="{{ url_for(page.path) }}" title="{{ page.title }}">{{ page.permalink }}</a></p>
  <p><span>版权声明:</span><i class="fa fa-creative-commons"></i> <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/" target="_blank" title="Attribution-NonCommercial 4.0 International (CC BY-NC 4.0)">Attribution-NonCommercial 4.0</a></p>
  <p>转载请注明出处！</p>
</div>
{% endif %}
