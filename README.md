Build a pretix image based on pretix/standalone:stable to prepare missing static files

fix found at https://github.com/pythonitalia/pycon/blob/master/pretix/Dockerfile

pretix issue found at https://github.com/pretix/pretix/issues/1398

```docker build -t user/image:version .```

Build compete with following errors

Error parsing template /usr/local/lib/python3.6/site-packages/django_otp/plugins/otp_totp/templates/otp_totp/admin/config.html: admin/base_site.html
Error parsing template /pretix/src/pretix/plugins/banktransfer/templates/pretixplugins/banktransfer/import_form.html: Invalid template name in 'extends' tag: ''. Got this from the 'basetpl' variable.
Error parsing template /usr/local/lib/python3.6/site-packages/django_otp/templates/otp/admin30/login.html: admin/base_site.html
Error parsing template /pretix/src/pretix/plugins/banktransfer/templates/pretixplugins/banktransfer/import_assign.html: Invalid template name in 'extends' tag: ''. Got this from the 'basetpl' variable.
Error parsing template /pretix/src/pretix/plugins/banktransfer/templates/pretixplugins/banktransfer/job_detail.html: Invalid template name in 'extends' tag: ''. Got this from the 'basetpl' variable.
done
Compressed 21 block(s) from 400 template(s) for 0 context(s).
