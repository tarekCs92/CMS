USE [PersonalityDB]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 07/10/2022 2:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AboutTB]    Script Date: 07/10/2022 2:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutTB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SectionName] [nvarchar](max) NULL,
	[SectionId] [int] NULL,
	[EnTitle] [nvarchar](max) NULL,
	[ArTitle] [nvarchar](max) NULL,
	[EnDescription] [nvarchar](max) NULL,
	[ArDescription] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Icon] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 07/10/2022 2:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 07/10/2022 2:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 07/10/2022 2:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 07/10/2022 2:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 07/10/2022 2:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ContactsTB]    Script Date: 07/10/2022 2:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactsTB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SectionName] [nvarchar](max) NULL,
	[SectionId] [int] NULL,
	[EnTitle] [nvarchar](max) NULL,
	[ArTitle] [nvarchar](max) NULL,
	[EnDescription] [nvarchar](max) NULL,
	[ArDescription] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Icon] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IndexTB]    Script Date: 07/10/2022 2:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndexTB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SectionName] [nvarchar](max) NULL,
	[SectionId] [int] NULL,
	[EnTitle] [nvarchar](max) NULL,
	[ArTitle] [nvarchar](max) NULL,
	[EnDescription] [nvarchar](max) NULL,
	[ArDescription] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Icon] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
 CONSTRAINT [PK_IndexTB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JobsTB]    Script Date: 07/10/2022 2:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobsTB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SectionName] [nvarchar](max) NULL,
	[SectionId] [int] NULL,
	[EnTitle] [nvarchar](max) NULL,
	[ArTitle] [nvarchar](max) NULL,
	[EnDescription] [nvarchar](max) NULL,
	[ArDescription] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Icon] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LayoutTB]    Script Date: 07/10/2022 2:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LayoutTB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SectionName] [nvarchar](max) NULL,
	[SectionId] [int] NULL,
	[EnTitle] [nvarchar](max) NULL,
	[ArTitle] [nvarchar](max) NULL,
	[EnDescription] [nvarchar](max) NULL,
	[ArDescription] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Icon] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_Layout] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NewsTB]    Script Date: 07/10/2022 2:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsTB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SectionName] [nvarchar](max) NULL,
	[SectionId] [int] NULL,
	[EnTitle] [nvarchar](max) NULL,
	[ArTitle] [nvarchar](max) NULL,
	[EnDescription] [nvarchar](max) NULL,
	[ArDescription] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Icon] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_News_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductsTB]    Script Date: 07/10/2022 2:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsTB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SectionName] [nvarchar](max) NULL,
	[SectionId] [int] NULL,
	[EnTitle] [nvarchar](max) NULL,
	[ArTitle] [nvarchar](max) NULL,
	[EnDescription] [nvarchar](max) NULL,
	[ArDescription] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Icon] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Services]    Script Date: 07/10/2022 2:35:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SectionName] [nvarchar](max) NULL,
	[SectionId] [int] NULL,
	[EnTitle] [nvarchar](max) NULL,
	[ArTitle] [nvarchar](max) NULL,
	[EnDescription] [nvarchar](max) NULL,
	[ArDescription] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Icon] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201710171307256_InitialCreate', N'PersonalityCMS.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E3FC0F90F829E7A0E522B97B38B6D60EF2275929EA09B0BD6D9A26F0B5AA21D62254A95A83441D15FD687FEA4FE850E254A9678D1C5566CA72850AC45F29BE1F023391C0EF3D71F7F8E3F3C05BEF588E3848474621F8D0E6D0B5337F4085D4EEC942DBE7D677F78FFEF7F8D2FBCE0C9FAA9A877C2EB414B9A4CEC07C6A253C749DC071CA0641410370E9370C1466E1838C80B9DE3C3C3EF9CA3230703840D589635FE945246029CFD809FD390BA386229F2AF430FFB89F80E25B30CD5BA41014E22E4E2897D073A8414F9843D4FAF67A3BC816D9DF904813233EC2F6C0B511A32C440D5D3CF099EB138A4CB59041F907FFF1C61A8B7407E8245174E57D5BBF6E6F098F7C659352CA0DC346161D013F0E84498C7919BAF6564BB341F18F0020CCD9E79AF33234EEC2B0F679F3E853E184016783AF5635E79625F9722CE92E806B351D17094435EC600F76B187F1D55110FACCEED0E4A3A1D8F0EF97F07D634F5591AE309C5298B917F60DDA5739FB83FE2E7FBF02BA69393A3F9E2E4DD9BB7C83B79FB3F7CF2A6DA53E82BD4AB7D804F777118E11874C38BB2FFB6E5D4DB3972C3B259A54D6E15E012CC0CDBBA464F1F315DB2079833C7EF6CEB923C61AFF822C8F599129848D088C529FCBC497D1FCD7D5C963B8D32F9FF1BA41EBF793B88D41BF44896D9D04BF261E2C430AF3E613F2B4D1E48944FAFDA787F11D52EE330E0BFEBFCCA4BBFCCC2347679674263957B142F31AB6B377656E4ED44690E353CAD0BD4FDA736D754A5B7B62AEFD03A33A110B1EDD950E8FBB2723B33EE2C8A60F0326A718B34114EBB5F8D2400A043ADDA8A40475D0944A163FFE4F5F02240C41F6041EC2005DC910589035CF6F2FB10E887686F9DEF5092C07AE0FD1F250F0DAAC33F07507D86DD3406FACC180AA2179776F710527C930673CEFEEDC91A6C68EE7F0D2F91CBC2F882F2561BE37D0CDDAF61CA2EA8778E18FECCDC0290FFBC2741778041D439735D9C24974066EC4D43F0B60BC02BCA4E8E7BC3F1356AD70EC9D44724D07B24D26AFAA5A8BAF24AF43514CFC4504DE79D34A9FA315C12DA4DD5A2AA59D5BC46ABAAA25A5F553958374D454DB3A25985563DF35A83F97BD9080DEFF065B0FBEFF16DB6799BD6828A1967B042E21F30C5312C63DE1D620CC77435025DD68D5D380BD9F071A12FBE3765927E427E3AB4A8B56643B6080C3F1B32D8FD9F0D999AF0F99178DC2BE9700C2A2A037CA7FAFA1356FB9C9334DBF674A87573DBC2B7B30698A6CB5992842EC96681260026C21775FDC187B3DA6319796FE47808740C884EF896075FA06FB64CAA5B7A8E7DCCB075E6E601C2294A5CE4A966840E793D142B76548D62ABB8485DB9FF2A3281E938E68D103F042530530965EAB420D42511F25BAD24B5ECB885F1BE9732E492731C61CA05B65AA28B707D18842B50CA9106A5CD4263A7C2B866221ABC56D398B7B9B0AB7157A2135BE1648BEF6CE0A5F0DF5E8498CD16DB02399B4DD2450163486F1704156795AE04900F2EFB4650E9C46420A870A9B642D0BAC57640D0BA495E1D41F3236AD7F197CEABFB46CFFA4179FBDB7AA3B976C0CD9A3DF68C9AB9EF096D18B4C0B14ACFF3392FC44F4C7338033DC5F92C11AEAE4C110E3EC3AC1EB259F9BB5A3FD469069149D404B8225A0BA8B80C54809409D543B92296D7A89DF0227AC01671B74658B1F64BB0150EA8D8D54BD14A45F3D5A94CCE4EA78FB267251B1492773A2C547034849017AF7AC73B18C51497550DD3C517EEE30D573A2606A3C1402D9EABC148456706B75241CD762BE91CB23E2ED9465692DC2783958ACE0C6E25C1D17623699C821E6EC14626AA6FE1034DB622D251EE3665D9D8C9D3A5C487B163C8AB1A5FA328227459C9B3125FAC599E6435FD76D63FF528C8311C37D1642095DA96925818A325964A4134687A49E2849D2386E688C779A65EA054D3EEAD86E5BF1059DD3ED5412CF681A236FFB7089F69AFF06BDBADEA8F08984BE864C09D9A2C92AEA180BEB9C553DF908F624DF07E1AFA6940CD3E96B9757E85576D9F7F5111C68EA4BFE2432906533CDDBAF53B8D8D3A2F861BA7D28B597FACCC10268B173E68D5E626BFD48C5284A9AA28A6D0D5CEC6CEE4CEF41D2FD959EC3F5CAD082F33BB44864A15407CEA8951497250C02A65DD51EB792855CC7A49774429D9A40A2915F5D0B29A525253B25AB0169EC1A2FA1ADD25A849245574B5B43BB2269DA40AAD295E035BA3B35CD61D5593715205D61477C75EA59FC8EBE81EEF5FC623CC261B587ED0DD6C073360BCCCA238CC0658B9CFAF02553EF7C41237F60A98F8BE9784329EF63621541EE2D88C50060CF3FA53BB0CAF2F3F8D37F866CCDA0D776D896FBAE137E3F5A3ED8B924339EFC9554AE9E5B94F3ADF8DC559ABFD718D72F8CAABD8566146D8DE9F13868311AF309AFDE24F7D82F9625E54B846942C70C2F2AC0EFBF8F0E8587A9CB33F0F659C24F17CCD59D5F45AA63E665B48D0A28F28761F50ACA64B6CF0986405AA44A2AFA8879F26F66F59ABD32CA8C1FF957D3EB0AE92CF94FC9242C17D9C62EB7735FD7398E4FAE6D3D69E3E85E86ED5AB9FBFE44D0FACDB1866CCA97528D9729D11AE3F90E8A54DDE74036DD67E36F17A2754ED358216559A10EB3F3E981336C8C38342CB6F02F4F49FBEAA691F176C84A879403014DE2026343D105807CBF838C0839F2C7B1CD0AFB3FAC702EBA8667C2840687F30F99940F765A868B9C3AD46732CDAC69294D9B935CD7AA39CCB5DEF4D4A36F646135DCDB8EE01B74156F51ACC786509C983ED8E9A7CE3C1B07749ED174F32DE97BCE255C6C76ED389B79941DC703FF48F4A1CDE8354374DEACEEED383B7CD35532877CF732CFB2501EF19D94442D7EE537DB74D36539877CFC9D62BA177CFB8B6ABFD73C74CEBBC85EE3C3D57CD34325CC9E862C16DE9B779E01C4EF8F31048907B94F9AB497DBE5753AE6A8BC05515B35073A2992C5899388A5CA546B3D87E7D151B7E6367459D66B186F4CC26D962FD6F942DEA34CB36243DEE2271589B76A84BE66E59C79AB2A15E53A270AD272D79E96D3E6BE3FDFA6BCA0B1EC428B5D963B8237E3D69C0839864C8A9D323ED57BDEE85BDB3F2171761FF4EC87205C1FFFE22C56E6DD72CEB5CD145586CDE924645152942738D19F2604B3D8B1959209741318F3167CFBEB3B81DBFE99863EF8ADEA62C4A1974190773BF16F0E24E4093FC2CB7B9AEF3F836CAFE82C9105D0035098FCDDFD2EF53E27BA5DE979A989001827B1722A2CBC792F1C8EEF2B944BA0969472061BED229BAC741E40358724B67E811AFA31BD0EF235E22F77915013481B40F44DDECE3738296310A1281B16A0F3F81C35EF0F4FE6FC630E9F578540000, N'6.1.3-40302')
