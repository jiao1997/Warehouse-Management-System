package com.wangjiao.materials.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wangjiao.materials.common.ListToJson;
import com.wangjiao.materials.entity.*;
import com.wangjiao.materials.service.*;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * @author wangjiao
 * @date 2021/11/22 - 14:39
 */
@Controller
@RequestMapping(value = "/inputr")
public class InputrController {
    @Autowired
    private InputrService inputrService;
    @Autowired
    private MaterialService materialService;
    @Autowired
    private RepositoryService repositoryService;
    @Autowired
    private PersonService personService;
    @Autowired
    private RestService restService;
    private ModelAndView modelAndView = new ModelAndView();
    private String keyword = null;
    private static int reset = 0;

    @RequestMapping(value = "",method= RequestMethod.GET)
    public ModelAndView getList(@RequestParam(defaultValue = "1",value = "pageNo") Integer pageNum,@RequestParam(defaultValue = "",value = "keywords") String keywords,@RequestParam(defaultValue = "",value = "start")String start,@RequestParam(defaultValue = "",value = "end") String end){
        PageHelper.startPage(pageNum,8);
        if(reset == 1) {
            reset = 0;
            keyword=null;
            PageHelper.clearPage();
            PageHelper.startPage(1,8);
            return setModelAndView(null,'L');
        }
        if(!keywords.trim().equals("")) {
            keyword = keywords;
        }
        if(null == keyword&&start.equals("")&&end.equals("")) return setModelAndView(null,'L');
        if(start!=null||end!=null) {
            String[] dateduring=new String[3];
            dateduring[0]=start;
            dateduring[1]=end;
            if(keyword==null){
                return setModelAndView(dateduring,'D');
            }
            else{
                dateduring[2]=keywords;
                return setModelAndView(dateduring,'X');
            }
        }
        return setModelAndView(keyword,'K');
    }
    @RequestMapping(value="/refresh",method= RequestMethod.GET)
    @ResponseBody
    public void refreshList(){
        reset = 1;
    }
    @RequestMapping(value="/add",method = RequestMethod.GET)
    public ModelAndView addInputr(){
        List<Material> materials = materialService.getMaterialList();
        List<Repository> repositories = repositoryService.getRepositoryList();
        modelAndView.clear();
        modelAndView.setViewName("Management/addInputr");
        modelAndView.addObject("materials",materials);
        modelAndView.addObject("repositories",repositories);
        return  modelAndView;
    }
    @RequestMapping(value="/add",method= RequestMethod.POST)
    @ResponseBody
    public void addInputr(Inputr inputr){
        try{
//            inputrService.insertInputr(inputr);
            restService.updateRestFinal(inputr.getMid(),inputr.getRid(),inputr.getCount());
            Rest rest=restService.getRestById(inputr.getMid(),inputr.getRid());
            inputr.setRemark("????????????"+rest.getCount().toString());
            inputrService.insertInputr(inputr);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    @RequestMapping(value="/update",method = RequestMethod.GET)
    public ModelAndView UpdateInputr(@RequestParam("Ino") Integer Ino){
        return setModelAndView(Ino,'P');
    }
    @RequestMapping(value="/update",method = RequestMethod.POST)
    @ResponseBody
    public void UpdateInputr(Inputr inputr){inputrService.updateInputr(inputr);}
    @RequestMapping(value="delete",method= RequestMethod.POST)
    @ResponseBody
    public void removeInputr(Integer Ino){ inputrService.delInputrById(Ino); }
    @RequestMapping(value="deletes",method= RequestMethod.POST)
    @ResponseBody
    public void removeInputr(int[] Inos){ inputrService.delInputrByIds(Inos);}
    private  ModelAndView setModelAndView(Object parm,char type){
        modelAndView.clear();
        List<Inputr> inputrs =null;
        PageInfo<Inputr> pageInfo = null;
        switch (type){
            case 'L':
                inputrs =inputrService.getInputrList();
                pageInfo = new PageInfo<Inputr>(inputrs);
                modelAndView.setViewName("Management/inputrList");
                modelAndView.addObject("pageInfo",pageInfo);
                modelAndView.addObject("jsonList",getJsonList(inputrs));
                break;
            case 'D':
                inputrs = inputrService.getInputrByDate((String[])parm);
                pageInfo = new PageInfo<Inputr>(inputrs);
                modelAndView.setViewName("Management/inputrList");
                modelAndView.addObject("pageInfo",pageInfo);
                modelAndView.addObject("jsonList",getJsonList(inputrs));
                break;
            case 'X':
                inputrs = inputrService.getInputrByDateAndKey((String[]) parm);
                pageInfo = new PageInfo<Inputr>(inputrs);
                modelAndView.setViewName("Management/inputrList");
                modelAndView.addObject("pageInfo",pageInfo);
                modelAndView.addObject("jsonList",getJsonList(inputrs));
                break;
            case 'K':
                inputrs = inputrService.getInputrByKeywords(String.valueOf(parm));
                pageInfo = new PageInfo<Inputr>(inputrs);
                modelAndView.setViewName("Management/inputrList");
                modelAndView.addObject("pageInfo",pageInfo);
                modelAndView.addObject("jsonList",getJsonList(inputrs));
                break;
            case 'P':
                Inputr inputr = inputrService.getInputrById(Integer.parseInt(String.valueOf(parm)));
                List<Material> materials = materialService.getMaterialList();
                List<Repository> repositories = repositoryService.getRepositoryList();
                modelAndView.setViewName("Management/updateInputr");
                modelAndView.addObject("inputr",inputr);
                modelAndView.addObject("materials",materials);
                modelAndView.addObject("repositories",repositories);
                break;
        }
        return modelAndView;
    }
    private  JSONArray getJsonList(List<Inputr> inputrs){
        List<String> materialNames = new ArrayList<String>();
        List<String> repositoryNames = new ArrayList<String>();
        List<String> delPersonNames = new ArrayList<String>();
        List<String> savePersonNames = new ArrayList<String>();
        for(int i=0;i<inputrs.size();i++)
        {
            Inputr inputr = inputrs.get(i);
            Material material = materialService.getMaterialById(inputr.getMid());
            Repository repository= repositoryService.getRepositoryById(inputr.getRid());
            Person delPerson = personService.getPersonById(inputr.getDeal_Pid());
            Person savePerson = personService.getPersonById(inputr.getSave_Pid());
            materialNames.add(material.getMname());
            repositoryNames.add(repository.getRname());
            delPersonNames.add(delPerson.getPname());
            savePersonNames.add(savePerson.getPname());
        }
        JSONArray json = ListToJson.inputrToJson(inputrs,materialNames,repositoryNames,delPersonNames,savePersonNames);
        return json;
    }
}
