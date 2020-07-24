#!python
# -*- coding: utf-8 -*-
# Example of a cherrypy application that serves static content,
# as well as dynamic content.
#
# JMR@ua.pt 2016
#
# To run:
#	python exampleApp.py

import os.path
import cherrypy
import sqlite3
import json
import sys
# The absolute path to this file's base directory:
cherrypy.config.update({'server.socket_port': 10010,})
baseDir = os.path.dirname(os.path.abspath(__file__))

# Dict with the this app's configuration:
config = {
  "/":     { "tools.staticdir.root": baseDir },
  "/js":   { "tools.staticdir.on": True,
             "tools.staticdir.dir": "js" },
  "/css":  { "tools.staticdir.on": True,
             "tools.staticdir.dir": "css" },
  "/html": { "tools.staticdir.on": True,
             "tools.staticdir.dir": "html" },
  "/images": { "tools.staticdir.on": True,
             "tools.staticdir.dir": "images" },
  "/music": { "tools.staticdir.on": True,
             "tools.staticdir.dir": "music" },

}

class Root:
    # This class atribute contains the HTML text of the main page:
    indexHTML = """<html>
<head>
<title>Ready?</title>

</head>
<body>
<p>Bem-vindo á Myusic Box</p>

<p><a href="html/page.html">ENTRAR</a></p>
</body>
</html>
       """

    @cherrypy.expose
    def index(self):
       return Root.indexHTML
    
    @cherrypy.expose
    def put(self, nome, receita):
       nome_utf = nome.encode('utf-8')
       
       x = json.loads(jreceita)
       



cherrypy.quickstart(Root(), "/", config)

