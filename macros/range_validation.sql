{% test range_validation(model,column_name,min_val,max_val)%}

Select * from 
{{model}} where {{column_name}} = {{min_val}} or {{column_name}} = {{max_val}}


{% endtest%}