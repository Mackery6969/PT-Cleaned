// gmlscan-ignore-file gml/unused-function -- GameMaker 1.x import glue, invoked via gml_pragma or kept for its enum
function __view_set(argument0, argument1, argument2)
{
    var __prop = argument0;
    var __index = argument1;
    var __val = argument2;
    
    __view_set_internal(__prop, __index, __val);
    
    var __res = __view_get(__prop, __index);
    
    return __res;
}