SET IDENTITY_INSERT [dbo].[AboutTB] ON 

INSERT [dbo].[AboutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (1, N'about', 1, N'Company Profile', N'لمحة عن الشركة', N'The company''s head office is located in the heart of Europe Dixion is a subsidiary company and its own brand name Stormoff Group, which has operated worldwide for more than 25 years successfully in the medical market. As a German manufacturer and international company Dixion offers a wide range of medical devices for various applications such as surgery, intensive care, gynecology and neonatal. The company has long experience in project management each level of difficulty - from the facilities of small medical centers to the design, construction and installation of large hospitals. We supply our own brands equipment as well as the production of the world''s leading companies to our customers and partners in more than 50 countries.', N'يقع مقر الشركة الرئيسي في قلب أوروبا Dixion هي شركة تابعة واسم علامتها التجارية الخاصة Stormoff المجموعة، التي تعمل في جميع أنحاء العالم لأكثر من 25 عاما بنجاح في السوق الطبية. كشركة مصنعة الألمانية وشركة دولية تقدم Dixion مجموعة واسعة من الأجهزة الطبية لمختلف التطبيقات مثل الجراحة، العناية المركزة وأمراض النساء وحديثي الولادة. والشركة لديها خبرة طويلة في إدارة المشاريع كل مستوى من مستويات الصعوبة - من مرافق المراكز الطبية الصغيرة لتصميم وبناء وتركيب المستشفيات الكبيرة. نحن توريد المعدات العلامات التجارية الخاصة، فضلا عن إنتاج من الشركات الرائدة في العالم لعملائنا وشركاء في أكثر من 50 بلدا.
', N'/up/20171017125433.jpg', NULL, NULL)
INSERT [dbo].[AboutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (2, N'TextSection', 2, N'14 years of existence in the market', N'14 عاما من وجودها فى السوق', N'Contrary to popular belief, Lorem Epsom is not a random text; it has roots in classical Latin literature since 45 BC, making it more than 2,000 years old. Professor Richard McClintock, a Latin professor at the University of Hampden-Sydney, Virginia, searched for the origins of a mysterious Latin word in the text of "Lorem Ipsum", "consectetur." In his follow-up to this word in Latin literature, the unquestionable source was discovered. It is clear that the words of Lorem Ipsum come from sections 1.10.32 and 1.10.33 of the book "The Finicus Bonorum et Malorum" by the thinker Cicero, written in 45 BC. This book is a lengthy scientific article in the theory of ethics, and was very popular in the Renaissance. The first line of Lorem ipsum dolor sit amet .. comes from the line in section 1.20.32 of this book <br>', N'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور "ريتشارد ماك لينتوك" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي "consectetur"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب "حول أقاصي الخير والشر" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم "Lorem ipsum dolor sit amet.." يأتي من سطر في القسم 1.20.32 من هذا الكتاب<br>', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[AboutTB] OFF
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'7a91a1fa-0e9d-4b2b-8fd7-c041e420581b', N'admin', 0, N'ANJkFVyDwlxqzBheegR/gFf7FF4ywcVOb1TJn4h8w9FWyC8zlHcxk7u9fNuvmA4PEQ==', N'91380b80-ec42-403f-9a07-209ec7226552', NULL, 0, 0, NULL, 1, 0, N'admin')
SET IDENTITY_INSERT [dbo].[ContactsTB] ON 

INSERT [dbo].[ContactsTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (1, N'ContactMail', 1, NULL, N'tarek_nadal@yahoo.com', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ContactsTB] OFF
SET IDENTITY_INSERT [dbo].[IndexTB] ON 

INSERT [dbo].[IndexTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (1, N'Slider', 1, N'All related to medical devices', N'كل ما يخص الاجهزه الطبيه
', N'This is the first product', N'هذا هو المنتج الاول', N'/images/banner1.jpg', NULL, NULL)
INSERT [dbo].[IndexTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (2, N'Slider', 1, N'All related to medical devices', N'كل ما يخص الاجهزه الطبيه
', N'This is the first product', N'هذا هو المنتج الاول', N'/images/banner1.jpg', NULL, NULL)
INSERT [dbo].[IndexTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (3, N'Slider', 1, N'All related to medical devices', N'كل ما يخص الاجهزه الطبيه
', N'This is the first product', N'هذا هو المنتج الاول', N'/images/banner1.jpg', NULL, NULL)
INSERT [dbo].[IndexTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (4, N'Latest', 2, N'Turkmen Health', N'صحة تركمان', N'test', N'هذا هو المنتج الاول', N'/images/g3.jpg', NULL, NULL)
INSERT [dbo].[IndexTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (11, N'Latest', 2, N'test', N'اختبار', NULL, NULL, N'/up/20171017111659.jpg', NULL, NULL)
INSERT [dbo].[IndexTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (12, N'Latest', 2, N'test', N'اختبار', NULL, NULL, N'/up/20171017111712.jpg', NULL, NULL)
INSERT [dbo].[IndexTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (13, N'Latest', 2, N'test', N'اختبار', NULL, NULL, N'/up/20171017111723.jpg', NULL, NULL)
SET IDENTITY_INSERT [dbo].[IndexTB] OFF
SET IDENTITY_INSERT [dbo].[JobsTB] ON 

INSERT [dbo].[JobsTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (1, N'Careers', 1, N'Jops', N'الوظائف', N'Medical Sales Manager Product Manager in Medical Technology Marketing Manager in the Medical Field Warehouse Officer in Medical Technology with a focus on inventory control and sales assistant in medical technology', N'مدير مبيعات الطبية مدير المنتجات في التكنولوجيا الطبية مدير التسويق في المجال الطبي موظف مستودع في التكنولوجيا الطبية مع التركيز على مراقبة المخزون مساعد مبيعات في التكنولوجيا الطبية
', N'/images/2.jpg', NULL, NULL)
INSERT [dbo].[JobsTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (2, N'TextSection', 2, N'14 years of existence in the market', N'14 عاما من وجودها فى السوق', N'Contrary to popular belief, Lorem Epsom is not a random text; it has roots in classical Latin literature since 45 BC, making it more than 2,000 years old. Professor Richard McClintock, a Latin professor at the University of Hampden-Sydney, Virginia, searched for the origins of a mysterious Latin word in the text of "Lorem Ipsum", "consectetur." In his follow-up to this word in Latin literature, the unquestionable source was discovered. It is clear that the words of Lorem Ipsum come from sections 1.10.32 and 1.10.33 of the book "The Finicus Bonorum et Malorum" by the thinker Cicero, written in 45 BC. This book is a lengthy scientific article in the theory of ethics, and was very popular in the Renaissance. The first line of Lorem ipsum dolor sit amet .. comes from the line in section 1.20.32 of this book ', N'خلافاَ للإعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد، مما يجعله أكثر من 2000 عام في القدم. قام البروفيسور "ريتشارد ماك لينتوك" (Richard McClintock) وهو بروفيسور اللغة اللاتينية في جامعة هامبدن-سيدني في فيرجينيا بالبحث عن أصول كلمة لاتينية غامضة في نص لوريم إيبسوم وهي "consectetur"، وخلال تتبعه لهذه الكلمة في الأدب اللاتيني اكتشف المصدر الغير قابل للشك. فلقد اتضح أن كلمات نص لوريم إيبسوم تأتي من الأقسام 1.10.32 و 1.10.33 من كتاب "حول أقاصي الخير والشر" (de Finibus Bonorum et Malorum) للمفكر شيشيرون (Cicero) والذي كتبه في عام 45 قبل الميلاد. هذا الكتاب هو بمثابة مقالة علمية مطولة في نظرية الأخلاق، وكان له شعبية كبيرة في عصر النهضة. السطر الأول من لوريم إيبسوم "Lorem ipsum dolor sit amet.." يأتي من سطر في القسم 1.20.32 من هذا الكتاب<br>', NULL, NULL, NULL)
INSERT [dbo].[JobsTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (3, N'Careers', 1, N'Jops', N'الوظائف', N'Medical Sales Manager Product Manager in Medical Technology Marketing Manager in the Medical Field Warehouse Officer in Medical Technology with a focus on inventory control and sales assistant in medical technology', N'مدير مبيعات الطبية مدير المنتجات في التكنولوجيا الطبية مدير التسويق في المجال الطبي موظف مستودع في التكنولوجيا الطبية مع التركيز على مراقبة المخزون مساعد مبيعات في التكنولوجيا الطبية', N'/images/2.jpg', NULL, NULL)
INSERT [dbo].[JobsTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (4, N'Careers', 1, N'Jops', N'الوظائف', N'Medical Sales Manager Product Manager in Medical Technology Marketing Manager in the Medical Field Warehouse Officer in Medical Technology with a focus on inventory control and sales assistant in medical technology', N'مدير مبيعات الطبية مدير المنتجات في التكنولوجيا الطبية مدير التسويق في المجال الطبي موظف مستودع في التكنولوجيا الطبية مع التركيز على مراقبة المخزون مساعد مبيعات في التكنولوجيا الطبية', N'/images/2.jpg', NULL, NULL)
SET IDENTITY_INSERT [dbo].[JobsTB] OFF
SET IDENTITY_INSERT [dbo].[LayoutTB] ON 

INSERT [dbo].[LayoutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Mobile], [Phone]) VALUES (2, N'facebook', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'https://www.facebook.com/4tarekmohamed', NULL, NULL)
INSERT [dbo].[LayoutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Mobile], [Phone]) VALUES (3, N'Twitter', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LayoutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Mobile], [Phone]) VALUES (4, N'Vk', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LayoutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Mobile], [Phone]) VALUES (5, N'Instagram', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LayoutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Mobile], [Phone]) VALUES (6, N'Rss', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LayoutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Mobile], [Phone]) VALUES (7, N'Header Phone ', 6, N'+49 (0) 211-1793-640', N'+49 (0) 211-1793-640', N'Technical support for patients', N'الدعم الفني للمرضي', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LayoutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Mobile], [Phone]) VALUES (8, N'Header Phone ', 7, N'+49 (0) 211-3883-8868
', N'+49 (0) 211-3883-8868
', N'Dixion in Deutschland', N'Dixion in Deutschland', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LayoutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Mobile], [Phone]) VALUES (9, N'Header Logo', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LayoutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Mobile], [Phone]) VALUES (10, N'Footer Section 1', 9, N'DIXION HEALTHCARE', N'DIXION HEALTHCARE', N'The Dixion healthcare project provides training and workshops with leading specialists & nbsp;', N'ويوفر مشروع الرعاية الصحية Dixion التدريب وورش عمل مع المتخصصين الرائدة&nbsp;', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LayoutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Mobile], [Phone]) VALUES (11, N'Footer Section 2', 10, N'DIXION HEALTHCARE', N'DIXION HEALTHCARE', N'The Dixion healthcare project provides training and workshops with leading specialists & nbsp;', N'ويوفر مشروع الرعاية الصحية Dixion التدريب وورش عمل مع المتخصصين الرائدة .
', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LayoutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Mobile], [Phone]) VALUES (12, N'Footer Section 3', 11, N'DIXION HEALTHCARE', N'DIXION HEALTHCARE', N'The Dixion healthcare project provides training and workshops with leading specialists & nbsp;', N'ويوفر مشروع الرعاية الصحية Dixion التدريب وورش عمل مع المتخصصين&nbsp;', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LayoutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Mobile], [Phone]) VALUES (13, N'Footer Section 4', 12, N'DIXION HEALTHCARE', N'DIXION HEALTHCARE', N'The Dixion healthcare project provides training and workshops with leading specialists & nbsp;', N'ويوفر مشروع الرعاية الصحية Dixion التدريب وورش عمل مع المتخصصين الرائدة', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LayoutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Mobile], [Phone]) VALUES (15, N'Static', 13, N'Events', N'الاحداث ', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LayoutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Mobile], [Phone]) VALUES (16, N'Static', 13, N'products', N'المنتجات', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LayoutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Mobile], [Phone]) VALUES (17, N'Static', 13, N'Services', N'الخدمات', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LayoutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Mobile], [Phone]) VALUES (18, N'Static', 13, N'Terms of use', N'شروط الاستخدام

', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LayoutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Mobile], [Phone]) VALUES (19, N'Static', 13, N'Company Profile', N'لمحة عن الشركة
', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LayoutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Mobile], [Phone]) VALUES (22, N'Static', 13, N'Our products', N'منتجاتنا', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LayoutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Mobile], [Phone]) VALUES (24, N'Static', 13, N'News', N'الأخبار', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LayoutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Mobile], [Phone]) VALUES (25, N'Static', 13, N'Jobs', N'الوظائف', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LayoutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Mobile], [Phone]) VALUES (26, N'Static', 13, N'Call Us', N'اتصل بنا
', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[LayoutTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Mobile], [Phone]) VALUES (28, N'google', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[LayoutTB] OFF
SET IDENTITY_INSERT [dbo].[NewsTB] ON 

INSERT [dbo].[NewsTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Date]) VALUES (6, N'News', 1, N'Are cancer drugs approved without sufficient research?', N'هل تتم الموافقة على ادوية السرطان دون ابحاث كافية؟', N'Recent research indicates that only half of the approved cancer drugs are approved', N'تشير الأبحاث الأخيرة إلى أن فقط نصف أدوية السرطان التي تمت الموافقة عليها<br>', N'/up/20171017115729.jpg', NULL, NULL, NULL)
INSERT [dbo].[NewsTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Date]) VALUES (7, N'News', 1, N'Are cancer drugs approved without sufficient research?', N'هل تتم الموافقة على ادوية السرطان دون ابحاث كافية؟', N'Recent research indicates that only half of the approved cancer drugs are approved', N'تشير الأبحاث الأخيرة إلى أن فقط نصف أدوية السرطان التي تمت الموافقة عليها<br>', N'/up/20171017115741.jpg', NULL, NULL, NULL)
INSERT [dbo].[NewsTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link], [Date]) VALUES (8, N'News', 1, N'test', N'هل تتم الموافقة على ادوية السرطان دون ابحاث كافية؟', N'Recent research indicates that only half of the approved cancer drugs are approved', N'تشير الأبحاث الأخيرة إلى أن فقط نصف أدوية السرطان التي تمت الموافقة عليها<br>', N'/up/20171017115753.jpg', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[NewsTB] OFF
SET IDENTITY_INSERT [dbo].[ProductsTB] ON 

INSERT [dbo].[ProductsTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (1, N'Products', 1, N'First product', N'المنتج الاول', N'This is the first product', N'هذا هو المنتج الاول', N'/images/g2.jpg', NULL, NULL)
INSERT [dbo].[ProductsTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (2, N'Products', 1, N'First product', N'المنتج الاول', N'This is the first product', N'هذا هو المنتج الاول', N'/images/g2.jpg', NULL, NULL)
INSERT [dbo].[ProductsTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (3, N'Products', 1, N'first product', N'المنتج الاول', N'This is the first product', N'هذا هو المنتج الاول', N'/images/g2.jpg', NULL, NULL)
INSERT [dbo].[ProductsTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (8, N'Product', 1, N'test', N'اختبار', NULL, N'<br>', N'/up/20171017114549.jpg', NULL, NULL)
INSERT [dbo].[ProductsTB] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (9, N'Product', 1, N'test', N'اختبار', N'bdhdehrt', N'htrh', N'/up/20171017030029.jpg', NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProductsTB] OFF
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (2, N'Services', 1, N'Support medical facilities', N'دعم المرافق الطبية', NULL, NULL, NULL, N'fa-briefcase', NULL)
INSERT [dbo].[Services] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (3, N'Services', 1, N'Support medical facilities', N'دعم المرافق الطبية', NULL, NULL, NULL, N'fa-briefcase', NULL)
INSERT [dbo].[Services] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (8, N'Condition', 2, N'Repair time - up to 30 days', N'إصلاح وقت - ما يصل إلى 30 يوما', NULL, NULL, NULL, N'fa-calendar', NULL)
INSERT [dbo].[Services] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (9, N'Condition', 2, N'Repair time - up to 30 days', N'إصلاح وقت - ما يصل إلى 30 يوما', NULL, NULL, NULL, N'fa-calendar', NULL)
INSERT [dbo].[Services] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (10, N'Condition', 2, N'Repair time - up to 30 days', N'إصلاح وقت - ما يصل إلى 30 يوما', NULL, NULL, NULL, N'fa-calendar', NULL)
INSERT [dbo].[Services] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (11, N'Condition', 2, N'Repair time - up to 30 days', N'إصلاح وقت - ما يصل إلى 30 يوما', NULL, NULL, NULL, N'fa-calendar', NULL)
INSERT [dbo].[Services] ([Id], [SectionName], [SectionId], [EnTitle], [ArTitle], [EnDescription], [ArDescription], [Image], [Icon], [Link]) VALUES (12, N'Service Titile', 3, NULL, NULL, N'test test test test', N'بالإضافة إلى إنتاج وتطوير العديد من الأجهزة الطبية تقدم Dixion دعمها حتى في التسويق في جميع أنحاء العالم وفي شهادة وتخزين البضائع الخاصة بك في ألمانيا. مع هذا الخيار، واستنادا إلى خبرتنا الواسعة، ونحن نريد لمساعدتك على إدخال الهم ممكن في السوق الدولية.', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Services] OFF
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
