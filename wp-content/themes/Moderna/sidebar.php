<aside class="right-sidebar">





<?php
$terms = get_terms('category', 'orderby=count&hide_empty=0'); 

	echo '<select name="categoryfilter"><option>Выберите категорию...</option>';
	foreach ($terms as $term) 
		echo '<option value="' . $term->term_id . '">' . $term->name . '</option>'; // в качестве value я взял ID рубрики
	echo '</select>';


?>
<form action="<?php echo site_url() ?>/filter" method="POST" id="filter">

<label><input type="radio" name="date" value="ASC" /> Дата: по возрастанию</label>
<label><input type="radio" name="date" value="DESC" selected="selected" /> Дата: по убыванию</label>
<label><input type="checkbox" name="featured_image" /> Только с миниатюрой</label>
<button>Применить фильтр</button>
<input type="hidden" name="action" value="myfilter">
</form>
<div id="response"></div>



	<?php
	if (function_exists('dynamic_sidebar'))
		dynamic_sidebar('sidebar_right');
	?>

</aside>