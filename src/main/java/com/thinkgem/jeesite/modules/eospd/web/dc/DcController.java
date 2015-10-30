/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.web.dc;

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
import com.thinkgem.jeesite.modules.eospd.entity.dc.Dc;
import com.thinkgem.jeesite.modules.eospd.service.dc.DcService;

/**
 * 数据采集器信息Controller
 * @author denofiend
 * @version 2015-10-30
 */
@Controller
@RequestMapping(value = "${adminPath}/eospd/dc/dc")
public class DcController extends BaseController {

	@Autowired
	private DcService dcService;
	
	@ModelAttribute
	public Dc get(@RequestParam(required=false) String id) {
		Dc entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = dcService.get(id);
		}
		if (entity == null){
			entity = new Dc();
		}
		return entity;
	}
	
	@RequiresPermissions("eospd:dc:dc:view")
	@RequestMapping(value = {"list", ""})
	public String list(Dc dc, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Dc> page = dcService.findPage(new Page<Dc>(request, response), dc); 
		model.addAttribute("page", page);
		return "modules/eospd/dc/dcList";
	}

	@RequiresPermissions("eospd:dc:dc:view")
	@RequestMapping(value = "form")
	public String form(Dc dc, Model model) {
		model.addAttribute("dc", dc);
		return "modules/eospd/dc/dcForm";
	}

	@RequiresPermissions("eospd:dc:dc:edit")
	@RequestMapping(value = "save")
	public String save(Dc dc, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, dc)){
			return form(dc, model);
		}
		dcService.save(dc);
		addMessage(redirectAttributes, "保存数据采集器信息成功");
		return "redirect:"+Global.getAdminPath()+"/eospd/dc/dc/?repage";
	}
	
	@RequiresPermissions("eospd:dc:dc:edit")
	@RequestMapping(value = "delete")
	public String delete(Dc dc, RedirectAttributes redirectAttributes) {
		dcService.delete(dc);
		addMessage(redirectAttributes, "删除数据采集器信息成功");
		return "redirect:"+Global.getAdminPath()+"/eospd/dc/dc/?repage";
	}

}