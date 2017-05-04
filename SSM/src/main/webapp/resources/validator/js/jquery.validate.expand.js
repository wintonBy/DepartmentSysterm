$.validator.setDefaults({
			// 错误事实添加的CSS 类
			highlight: function(input) {
			    $(input).addClass("ui-state-highlight");
			},
			// 完成时候移出的类
			unhighlight: function(input) {
				$(input).removeClass("ui-state-highlight");
			},
			
			success:function(element){element.parent().parent().remove()},
			
			errorPlacement:function(error,element){
					var html = "<div class='formError' style='margin-top: 0px; opacity: 0.87;'>"+
										"<div class='formErrorContent'>"+
										"</div>"+
								"</div>";
					var div = $(html);
			   		error.appendTo(div.find(".formErrorContent"));
			   		element.parent().append(div);
			   		var content = div.parent();
					//content.find(".formError").css("top", element.position().top + element.height() / 2 - div.find(".formErrorContent").height() / 2);
			   		content.find(".formError").css("top", element.position().top);
			   		content.find(".formError").css("left",element.position().left+ element.width() + 25);
			    }
		});
