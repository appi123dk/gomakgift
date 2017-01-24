Myapp::Application.routes.draw do

  # You can have the root of your site routed with "root"
  root to: 'gomakdesigns#index'

  # 무디패 routes
  get "gomakdesigns/index"
  post "gomakdesigns/create"
  get "gomakdesigns/complete"

  # 무디패 관리자 routes
  get "admin_gomakdesigns/lists"
  get "admin_gomakdesigns/clients"
  get "admin_gomakdesigns/clients_create"
  get "admin_gomakdesigns/edit/:id", to:'admin_gomakdesigns#edit'
  get "admin_gomakdesigns/update/:id", to:'admin_gomakdesigns#update'
  get "admin_gomakdesigns/clients_create"
  get "admin_gomakdesigns/view/:id", to:'admin_gomakdesigns#view'

  # All routes
  # 고막기프트 routes
  get "gifts/index"
  get "gifts/accounts_form"
  get "gifts/payment/:id", to: 'gifts#payment'
  get "gifts/design"
  get "gifts/no_order"
  get "gifts/order_index/:id", to: 'gifts#order_index'
  get "gifts/print_product/:id", to: 'gifts#print_product'
  get "gifts/support"
  get "gifts/inquire/:id", to: 'gifts#inquire'
  get "gifts/login"
  get "gifts/single_product/:id", to:'gifts#single_product'

  # CS DB routes
  get 'comments/create'
  # CS관리 routes
  get 'admin_comments/index'
  get 'admin_comments/view'

  # 주문 DB routes
  get 'orders/create'
  get 'orders/new_cart'
  get 'orders/update_payment/:id', to: 'orders#update_payment'

  # 유저 DB routes
  post 'users/login_session'
  get 'users/login'
  post 'users/login_session_inquire'
  get 'users/login_inquire'
  get 'users/logout'
  # 유저관리 routes
  get 'admin_users/index'
  get 'admin_users/view'

  # 제품 DB routes
  get "products/index"
  get "products/new"
  get "products/create"
  get "products/edit/:id", to: 'products#edit' 
  get "products/update:id", to: 'products#update' 

  # 옵션관리 routes
  get "options/index"
  get "options/price_new"
  get "options/price_create"
  get "options/price_edit/:id", to: 'options#price_edit'
  get "options/price_update/:id", to: 'options#price_update'
  get "options/qty_new"
  get "options/qty_create"
  get "options/qty_edit/:id", to: 'options#qty_edit'
  get "options/qty_update/:id", to: 'options#qty_update'

  # 주문관리 routes
  get "admin_orders/index"
  get "admin_orders/complete"
  get "admin_orders/view/:id", to: 'admin_orders#view'

  # 대시보드
  get "dashboards/dashboard_1"
  get "dashboards/dashboard_2"
  get "dashboards/dashboard_3"
  get "dashboards/dashboard_4"
  get "dashboards/dashboard_4_1"
  get "dashboards/dashboard_5"

  get "layoutsoptions/index"
  get "layoutsoptions/off_canvas"

  get "graphs/flot"
  get "graphs/morris"
  get "graphs/rickshaw"
  get "graphs/chartjs"
  get "graphs/chartist"
  get "graphs/peity"
  get "graphs/sparkline"
  get "graphs/c3charts"

  get "mailbox/inbox"
  get "mailbox/email_view"
  get "mailbox/compose_email"
  get "mailbox/email_templates"
  get "mailbox/basic_action_email"
  get "mailbox/alert_email"
  get "mailbox/billing_email"

  get "metrics/index"

  get "widgets/index"

  get "forms/basic_forms"
  get "forms/advanced"
  get "forms/wizard"
  get "forms/file_upload"
  get "forms/text_editor"
  get "forms/markdown"

  get "appviews/contacts"
  get "appviews/profile"
  get "appviews/profile_two"
  get "appviews/contacts_two"
  get "appviews/projects"
  get "appviews/project_detail"
  get "appviews/file_menager"
  get "appviews/vote_list"
  get "appviews/calendar"
  get "appviews/faq"
  get "appviews/timeline"
  get "appviews/pin_board"
  get "appviews/teams_board"
  get "appviews/social_feed"
  get "appviews/clients"
  get "appviews/outlook_view"
  get "appviews/blog"
  get "appviews/article"
  get "appviews/issue_tracker"

  get "pages/search_results"
  get "pages/lockscreen"
  get "pages/invoice"
  get "pages/invoice_print"
  get "pages/login"
  get "pages/login_2"
  get "pages/forgot_password"
  get "pages/register"
  get "pages/not_found_error"
  get "pages/internal_server_error"
  get "pages/empty_page"

  get "miscellaneous/notification"
  get "miscellaneous/nestablelist"
  get "miscellaneous/timeline_second_version"
  get "miscellaneous/forum_view"
  get "miscellaneous/forum_post_view"
  get "miscellaneous/google_maps"
  get "miscellaneous/code_editor"
  get "miscellaneous/modal_window"
  get "miscellaneous/validation"
  get "miscellaneous/tree_view"
  get "miscellaneous/chat_view"
  get "miscellaneous/agile_board"
  get "miscellaneous/diff"
  get "miscellaneous/sweet_alert"
  get "miscellaneous/idle_timer"
  get "miscellaneous/spinners"
  get "miscellaneous/live_favicon"
  get "miscellaneous/masonry"
  get "miscellaneous/tour"
  get "miscellaneous/loading_buttons"
  get "miscellaneous/clipboard"
  get "miscellaneous/truncate"
  get "miscellaneous/i18support"

  get "uielements/typography"
  get "uielements/icons"
  get "uielements/draggable_panels"
  get "uielements/resizeable_panels"
  get "uielements/buttons"
  get "uielements/video"
  get "uielements/tables_panels"
  get "uielements/tabs"
  get "uielements/notifications_tooltips"
  get "uielements/badges_labels_progress"

  get "gridoptions/index"

  get "tables/static_tables"
  get "tables/data_tables"
  get "tables/foo_tables"
  get "tables/jqgrid"

  get "commerce/products_grid"
  get "commerce/products_list"
  get "commerce/product_edit"
  get "commerce/product_detail"
  get "commerce/orders"
  get "commerce/cart"
  get "commerce/payments"

  get "gallery/basic_gallery"
  get "gallery/slick_carusela"
  get "gallery/bootstrap_carusela"

  get "cssanimations/index"

  get "landing/index"

end
