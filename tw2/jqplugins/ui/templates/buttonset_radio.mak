<%namespace name="tw" module="tw2.core.mako_util"/>
<div id="${w.attrs['id']}:wrapper">
	<div id="${w.attrs['id']}">
		% for btn in w.items:
		% if w.checked_item == btn['id']:
			<input name="radio" type="radio" id="${btn['id']}" checked="checked" />
		% else:
			<input name="radio" type="radio" id="${btn['id']}"/>
		% endif
		<label for="${btn['id']}">${btn['label']}</label>
		% endfor
	</div>
	<script type="text/javascript">
		$(function() {
			$("#${w.selector}").${w.jqmethod}(${w.options});
			% if w.click:
				$("#${w.selector} input").click(${w.click});
			% endif
		});
	</script>
</div>