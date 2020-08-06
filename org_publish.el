(setq org-publish-project-alist
      '(("main-site"
         :base-directory "org"
         :base-extension "org"

         :publishing-directory "."
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4
		 :with-toc f
         :html-extension "html"
         :body-only t)


		("resources"
         :base-directory "org"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\"
         :publishing-directory "."
         :recursive t
         :publishing-function org-publish-attachment)

		("themkat" :components ("main-site" "resources"))))
