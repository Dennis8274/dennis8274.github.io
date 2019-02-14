{% if theme.gitment.enable %}
   {% set owner = theme.gitment.github_user %}
   {% set repo = theme.gitment.github_repo %}
   {% set cid = theme.gitment.client_id %}
   {% set cs = theme.gitment.client_secret %}
   <link rel="stylesheet" href="https://zz.mcust.cn/gitment/gitment.css">
   <script src="https://zz.mcust.cn/gitment/gitment.js"></script>
   {% if not theme.gitment.lazy %}
       <script type="text/javascript">
           var gitment = new Gitment({
               id: '{{ page.date }}', 
               owner: '{{owner}}',
               repo: '{{repo}}',
               oauth: {
                   client_id: '{{cid}}',
                   client_secret: '{{cs}}',
               }});
           gitment.render('gitment-container');
       </script>
   {% else %}
       <script type="text/javascript">
           function ShowGitment(){
               document.getElementById("gitment-display-button").style.display = "none";
               document.getElementById("gitment-container").style.display = "block";
               var gitment = new Gitment({
                   id: '{{ page.date }}', 
                   owner: '{{owner}}',
                   repo: '{{repo}}',
                   oauth: {
                       client_id: '{{cid}}',
                       client_secret: '{{cs}}',
                   }});
               gitment.render('gitment-container');
           }
       </script>
   {% endif %}
{% endif %}
