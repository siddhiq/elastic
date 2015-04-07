// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require handlebars
//= require typeahead.bundle
//= require_tree .
var onesearch = function(){
	var projects = new Bloodhound({
	  datumTokenizer: Bloodhound.tokenizers.obj.whitespace('name'),
	  queryTokenizer: Bloodhound.tokenizers.whitespace,
	  remote: "../projects/autocomplete?query=%QUERY"
	});
	 
	var programs = new Bloodhound({
	  datumTokenizer: Bloodhound.tokenizers.obj.whitespace('name'),
	  queryTokenizer: Bloodhound.tokenizers.whitespace,
	  remote: "../programs/autocomplete?query=%QUERY"
	});

	var users = new Bloodhound({
	  datumTokenizer: Bloodhound.tokenizers.obj.whitespace('name'),
	  queryTokenizer: Bloodhound.tokenizers.whitespace,
	  remote: "../users/autocomplete?query=%QUERY"
	});
	 
	projects.initialize();
	programs.initialize();
	users.initialize();
	 
	$('#onesearch').typeahead({
	  highlight: true
	},
	{
	  name: 'projects',
	  displayKey: 'name',
	  source: projects.ttAdapter(),
	  templates: {
	    header: '<div class="head-name">Projects</div>',
	    suggestion: Handlebars.compile('<a href=../projects/{{id}}>{{name}}</a>')
	  }
	},
	{
	  name: 'programs',
	  displayKey: 'name',
	  source: programs.ttAdapter(),
	  templates: {
	    header: '<div class="head-name">Programs</div>',
	    suggestion: Handlebars.compile('<a href=../programs/{{id}}>{{name}}</a>')
	  }
	},
	{
	  name: 'users',
	  displayKey: 'name',
	  source: users.ttAdapter(),
	  templates: {
	    header: '<div class="head-name">Users</div>',
	    suggestion: Handlebars.compile('<a href=../users/{{id}}>{{name}}</a>')
	  }
	}
	);
};

$(document).ready(onesearch);
$(document).on('page:load', onesearch);
