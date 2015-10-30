/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.web.meter_type;

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
import com.thinkgem.jeesite.modules.eospd.entity.meter_type.Metertype;
import com.thinkgem.jeesite.modules.eospd.service.meter_type.MetertypeService;

/**
 * 仪表型号信息Controller
 * @author denofiend
 * @version 2015-10-30
 */
@Controller
@RequestMapping(value = "${adminPath}/eospd/meter_type/metertype")
public class MetertypeController extends BaseController {

	@Autowired
	private MetertypeService metertypeService;
	
	@ModelAttribute
	public Metertype get(@RequestParam(required=false) String id) {
		Metertype entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = metertypeService.get(id);
		}
		if (entity == null){
			entity = new Metertype();
		}
		return entity;
	}
	
	@RequiresPermissions("eospd:meter_type:metertype:view")
	@RequestMapping(value = {"list", ""})
	public String list(Metertype metertype, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Metertype> page = metertypeService.findPage(new Page<Metertype>(request, response), metertype); 
		model.addAttribute("page", page);
		return "modules/eospd/meter_type/metertypeList";
	}

	@RequiresPermissions("eospd:meter_type:metertype:view")
	@RequestMapping(value = "form")
	public String form(Metertype metertype, Model model) {
		model.addAttribute("metertype", metertype);
		return "modules/eospd/meter_type/metertypeForm";
	}

	@RequiresPermissions("eospd:meter_type:metertype:edit")
	@RequestMapping(value = "save")
	public String save(Metertype metertype, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, metertype)){
			return form(metertype, model);
		}
		metertypeService.save(metertype);
		addMessage(redirectAttributes, "保存仪表型号信息成功");
		return "redirect:"+Global.getAdminPath()+"/eospd/meter_type/metertype/?repage";
	}
	
	@RequiresPermissions("eospd:meter_type:metertype:edit")
	@RequestMapping(value = "delete")
	public String delete(Metertype metertype, RedirectAttributes redirectAttributes) {
		metertypeService.delete(metertype);
		addMessage(redirectAttributes, "删除仪表型号信息成功");
		return "redirect:"+Global.getAdminPath()+"/eospd/meter_type/metertype/?repage";
	}

}