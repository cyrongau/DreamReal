(()=>{function e(e){return function(e){if(Array.isArray(e))return t(e)}(e)||function(e){if("undefined"!=typeof Symbol&&null!=e[Symbol.iterator]||null!=e["@@iterator"])return Array.from(e)}(e)||function(e,o){if(!e)return;if("string"==typeof e)return t(e,o);var n=Object.prototype.toString.call(e).slice(8,-1);"Object"===n&&e.constructor&&(n=e.constructor.name);if("Map"===n||"Set"===n)return Array.from(e);if("Arguments"===n||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n))return t(e,o)}(e)||function(){throw new TypeError("Invalid attempt to spread non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")}()}function t(e,t){(null==t||t>e.length)&&(t=e.length);for(var o=0,n=new Array(t);o<t;o++)n[o]=e[o];return n}$((function(){var t=$(document).find("#bulk-import"),o=t.find(".form-import-data"),n=t.find(".btn-import"),r=[],a=0;$(document).on("click",".btn-import",(function(e){e.preventDefault(),l.getQueuedFiles().length>0&&(Botble.showButtonLoading(n),t.find(".show-errors").hide(),a=0,r=[],l.processQueue()),l.on("sending",(function(){t.find(".bulk-import-message").removeClass("alert-success").addClass("alert-info").text(n.data("uploading-text")).show()})),l.on("error",(function(e,t){Botble.showError(t.message)}))}));var i=function i(d){var m=arguments.length>1&&void 0!==arguments[1]?arguments[1]:0,f=arguments.length>2&&void 0!==arguments[2]?arguments[2]:1e3;0===m&&t.find(".bulk-import-message").text(n.data("validating-text")),$httpClient.make().post(o.data("validate-url"),{file:d,offset:m,limit:f}).then((function(o){var m=o.data,f=m.data,u=m.message;if(f&&f.count>0)t.find(".bulk-import-message").show(),t.find(".bulk-import-message").text(u),i(d,f.offset),r=[].concat(e(r),e(f.failed)),a+=f.count;else if(r.length>0){var c=t.find("#imported-listing"),p=t.find(".show-errors");a=0;var h=$(document).find("#failure-template").html(),g="";r.forEach((function(e){g+=h.replace("__row__",e.row).replace("__errors__",e.errors.join(", "))})),p.show(),t.find(".main-form-message").show(),c.show().html(g),r=[],a=0,Botble.hideButtonLoading(n),l.removeAllFiles(),t.find(".bulk-import-message").hide()}else s(d)}))},s=function e(r){var i=arguments.length>1&&void 0!==arguments[1]?arguments[1]:0,s=arguments.length>2&&void 0!==arguments[2]?arguments[2]:10;0===i&&(t.find(".bulk-import-message").text(n.data("importing-text")),Botble.showButtonLoading(n)),$httpClient.make().post(o.data("import-url"),{file:r,offset:i,limit:s}).then((function(o){var i=o.data,s=i.data,d=i.message,m=t.find(".processing"),f=m.find(".process");s&&s.count>0?(m.show(),e(r,s.offset),f.css("width",s.offset/a*100+"%"),t.find(".bulk-import-message").html(d)):(Botble.showSuccess(d),s.total_message&&(t.find(".main-form-message").show(),t.find(".bulk-import-message").removeClass("alert-info").addClass("alert-success").text(s.total_message).show(),l.removeAllFiles(),m.hide(),a=0,Botble.hideButtonLoading(n)))}))},l=new Dropzone(".import-dropzone",{url:o.data("upload-url"),method:"post",headers:{"X-CSRF-TOKEN":o.find("input[name=_token]").val()},previewTemplate:$(document).find("#preview-template").html(),autoProcessQueue:!1,chunking:!0,chunkSize:1048576,acceptedFiles:o.find(".import-properties-dropzone").data("mimetypes"),maxFiles:1,maxfilesexceeded:function(e){this.removeFile(e)},success:function(e,t){var o=t.data;t.message;o&&o.file_path&&i(o.file_path)}}),d=!1;$(document).on("click",".download-template",(function(e){if(e.preventDefault(),!d){var t=$(e.currentTarget),o=t.data("extension"),n=t.html();t.html(t.data("downloading")),t.addClass("text-secondary"),d=!0,$httpClient.make().withResponseType("blob").post(t.data("url"),{extension:o}).then((function(e){var o=e.data,n=document.createElement("a"),r=window.URL.createObjectURL(o);n.href=r,n.download=t.data("filename"),document.body.append(n),n.click(),n.remove(),window.URL.revokeObjectURL(r)})).finally((function(){setTimeout((function(){t.html(n),t.removeClass("text-secondary"),d=!1}),2e3)}))}}))}))})();