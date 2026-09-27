// gmlscan-ignore-file gml/unused-function -- GameMaker 1.x import glue, invoked via gml_pragma or kept for its enum
function __background_get(argument0, argument1)
{
    var __prop = argument0;
    var __bind = argument1;
    
    var __backinfo = __background_get_element(__bind);
    
    return __background_get_internal(__prop, __bind, __backinfo);
}
