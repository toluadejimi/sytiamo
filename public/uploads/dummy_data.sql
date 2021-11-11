INSERT INTO `faqs` (`id`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '2021-08-31 10:06:18', '2021-08-31 10:06:18'),
(2, 1, NULL, '2021-08-31 10:09:26', '2021-08-31 10:09:26'),
(3, 1, NULL, '2021-08-31 10:09:39', '2021-08-31 10:09:39'),
(4, 1, NULL, '2021-09-05 15:47:59', '2021-09-05 15:47:59'),
(5, 1, NULL, '2021-09-05 15:58:05', '2021-09-05 15:58:05');


INSERT INTO `faq_translations` (`id`, `faq_id`, `locale`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 1, 'English', 'How to open an account?', 'Account opening is very easy. Just need to click Sign Up and enter some initial details for opening account. After that you need to verify your email address and that\'s ready to go.', '2021-08-31 10:07:50', '2021-09-05 15:37:10'),
(2, 2, 'English', 'How to deposit money?', 'You can deposit money via online payment gateway such as PayPal, Stripe, Razorpay, Paystack, Flutterwave as well as BlockChain for bitcoin. You can also deposit money by coming to our office physically.', '2021-08-31 10:09:26', '2021-09-05 15:38:39'),
(3, 3, 'English', 'How to withdraw money from my account?', 'We have different types of withdraw method. You can withdraw money to your bank account as well as your mobile banking account.', '2021-08-31 10:09:39', '2021-09-05 15:47:11'),
(7, 4, 'English', 'How to Apply for Loan?', 'You can apply loan based on your collateral.', '2021-09-05 15:47:59', '2021-09-05 15:47:59'),
(8, 5, 'English', 'How to Apply for Fixed Deposit?', 'If you have available balance in your account then you can apply for fixed deposit.', '2021-09-05 15:58:05', '2021-09-05 15:58:05');


