/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.web.meter_vender;

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
import com.thinkgem.jeesite.modules.eospd.entity.meter_vender.Metervender;
import com.thinkgem.jeesite.modules.eospd.service.meter_vender.MetervenderService;

/**
 * 仪表厂家信息Controller
 * @author denofiend
 * @version 2015-10-30
 */
@Controller
@RequestMapping(value = "${adminPath}/eospd/meter_vender/metervender")
public class MetervenderController extends BaseController {

	@Autowired
	private MetervenderService metervenderService;
	
	@ModelAttribute
	public Metervender get(@RequestParam(required=false) String id) {
		Metervender entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = metervenderService.get(id);
		}
		if (entity == null){
			entity = new Metervender();
		}
		return entity;
	}
	
	@RequiresPermissions("eospd:meter_vender:metervender:view")
	@RequestMapping(value = {"list", ""})
	public String list(Metervender metervender, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Metervender> page = metervenderService.findPage(new Page<Metervender>(request, response), metervender); 
		model.addAttribute("page", page);
		return "modules/eospd/meter_vender/metervenderList";
	}

	@RequiresPermissions("eospd:meter_vender:metervender:view")
	@RequestMapping(value = "form")
	public String form(Metervender metervender, Model model) {
		model.addAttribute("metervender", metervender);
		return "modules/eospd/meter_vender/metervenderForm";
	}

	@RequiresPermissions("eospd:meter_vender:metervender:edit")
	@RequestMapping(value = "save")
	public String save(Metervender metervender, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, metervender)){
			return form(metervender, model);
		}
		metervenderService.save(metervender);
		addMessage(redirectAttributes, "保存仪表厂家信息成功");
		return "redirect:"+Global.getAdminPath()+"/eospd/meter_vender/metervender/?repage";
	}
	
	@RequiresPermissions("eospd:meter_vender:metervender:edit")
	@RequestMapping(value = "delete")
	public String delete(Metervender metervender, RedirectAttributes redirectAttributes) {
		metervenderService.delete(metervender);
		addMessage(redirectAttributes, "删除仪表厂家信息成功");
		return "redirect:"+Global.getAdminPath()+"/eospd/meter_vender/metervender/?repage";
	}

}