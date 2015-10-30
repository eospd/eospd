/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.web.circuitinfo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.eospd.entity.circuitinfo.Circuitinfo;
import com.thinkgem.jeesite.modules.eospd.service.circuitinfo.CircuitinfoService;

/**
 * 电支路信息Controller
 * @author denofiend
 * @version 2015-10-30
 */
@Controller
@RequestMapping(value = "${adminPath}/eospd/circuitinfo/circuitinfo")
public class CircuitinfoController extends BaseController {

	@Autowired
	private CircuitinfoService circuitinfoService;
	
	@ModelAttribute
	public Circuitinfo get(@RequestParam(required=false) String id) {
		Circuitinfo entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = circuitinfoService.get(id);
		}
		if (entity == null){
			entity = new Circuitinfo();
		}
		return entity;
	}
	
	@RequiresPermissions("eospd:circuitinfo:circuitinfo:view")
	@RequestMapping(value = {"list", ""})
	public String list(Circuitinfo circuitinfo, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Circuitinfo> page = circuitinfoService.findPage(new Page<Circuitinfo>(request, response), circuitinfo); 
		model.addAttribute("page", page);
		return "modules/eospd/circuitinfo/circuitinfoList";
	}

	@RequiresPermissions("eospd:circuitinfo:circuitinfo:view")
	@RequestMapping(value = "form")
	public String form(Circuitinfo circuitinfo, Model model) {
		model.addAttribute("circuitinfo", circuitinfo);
		return "modules/eospd/circuitinfo/circuitinfoForm";
	}

	@RequiresPermissions("eospd:circuitinfo:circuitinfo:edit")
	@RequestMapping(value = "save")
	public String save(Circuitinfo circuitinfo, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, circuitinfo)){
			return form(circuitinfo, model);
		}
		circuitinfoService.save(circuitinfo);
		addMessage(redirectAttributes, "保存电支路信息成功");
		return "redirect:"+Global.getAdminPath()+"/eospd/circuitinfo/circuitinfo/?repage";
	}
	
	@RequiresPermissions("eospd:circuitinfo:circuitinfo:edit")
	@RequestMapping(value = "delete")
	public String delete(Circuitinfo circuitinfo, RedirectAttributes redirectAttributes) {
		circuitinfoService.delete(circuitinfo);
		addMessage(redirectAttributes, "删除电支路信息成功");
		return "redirect:"+Global.getAdminPath()+"/eospd/circuitinfo/circuitinfo/?repage";
	}

}