INSERT INTO `fdr_plans` (`id`, `name`, `minimum_amount`, `maximum_amount`, `interest_rate`, `duration`, `duration_type`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Basic', '10.00', '500.00', '8.00', 12, 'month', 1, NULL, '2021-08-09 14:34:14', '2021-09-05 13:39:27'),
(2, 'Standard', '100.00', '1000.00', '10.00', 24, 'month', 1, NULL, '2021-09-05 13:39:11', '2021-09-05 13:39:34'),
(3, 'Professional', '500.00', '20000.00', '15.00', 36, 'month', 1, NULL, '2021-09-05 13:40:06', '2021-09-05 13:40:06');



INSERT INTO `loan_products` (`id`, `name`, `minimum_amount`, `maximum_amount`, `description`, `interest_rate`, `interest_type`, `term`, `term_period`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Student Loan', '100.00', '1000.00', NULL, '5.00', 'flat_rate', 24, '+1 month', 1, '2021-08-09 11:06:19', '2021-08-10 07:47:20'),
(2, 'Business Loan', '1000.00', '100000.00', NULL, '12.00', 'mortgage', 12, '+1 month', 1, '2021-08-09 11:05:37', '2021-08-10 07:47:10'),
(3, 'Enterprise Loan', '5000.00', '50000.00', NULL, '12.00', 'mortgage', 36, '+1 month', 1, '2021-09-05 13:42:11', '2021-09-05 13:42:11');



INSERT INTO `pages` (`id`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'privacy-policy', 1, '2021-08-31 10:42:32', '2021-08-31 10:42:32'),
(2, 'terms-condition', 1, '2021-08-31 10:44:42', '2021-08-31 10:44:42');


INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'English', 'Privacy Policy', '<h1>Privacy Policy for Livo Bank</h1>\r\n<p>At LivoBank, accessible from https://livo-bank.trickycode.xyz, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by LivoBank and how we use it.</p>\r\n<p>If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p>\r\n<p>This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in LivoBank. This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the <a href=\"https://www.termsfeed.com/privacy-policy-generator/\">TermsFeed Privacy Policy Generator</a>.</p>\r\n<h2>Consent</h2>\r\n<p>By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p>\r\n<h2>Information we collect</h2>\r\n<p>The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p>\r\n<p>If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p>\r\n<p>When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p>\r\n<h2>How we use your information</h2>\r\n<p>We use the information we collect in various ways, including to:</p>\r\n<ul>\r\n<li>Provide, operate, and maintain our website</li>\r\n<li>Improve, personalize, and expand our website</li>\r\n<li>Understand and analyze how you use our website</li>\r\n<li>Develop new products, services, features, and functionality</li>\r\n<li>Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</li>\r\n<li>Send you emails</li>\r\n<li>Find and prevent fraud</li>\r\n</ul>\r\n<h2>Log Files</h2>\r\n<p>LivoBank follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</p>\r\n<h2>Advertising Partners Privacy Policies</h2>\r\n<p>You may consult this list to find the Privacy Policy for each of the advertising partners of LivoBank.</p>\r\n<p>Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on LivoBank, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p>\r\n<p>Note that LivoBank has no access to or control over these cookies that are used by third-party advertisers.</p>\r\n<h2>Third Party Privacy Policies</h2>\r\n<p>LivoBank\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.</p>\r\n<p>You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites.</p>\r\n<h2>CCPA Privacy Rights (Do Not Sell My Personal Information)</h2>\r\n<p>Under the CCPA, among other rights, California consumers have the right to:</p>\r\n<p>Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p>\r\n<p>Request that a business delete any personal data about the consumer that a business has collected.</p>\r\n<p>Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</p>\r\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\r\n<h2>GDPR Data Protection Rights</h2>\r\n<p>We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p>\r\n<p>The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</p>\r\n<p>The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p>\r\n<p>The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</p>\r\n<p>The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</p>\r\n<p>The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</p>\r\n<p>The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p>\r\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\r\n<h2>Children\'s Information</h2>\r\n<p>Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p>\r\n<p>LivoBank does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>', '2021-08-31 10:42:32', '2021-09-05 14:27:37'),
(2, 2, 'English', 'Terms & Condition', '<h2><strong>Terms and Conditions</strong></h2>\r\n<p>Welcome to LivoBank!</p>\r\n<p>These terms and conditions outline the rules and regulations for the use of Livo Bank\'s Website, located at https://livo-bank.trickycode.xyz.</p>\r\n<p>By accessing this website we assume you accept these terms and conditions. Do not continue to use LivoBank if you do not agree to take all of the terms and conditions stated on this page.</p>\r\n<p>The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: \"Client\", \"You\" and \"Your\" refers to you, the person log on this website and compliant to the Company’s terms and conditions. \"The Company\", \"Ourselves\", \"We\", \"Our\" and \"Us\", refers to our Company. \"Party\", \"Parties\", or \"Us\", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client’s needs in respect of provision of the Company’s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p>\r\n<h3><strong>Cookies</strong></h3>\r\n<p>We employ the use of cookies. By accessing LivoBank, you agreed to use cookies in agreement with the Livo Bank\'s Privacy Policy.</p>\r\n<p>Most interactive websites use cookies to let us retrieve the user’s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p>\r\n<h3><strong>License</strong></h3>\r\n<p>Unless otherwise stated, Livo Bank and/or its licensors own the intellectual property rights for all material on LivoBank. All intellectual property rights are reserved. You may access this from LivoBank for your own personal use subjected to restrictions set in these terms and conditions.</p>\r\n<p>You must not:</p>\r\n<ul>\r\n<li>Republish material from LivoBank</li>\r\n<li>Sell, rent or sub-license material from LivoBank</li>\r\n<li>Reproduce, duplicate or copy material from LivoBank</li>\r\n<li>Redistribute content from LivoBank</li>\r\n</ul>\r\n<p>This Agreement shall begin on the date hereof. Our Terms and Conditions were created with the help of the <a href=\"https://www.termsandconditionsgenerator.com\">Terms And Conditions Generator</a>.</p>\r\n<p>Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Livo Bank does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Livo Bank,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Livo Bank shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p>\r\n<p>Livo Bank reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p>\r\n<p>You warrant and represent that:</p>\r\n<ul>\r\n<li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li>\r\n<li>The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li>\r\n<li>The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li>\r\n<li>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li>\r\n</ul>\r\n<p>You hereby grant Livo Bank a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p>\r\n<h3><strong>Hyperlinking to our Content</strong></h3>\r\n<p>The following organizations may link to our Website without prior written approval:</p>\r\n<ul>\r\n<li>Government agencies;</li>\r\n<li>Search engines;</li>\r\n<li>News organizations;</li>\r\n<li>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li>\r\n<li>System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li>\r\n</ul>\r\n<p>These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party’s site.</p>\r\n<p>We may consider and approve other link requests from the following types of organizations:</p>\r\n<ul>\r\n<li>commonly-known consumer and/or business information sources;</li>\r\n<li>dot.com community sites;</li>\r\n<li>associations or other groups representing charities;</li>\r\n<li>online directory distributors;</li>\r\n<li>internet portals;</li>\r\n<li>accounting, law and consulting firms; and</li>\r\n<li>educational institutions and trade associations.</li>\r\n</ul>\r\n<p>We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of Livo Bank; and (d) the link is in the context of general resource information.</p>\r\n<p>These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party’s site.</p>\r\n<p>If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to Livo Bank. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p>\r\n<p>Approved organizations may hyperlink to our Website as follows:</p>\r\n<ul>\r\n<li>By use of our corporate name; or</li>\r\n<li>By use of the uniform resource locator being linked to; or</li>\r\n<li>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party’s site.</li>\r\n</ul>\r\n<p>No use of Livo Bank\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</p>\r\n<h3><strong>iFrames</strong></h3>\r\n<p>Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p>\r\n<h3><strong>Content Liability</strong></h3>\r\n<p>We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p>\r\n<h3><strong>Your Privacy</strong></h3>\r\n<p>Please read Privacy Policy</p>\r\n<h3><strong>Reservation of Rights</strong></h3>\r\n<p>We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it’s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p>\r\n<h3><strong>Removal of links from our website</strong></h3>\r\n<p>If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p>\r\n<p>We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p>\r\n<h3><strong>Disclaimer</strong></h3>\r\n<p>To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p>\r\n<ul>\r\n<li>limit or exclude our or your liability for death or personal injury;</li>\r\n<li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li>\r\n<li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li>\r\n<li>exclude any of our or your liabilities that may not be excluded under applicable law.</li>\r\n</ul>\r\n<p>The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p>\r\n<p>As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>', '2021-08-31 10:44:42', '2021-09-05 14:34:10');


INSERT INTO `navigations` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Primary Menu', 1, '2021-08-31 11:11:31', '2021-08-31 11:11:31'),
(2, 'Quick Explore', 1, '2021-08-31 18:11:36', '2021-08-31 18:11:36'),
(3, 'Pages', 1, '2021-08-31 18:11:43', '2021-09-04 16:22:30');


INSERT INTO `navigation_items` (`id`, `navigation_id`, `type`, `page_id`, `url`, `icon`, `target`, `parent_id`, `position`, `status`, `css_class`, `css_id`, `created_at`, `updated_at`) VALUES
(6, 1, 'dynamic_url', NULL, '/', NULL, '_self', NULL, 1, 1, NULL, NULL, '2021-08-31 17:17:46', '2021-08-31 17:28:52'),
(7, 1, 'dynamic_url', NULL, '/about', NULL, '_self', NULL, 2, 1, NULL, NULL, '2021-08-31 17:17:58', '2021-08-31 17:28:52'),
(8, 1, 'dynamic_url', NULL, '/services', NULL, '_self', NULL, 3, 1, NULL, NULL, '2021-08-31 17:18:44', '2021-08-31 17:28:52'),
(10, 1, 'dynamic_url', NULL, 'faq', NULL, '_self', NULL, 4, 1, NULL, NULL, '2021-08-31 17:19:27', '2021-09-04 16:20:28'),
(11, 1, 'dynamic_url', NULL, '/contact', NULL, '_self', NULL, 5, 1, NULL, NULL, '2021-08-31 17:19:43', '2021-09-04 16:20:28'),
(15, 2, 'dynamic_url', NULL, '/contact', NULL, '_self', NULL, 1, 1, NULL, NULL, '2021-08-31 18:12:42', '2021-09-04 16:22:17'),
(20, 2, 'dynamic_url', NULL, '/about', NULL, '_self', NULL, 2, 1, NULL, NULL, '2021-09-04 16:21:32', '2021-09-04 16:22:17'),
(21, 2, 'dynamic_url', NULL, '/services', NULL, '_self', NULL, 3, 1, NULL, NULL, '2021-09-04 16:22:06', '2021-09-04 16:22:17'),
(22, 3, 'page', 2, NULL, NULL, '_self', NULL, 2, 1, NULL, NULL, '2021-09-04 16:22:58', '2021-09-04 16:23:26'),
(23, 3, 'page', 1, NULL, NULL, '_self', NULL, 1, 1, NULL, NULL, '2021-09-04 16:23:10', '2021-09-04 16:23:26'),
(24, 3, 'dynamic_url', NULL, '/faq', NULL, '_self', NULL, 3, 1, NULL, NULL, '2021-09-04 16:23:20', '2021-09-04 16:23:26');



INSERT INTO `navigation_item_translations` (`id`, `navigation_item_id`, `locale`, `name`, `created_at`, `updated_at`) VALUES
(6, 6, 'English', 'Home', '2021-08-31 17:17:46', '2021-08-31 17:17:46'),
(7, 7, 'English', 'About', '2021-08-31 17:17:58', '2021-08-31 17:17:58'),
(8, 8, 'English', 'Services', '2021-08-31 17:18:44', '2021-08-31 17:18:44'),
(10, 10, 'English', 'FAQ', '2021-08-31 17:19:27', '2021-08-31 17:19:27'),
(11, 11, 'English', 'Contact', '2021-08-31 17:19:43', '2021-08-31 17:19:43'),
(15, 15, 'English', 'Contact', '2021-08-31 18:12:42', '2021-09-04 16:22:15'),
(26, 20, 'English', 'About', '2021-09-04 16:21:32', '2021-09-04 16:21:32'),
(27, 21, 'English', 'Services', '2021-09-04 16:22:06', '2021-09-04 16:22:06'),
(28, 22, 'English', 'Terms & Condition', '2021-09-04 16:22:58', '2021-09-04 16:22:58'),
(29, 23, 'English', 'Privacy Policy', '2021-09-04 16:23:10', '2021-09-04 16:23:10'),
(30, 24, 'English', 'FAQ', '2021-09-04 16:23:20', '2021-09-04 16:23:20');


INSERT INTO `services` (`id`, `icon`, `created_at`, `updated_at`) VALUES
(2, '<i class=\"icofont-paper-plane\"></i>', '2021-08-31 07:34:38', '2021-09-05 15:33:22'),
(3, '<i class=\"icofont-money\"></i>', '2021-08-31 07:35:33', '2021-09-05 11:29:47'),
(4, '<i class=\"icofont-exchange\"></i>', '2021-08-31 07:38:26', '2021-09-05 11:30:04'),
(5, '<i class=\"icofont-bank-alt\"></i>', '2021-08-31 07:38:44', '2021-09-05 11:30:19'),
(6, '<i class=\"icofont-file-text\"></i>', '2021-08-31 07:39:01', '2021-09-05 11:30:32'),
(7, '<i class=\"icofont-pay\"></i>', '2021-08-31 07:39:19', '2021-09-05 11:30:43');


INSERT INTO `service_translations` (`id`, `service_id`, `locale`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 2, 'English', 'Money Transfer', 'Paragraph of text beneath the heading to explain the heading.', '2021-08-31 07:34:38', '2021-08-31 07:34:38'),
(2, 3, 'English', 'Multi Currency', 'Paragraph of text beneath the heading to explain the heading.', '2021-08-31 07:35:33', '2021-09-05 11:34:07'),
(3, 4, 'English', 'Exchange Currency', 'Paragraph of text beneath the heading to explain the heading.', '2021-08-31 07:38:26', '2021-08-31 07:38:26'),
(4, 5, 'English', 'Fixed Deposit', 'Paragraph of text beneath the heading to explain the heading.', '2021-08-31 07:38:44', '2021-08-31 07:38:44'),
(5, 6, 'English', 'Apply Loan', 'Paragraph of text beneath the heading to explain the heading.', '2021-08-31 07:39:01', '2021-08-31 07:39:01'),
(6, 7, 'English', 'Payment Request', 'Paragraph of text beneath the heading to explain the heading.', '2021-08-31 07:39:19', '2021-08-31 07:50:50');



INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(38, 'main_heading', 'Smart way to keep your money safe and secure', '2021-08-31 15:38:10', '2021-09-05 11:47:17'),
(39, 'sub_heading', 'Transfer money within minutes and save money for your future. All of your desired service in single platform.', '2021-08-31 15:39:15', '2021-09-05 11:47:17'),
(40, 'about_us', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2021-08-31 15:39:15', '2021-08-31 15:57:30'),
(41, 'copyright', 'Copyright © 2021 <a href=\"#\" target=\"_blank\">Tricky Code</a>  -  All Rights Reserved.', '2021-08-31 15:39:15', '2021-09-05 11:24:45'),
(46, 'meta_keywords', '', '2021-08-31 15:39:15', '2021-08-31 15:39:15'),
(47, 'meta_content', '', '2021-08-31 15:39:15', '2021-08-31 15:39:15'),
(48, 'our_mission', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.</p>', '2021-08-31 15:54:44', '2021-08-31 15:54:44'),
(49, 'footer_about_us', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2021-08-31 15:58:14', '2021-09-05 11:24:45'),
(51, 'primary_menu', '1', '2021-08-31 17:30:14', '2021-08-31 17:30:14'),
(52, 'footer_menu_1', '2', '2021-08-31 17:30:14', '2021-08-31 18:13:31'),
(53, 'footer_menu_1_title', 'Quick Explore', '2021-09-01 06:50:56', '2021-09-01 06:50:56'),
(54, 'footer_menu_2_title', 'Pages', '2021-09-01 06:50:56', '2021-09-05 11:24:45'),
(55, 'footer_menu_2', '3', '2021-09-01 06:50:56', '2021-09-01 06:50:56'),
(56, 'home_about_us_heading', 'About Us', '2021-09-05 10:52:18', '2021-09-05 10:54:38'),
(57, 'home_about_us', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2021-09-05 10:52:18', '2021-09-05 10:52:18'),
(58, 'home_service_content', 'Lets know moreel necessitatibus dolor asperiores illum possimus sint voluptates incidunt molestias nostrum laudantium. Maiores porro cumque quaerat.', '2021-09-05 10:52:18', '2021-09-05 11:12:10'),
(59, 'home_fixed_deposit_heading', 'Fixed Deposit Plans', '2021-09-05 10:52:18', '2021-09-05 11:19:41'),
(60, 'home_fixed_deposit_content', 'Lets know moreel necessitatibus dolor asperiores illum possimus sint voluptates incidunt molestias nostrum laudantium. Maiores porro cumque quaerat.', '2021-09-05 10:52:18', '2021-09-05 11:19:41'),
(61, 'home_loan_heading', 'Loan Packages', '2021-09-05 10:52:18', '2021-09-05 11:19:41'),
(62, 'home_loan_content', 'Lets know moreel necessitatibus dolor asperiores illum possimus sint voluptates incidunt molestias nostrum laudantium. Maiores porro cumque quaerat.', '2021-09-05 10:52:18', '2021-09-05 11:19:41'),
(63, 'home_testimonial_heading', 'We served over 500+ Customers', '2021-09-05 10:52:18', '2021-09-05 11:19:41'),
(64, 'home_testimonial_content', 'Lets know moreel necessitatibus dolor asperiores illum possimus sint voluptates incidunt molestias nostrum laudantium. Maiores porro cumque quaerat.', '2021-09-05 10:52:18', '2021-09-05 11:19:41'),
(65, 'home_partner_heading', 'Partners who support us', '2021-09-05 10:52:18', '2021-09-05 11:19:41'),
(66, 'home_partner_content', 'Lets know moreel necessitatibus dolor asperiores illum possimus sint voluptates incidunt molestias nostrum laudantium. Maiores porro cumque quaerat.', '2021-09-05 10:52:18', '2021-09-05 11:19:41'),
(67, 'home_about_us_content', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2021-09-05 10:54:15', '2021-09-05 10:54:15'),
(68, 'home_service_heading', 'Our Services', '2021-09-05 10:54:38', '2021-09-05 11:12:10'),
(69, 'total_customer', '500', '2021-09-05 11:06:39', '2021-09-05 11:08:10'),
(70, 'total_branch', '5', '2021-09-05 11:06:39', '2021-09-05 11:11:53'),
(71, 'total_transactions', '1', '2021-09-05 11:06:39', '2021-09-05 11:11:53'),
(72, 'total_countries', '200', '2021-09-05 11:06:39', '2021-09-05 11:11:53'),
(73, 'about_page_title', ' Who We Are', '2021-09-05 15:07:18', '2021-09-05 15:07:18'),
(74, 'our_team_title', 'Meet Our Team', '2021-09-05 15:07:18', '2021-09-05 15:07:18'),
(75, 'our_team_sub_title', 'Today’s users expect effortless experiences. Don’t let essential people and processes stay stuck in the past. Speed it up, skip the hassles', '2021-09-05 15:07:18', '2021-09-05 15:07:18'),
(76, 'about_us_content', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2021-09-05 15:08:15', '2021-09-05 15:08:15');