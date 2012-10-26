<%inherit file="base.mako" />
<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en-gb"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en-gb"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en-gb"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en-gb"> <!--<![endif]-->
<head>
${self.head()}
</head>
  <body>
    <div id="sf-wrapper"> <!-- Sticky Footer Wrapper -->
     <div class="hidden"><h1>No Stylesheet Loaded</h1><p><strong>Could not load Kickstrap.</strong>Please let me know about the error, this is embarassing.</p></div>
      <!--! END KICKSTRAP HEADER --> 
      ${self.header()}

      <div class="container">
      <div class="row">
        <div class="span12">
      <section class="row-fluid">
        <div class="span8">
          <article> 
              ${next.body()}
            </article>
          </div>
              ${self.sidebar()}
            </section>
          </div>
        </div>
      </div>

        ${self.footer()}
      ${self.body_scripts()}
    </div> <!-- sf-wrapper -->
  </body>
</html>
<%def name="head()"><%include file="head.mako" /></%def>
<%def name="header()"><%include file="header.mako" /></%def>
<%def name="sidebar()"><%include file="sidebar.mako" /></%def>
<%def name="footer()"><%include file="footer.mako" /></%def>
<%def name="body_scripts()"><%include file="body_scripts.mako" /></%def>
