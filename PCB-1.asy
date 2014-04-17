if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="PCB-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(12cm,6cm);
import three;
import labelpath3;
import graph;
import labelpath;
import math;
import tube;
currentprojection=perspective(22cm,20cm,4cm);
real u=1cm;
surface cube_1cm;
surface cube_copper;//»ù°å´óÐ¡
surface cube_copper_top;
//³ß´ç
cube_1cm=scale3(u)*unitcube;
cube_copper=zscale3(0.2)*cube_1cm;
cube_copper_top=zscale3(0.1)*cube_1cm;//Í­
//Ð¾°å
draw(cube_copper,lightgray);//FR4»ù°å
draw(shift(0,0,0.2u)*cube_copper_top,orange);//Í­
draw(shift(0,0,-0.1u)*cube_copper_top,orange);//Í­
//Í­
draw(shift(0,2.4u,-0.1u)*cube_copper_top,orange);//Í­
//°ë¹Ì»¯Æ¬
draw(shift(0,1.2u,-0.1u)*cube_copper,lightgray);//
draw(shift(0,1.2u,0.5u)*zscale3(0.5)*cube_copper,lightgray);//
draw(shift(0,1.2u,1u)*zscale3(0.2)*cube_copper,lightgray);//
viewportsize=(465.20274pt,0);
