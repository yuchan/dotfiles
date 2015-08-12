(require 'simplenote2)
(setq simplenote2-email (getenv "SIMPLENOTE_EMAIL"))
(setq simplenote2-password (getenv "SIMPLENOTE_PASSWORD"))
(simplenote2-setup)
