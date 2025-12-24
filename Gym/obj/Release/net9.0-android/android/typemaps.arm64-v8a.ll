; ModuleID = 'typemaps.arm64-v8a.ll'
source_filename = "typemaps.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.TypeMapJava = type {
	i32, ; uint32_t module_index
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_name_index
}

%struct.TypeMapModule = type {
	[16 x i8], ; uint8_t module_uuid[16]
	i32, ; uint32_t entry_count
	i32, ; uint32_t duplicate_count
	ptr, ; TypeMapModuleEntry map
	ptr, ; TypeMapModuleEntry duplicate_map
	ptr, ; char* assembly_name
	ptr, ; MonoImage image
	i32, ; uint32_t java_name_width
	ptr ; uint8_t java_map
}

%struct.TypeMapModuleEntry = type {
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_map_index
}

@map_module_count = dso_local local_unnamed_addr constant i32 57, align 4

@java_type_count = dso_local local_unnamed_addr constant i32 1783, align 4

; Managed modules map
@map_modules = dso_local local_unnamed_addr global [57 x %struct.TypeMapModule] [
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x08, i8 u0x4b, i8 u0x5f, i8 u0xa3, i8 u0x4d, i8 u0xdf, i8 u0x34, i8 u0x4c, i8 u0xaf, i8 u0x46, i8 u0x9b, i8 u0x35, i8 u0x41, i8 u0x99, i8 u0x2d, i8 u0x75 ], ; module_uuid: a35f4b08-df4d-4c34-af46-9b3541992d75
		i32 6, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module0_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module0_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.0_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Runtime
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 0
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x08, i8 u0x4f, i8 u0x90, i8 u0x29, i8 u0x27, i8 u0x6b, i8 u0xf7, i8 u0x4e, i8 u0xbb, i8 u0x52, i8 u0x8d, i8 u0xaf, i8 u0x6c, i8 u0xcf, i8 u0x7d, i8 u0x3e ], ; module_uuid: 29904f08-6b27-4ef7-bb52-8daf6ccf7d3e
		i32 7, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module1_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module1_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.1_assembly_name, ; assembly_name: Xamarin.AndroidX.Browser
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 1
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x0d, i8 u0xbd, i8 u0x09, i8 u0x6f, i8 u0x70, i8 u0xe3, i8 u0xa4, i8 u0x45, i8 u0x8e, i8 u0xe0, i8 u0xa4, i8 u0x4f, i8 u0x66, i8 u0x92, i8 u0x28, i8 u0x1f ], ; module_uuid: 6f09bd0d-e370-45a4-8ee0-a44f6692281f
		i32 20, ; uint32_t entry_count
		i32 10, ; uint32_t duplicate_count
		ptr @module2_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module2_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.2_assembly_name, ; assembly_name: Xamarin.AndroidX.Fragment
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 2
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x10, i8 u0x2d, i8 u0x49, i8 u0x9f, i8 u0x46, i8 u0xc8, i8 u0xaf, i8 u0x40, i8 u0x87, i8 u0xc0, i8 u0x72, i8 u0x4a, i8 u0x64, i8 u0xc5, i8 u0x25, i8 u0x0e ], ; module_uuid: 9f492d10-c846-40af-87c0-724a64c5250e
		i32 7, ; uint32_t entry_count
		i32 4, ; uint32_t duplicate_count
		ptr @module3_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module3_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.3_assembly_name, ; assembly_name: Xamarin.AndroidX.ViewPager
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 3
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x18, i8 u0x33, i8 u0x10, i8 u0x75, i8 u0xf5, i8 u0x6f, i8 u0xd3, i8 u0x47, i8 u0xb4, i8 u0x01, i8 u0xbb, i8 u0x16, i8 u0xa4, i8 u0xf3, i8 u0x8c, i8 u0x2a ], ; module_uuid: 75103318-6ff5-47d3-b401-bb16a4f38c2a
		i32 4, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module4_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.4_assembly_name, ; assembly_name: CommunityToolkit.Maui.Camera
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 4
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x1e, i8 u0x17, i8 u0xf9, i8 u0xfe, i8 u0xb1, i8 u0x59, i8 u0x2d, i8 u0x48, i8 u0xb0, i8 u0x73, i8 u0x7f, i8 u0xc6, i8 u0xa1, i8 u0xf4, i8 u0x81, i8 u0x86 ], ; module_uuid: fef9171e-59b1-482d-b073-7fc6a1f48186
		i32 9, ; uint32_t entry_count
		i32 5, ; uint32_t duplicate_count
		ptr @module5_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module5_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.5_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.ViewModel.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 5
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x1e, i8 u0xc1, i8 u0x42, i8 u0xab, i8 u0xab, i8 u0x75, i8 u0x54, i8 u0x40, i8 u0x86, i8 u0xa5, i8 u0x3c, i8 u0xbe, i8 u0xdc, i8 u0x0d, i8 u0x61, i8 u0x96 ], ; module_uuid: ab42c11e-75ab-4054-86a5-3cbedc0d6196
		i32 41, ; uint32_t entry_count
		i32 21, ; uint32_t duplicate_count
		ptr @module6_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module6_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.6_assembly_name, ; assembly_name: Xamarin.AndroidX.RecyclerView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 6
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x20, i8 u0x2f, i8 u0x3f, i8 u0xaf, i8 u0x46, i8 u0x63, i8 u0x32, i8 u0x41, i8 u0x9f, i8 u0x98, i8 u0x81, i8 u0x92, i8 u0x44, i8 u0x7b, i8 u0x7f, i8 u0x96 ], ; module_uuid: af3f2f20-6346-4132-9f98-8192447b7f96
		i32 2, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module7_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.7_assembly_name, ; assembly_name: Xamarin.AndroidX.AppCompat.AppCompatResources
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 7
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x25, i8 u0x73, i8 u0x6f, i8 u0x8a, i8 u0xb9, i8 u0x26, i8 u0xb5, i8 u0x43, i8 u0x99, i8 u0x9b, i8 u0x6e, i8 u0x26, i8 u0x89, i8 u0x40, i8 u0x6f, i8 u0xab ], ; module_uuid: 8a6f7325-26b9-43b5-999b-6e2689406fab
		i32 13, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module8_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module8_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.8_assembly_name, ; assembly_name: Xamarin.AndroidX.Media3.Session
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 8
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x2a, i8 u0x7f, i8 u0x54, i8 u0x2e, i8 u0x47, i8 u0x7f, i8 u0xbf, i8 u0x49, i8 u0x96, i8 u0xfc, i8 u0x3f, i8 u0xcc, i8 u0x6e, i8 u0x20, i8 u0xe5, i8 u0x80 ], ; module_uuid: 2e547f2a-7f47-49bf-96fc-3fcc6e20e580
		i32 6, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module9_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module9_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.9_assembly_name, ; assembly_name: Xamarin.AndroidX.Camera.Camera2
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 9
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x2b, i8 u0xda, i8 u0x41, i8 u0x1c, i8 u0xf1, i8 u0x3a, i8 u0xd2, i8 u0x46, i8 u0x9f, i8 u0x41, i8 u0x45, i8 u0x0f, i8 u0x57, i8 u0xf6, i8 u0xd9, i8 u0xf7 ], ; module_uuid: 1c41da2b-3af1-46d2-9f41-450f57f6d9f7
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module10_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.10_assembly_name, ; assembly_name: Microsoft.Maui.Graphics
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 10
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x2c, i8 u0x09, i8 u0xfe, i8 u0x46, i8 u0xe8, i8 u0x4e, i8 u0x9b, i8 u0x49, i8 u0xa7, i8 u0x5f, i8 u0x92, i8 u0xb7, i8 u0x93, i8 u0x70, i8 u0x02, i8 u0xad ], ; module_uuid: 46fe092c-4ee8-499b-a75f-92b7937002ad
		i32 5, ; uint32_t entry_count
		i32 5, ; uint32_t duplicate_count
		ptr @module11_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module11_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.11_assembly_name, ; assembly_name: Xamarin.KotlinX.Coroutines.Core.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 11
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x2f, i8 u0x71, i8 u0x84, i8 u0x48, i8 u0x91, i8 u0xe3, i8 u0x6b, i8 u0x4f, i8 u0x8e, i8 u0xd6, i8 u0x2d, i8 u0x37, i8 u0x40, i8 u0xd8, i8 u0xfe, i8 u0xe8 ], ; module_uuid: 4884712f-e391-4f6b-8ed6-2d3740d8fee8
		i32 39, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module12_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.12_assembly_name, ; assembly_name: Syncfusion.Maui.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 12
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x30, i8 u0x35, i8 u0x4f, i8 u0xcb, i8 u0x8b, i8 u0x1d, i8 u0xd4, i8 u0x49, i8 u0x85, i8 u0xd3, i8 u0x07, i8 u0x3c, i8 u0x4b, i8 u0xcb, i8 u0x07, i8 u0x32 ], ; module_uuid: cb4f3530-1d8b-49d4-85d3-073c4bcb0732
		i32 3, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module13_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.13_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Fragment
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 13
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x34, i8 u0x57, i8 u0x4d, i8 u0x62, i8 u0x70, i8 u0x57, i8 u0x04, i8 u0x41, i8 u0x81, i8 u0xfd, i8 u0xee, i8 u0x03, i8 u0x42, i8 u0x7a, i8 u0x5c, i8 u0xbc ], ; module_uuid: 624d5734-5770-4104-81fd-ee03427a5cbc
		i32 9, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module14_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.14_assembly_name, ; assembly_name: Microsoft.Maui.Essentials
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 14
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x34, i8 u0x71, i8 u0x4d, i8 u0x83, i8 u0x87, i8 u0x4e, i8 u0x35, i8 u0x47, i8 u0xb6, i8 u0xab, i8 u0x0a, i8 u0xd1, i8 u0x33, i8 u0xbd, i8 u0x94, i8 u0x7e ], ; module_uuid: 834d7134-4e87-4735-b6ab-0ad133bd947e
		i32 3, ; uint32_t entry_count
		i32 2, ; uint32_t duplicate_count
		ptr @module15_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module15_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.15_assembly_name, ; assembly_name: Xamarin.AndroidX.Camera.Extensions
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 15
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x35, i8 u0x26, i8 u0xbb, i8 u0x64, i8 u0xd1, i8 u0xe5, i8 u0xdb, i8 u0x48, i8 u0xb1, i8 u0xed, i8 u0x23, i8 u0x41, i8 u0x57, i8 u0x20, i8 u0x15, i8 u0xc3 ], ; module_uuid: 64bb2635-e5d1-48db-b1ed-2341572015c3
		i32 6, ; uint32_t entry_count
		i32 3, ; uint32_t duplicate_count
		ptr @module16_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module16_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.16_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.Common.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 16
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x35, i8 u0x94, i8 u0xa4, i8 u0x9d, i8 u0xbe, i8 u0x3b, i8 u0xdc, i8 u0x49, i8 u0xa1, i8 u0x8b, i8 u0xd4, i8 u0x8f, i8 u0x9e, i8 u0x36, i8 u0x8f, i8 u0x51 ], ; module_uuid: 9da49435-3bbe-49dc-a18b-d48f9e368f51
		i32 25, ; uint32_t entry_count
		i32 19, ; uint32_t duplicate_count
		ptr @module17_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module17_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.17_assembly_name, ; assembly_name: Xamarin.Kotlin.StdLib
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 17
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x37, i8 u0xd5, i8 u0x9b, i8 u0x4b, i8 u0x65, i8 u0xc8, i8 u0x8f, i8 u0x46, i8 u0xa4, i8 u0x31, i8 u0x59, i8 u0x27, i8 u0xd2, i8 u0xca, i8 u0x18, i8 u0x1e ], ; module_uuid: 4b9bd537-c865-468f-a431-5927d2ca181e
		i32 6, ; uint32_t entry_count
		i32 2, ; uint32_t duplicate_count
		ptr @module18_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module18_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.18_assembly_name, ; assembly_name: Xamarin.AndroidX.Media3.DataSource
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 18
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x42, i8 u0x2e, i8 u0xb0, i8 u0x3d, i8 u0x52, i8 u0x64, i8 u0x54, i8 u0x47, i8 u0x8c, i8 u0x42, i8 u0xfa, i8 u0x26, i8 u0x8c, i8 u0xfa, i8 u0x4e, i8 u0x96 ], ; module_uuid: 3db02e42-6452-4754-8c42-fa268cfa4e96
		i32 2, ; uint32_t entry_count
		i32 2, ; uint32_t duplicate_count
		ptr @module19_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module19_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.19_assembly_name, ; assembly_name: Xamarin.AndroidX.VersionedParcelable
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 19
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x42, i8 u0x3c, i8 u0x2c, i8 u0x0b, i8 u0x23, i8 u0x43, i8 u0x56, i8 u0x40, i8 u0xa8, i8 u0x6e, i8 u0x2a, i8 u0x37, i8 u0xe6, i8 u0xc8, i8 u0xde, i8 u0x89 ], ; module_uuid: 0b2c3c42-4323-4056-a86e-2a37e6c8de89
		i32 2, ; uint32_t entry_count
		i32 2, ; uint32_t duplicate_count
		ptr @module20_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module20_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.20_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.LiveData.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 20
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x42, i8 u0xad, i8 u0xa6, i8 u0xc7, i8 u0x16, i8 u0x5d, i8 u0x3a, i8 u0x43, i8 u0xb6, i8 u0xb6, i8 u0x3f, i8 u0x82, i8 u0x13, i8 u0x06, i8 u0xf0, i8 u0x91 ], ; module_uuid: c7a6ad42-5d16-433a-b6b6-3f821306f091
		i32 4, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module21_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module21_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.21_assembly_name, ; assembly_name: Xamarin.AndroidX.DrawerLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 21
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x45, i8 u0x71, i8 u0x4a, i8 u0x7e, i8 u0x7e, i8 u0x31, i8 u0x8c, i8 u0x47, i8 u0xb0, i8 u0x19, i8 u0xfb, i8 u0x8e, i8 u0x6b, i8 u0x97, i8 u0x4d, i8 u0x8a ], ; module_uuid: 7e4a7145-317e-478c-b019-fb8e6b974d8a
		i32 4, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module22_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.22_assembly_name, ; assembly_name: CommunityToolkit.Maui.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 22
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x4d, i8 u0xbf, i8 u0x0e, i8 u0xb7, i8 u0x69, i8 u0xb8, i8 u0x64, i8 u0x46, i8 u0xb6, i8 u0xc3, i8 u0x54, i8 u0x65, i8 u0x40, i8 u0xb9, i8 u0x74, i8 u0x3e ], ; module_uuid: b70ebf4d-b869-4664-b6c3-546540b9743e
		i32 4, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module23_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module23_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.23_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.UI
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 23
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x4e, i8 u0xc8, i8 u0x5c, i8 u0x41, i8 u0xaa, i8 u0xd0, i8 u0xd6, i8 u0x41, i8 u0x85, i8 u0xeb, i8 u0xc3, i8 u0xcc, i8 u0x9c, i8 u0xc9, i8 u0xd2, i8 u0x14 ], ; module_uuid: 415cc84e-d0aa-41d6-85eb-c3cc9cc9d214
		i32 93, ; uint32_t entry_count
		i32 26, ; uint32_t duplicate_count
		ptr @module24_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module24_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.24_assembly_name, ; assembly_name: Xamarin.AndroidX.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 24
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x59, i8 u0x0f, i8 u0x29, i8 u0x6c, i8 u0x90, i8 u0x2f, i8 u0x8c, i8 u0x4f, i8 u0x81, i8 u0xa0, i8 u0x9f, i8 u0x29, i8 u0x00, i8 u0x2c, i8 u0x69, i8 u0xbc ], ; module_uuid: 6c290f59-2f90-4f8c-81a0-9f29002c69bc
		i32 5, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module25_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.25_assembly_name, ; assembly_name: CommunityToolkit.Maui.MediaElement
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 25
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x61, i8 u0x14, i8 u0xd4, i8 u0x52, i8 u0x58, i8 u0x89, i8 u0x8c, i8 u0x4b, i8 u0x83, i8 u0x4b, i8 u0xe8, i8 u0x5b, i8 u0x2a, i8 u0x0d, i8 u0xa8, i8 u0x40 ], ; module_uuid: 52d41461-8958-4b8c-834b-e85b2a0da840
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module26_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.26_assembly_name, ; assembly_name: Xamarin.AndroidX.CardView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 26
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x64, i8 u0x1b, i8 u0x70, i8 u0xd7, i8 u0x92, i8 u0x05, i8 u0x1c, i8 u0x48, i8 u0x8b, i8 u0x9b, i8 u0x53, i8 u0x05, i8 u0x23, i8 u0x2f, i8 u0x0e, i8 u0x05 ], ; module_uuid: d7701b64-0592-481c-8b9b-5305232f0e05
		i32 10, ; uint32_t entry_count
		i32 2, ; uint32_t duplicate_count
		ptr @module27_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module27_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.27_assembly_name, ; assembly_name: Xamarin.AndroidX.Camera.View
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 27
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x69, i8 u0xa8, i8 u0x6e, i8 u0x02, i8 u0x66, i8 u0xd7, i8 u0x69, i8 u0x49, i8 u0x81, i8 u0xe8, i8 u0x0c, i8 u0xf2, i8 u0x35, i8 u0x09, i8 u0x04, i8 u0x53 ], ; module_uuid: 026ea869-d766-4969-81e8-0cf235090453
		i32 1, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module28_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module28_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.28_assembly_name, ; assembly_name: Xamarin.AndroidX.CustomView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 28
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x6a, i8 u0x83, i8 u0x45, i8 u0x7c, i8 u0xb5, i8 u0x70, i8 u0xe3, i8 u0x4e, i8 u0x80, i8 u0x3b, i8 u0x5b, i8 u0x52, i8 u0xd4, i8 u0xa5, i8 u0xe7, i8 u0x38 ], ; module_uuid: 7c45836a-70b5-4ee3-803b-5b52d4a5e738
		i32 20, ; uint32_t entry_count
		i32 6, ; uint32_t duplicate_count
		ptr @module29_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module29_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.29_assembly_name, ; assembly_name: Xamarin.AndroidX.Camera.Video
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 29
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x6b, i8 u0xb9, i8 u0xb5, i8 u0x82, i8 u0xb6, i8 u0x31, i8 u0x64, i8 u0x49, i8 u0x99, i8 u0xde, i8 u0x06, i8 u0x2b, i8 u0xba, i8 u0xd2, i8 u0xe1, i8 u0xd3 ], ; module_uuid: 82b5b96b-31b6-4964-99de-062bbad2e1d3
		i32 3, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module30_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module30_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.30_assembly_name, ; assembly_name: Xamarin.AndroidX.CoordinatorLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 30
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x6e, i8 u0xce, i8 u0xf0, i8 u0x8f, i8 u0x1c, i8 u0x9b, i8 u0x3a, i8 u0x47, i8 u0x97, i8 u0xda, i8 u0x2b, i8 u0x0d, i8 u0x66, i8 u0x0f, i8 u0x7c, i8 u0x4c ], ; module_uuid: 8ff0ce6e-9b1c-473a-97da-2b0d660f7c4c
		i32 71, ; uint32_t entry_count
		i32 13, ; uint32_t duplicate_count
		ptr @module31_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module31_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.31_assembly_name, ; assembly_name: Xamarin.AndroidX.Media3.Common
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 31
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x6e, i8 u0xf7, i8 u0x0a, i8 u0x9c, i8 u0x0d, i8 u0x9c, i8 u0xc2, i8 u0x43, i8 u0x83, i8 u0xd9, i8 u0xb6, i8 u0x5c, i8 u0x88, i8 u0x78, i8 u0xd8, i8 u0x5e ], ; module_uuid: 9c0af76e-9c0d-43c2-83d9-b65c8878d85e
		i32 193, ; uint32_t entry_count
		i32 111, ; uint32_t duplicate_count
		ptr @module32_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module32_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.32_assembly_name, ; assembly_name: Xamarin.AndroidX.Camera.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 32
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x74, i8 u0x75, i8 u0x4e, i8 u0x7d, i8 u0xb5, i8 u0x00, i8 u0x9d, i8 u0x4c, i8 u0xb7, i8 u0xa2, i8 u0xde, i8 u0xb2, i8 u0xbd, i8 u0xb6, i8 u0x81, i8 u0xec ], ; module_uuid: 7d4e7574-00b5-4c9d-b7a2-deb2bdb681ec
		i32 1, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module33_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module33_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.33_assembly_name, ; assembly_name: Xamarin.Google.Guava.ListenableFuture
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 33
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x7b, i8 u0x14, i8 u0xf5, i8 u0xf5, i8 u0xf7, i8 u0xd4, i8 u0x90, i8 u0x41, i8 u0xaa, i8 u0x79, i8 u0x43, i8 u0x58, i8 u0x33, i8 u0x63, i8 u0xc6, i8 u0x39 ], ; module_uuid: f5f5147b-d4f7-4190-aa79-43583363c639
		i32 17, ; uint32_t entry_count
		i32 6, ; uint32_t duplicate_count
		ptr @module34_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module34_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.34_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Common
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 34
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x80, i8 u0x67, i8 u0xec, i8 u0xbd, i8 u0x6e, i8 u0x95, i8 u0x7c, i8 u0x45, i8 u0xa8, i8 u0x20, i8 u0xe5, i8 u0x08, i8 u0x36, i8 u0x2f, i8 u0x53, i8 u0xa3 ], ; module_uuid: bdec6780-956e-457c-a820-e508362f53a3
		i32 2, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module35_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.35_assembly_name, ; assembly_name: Gym
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 35
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x89, i8 u0xa3, i8 u0xc4, i8 u0xa8, i8 u0x3a, i8 u0x36, i8 u0x04, i8 u0x44, i8 u0x83, i8 u0x41, i8 u0x93, i8 u0x56, i8 u0xfc, i8 u0x26, i8 u0x97, i8 u0x94 ], ; module_uuid: a8c4a389-363a-4404-8341-9356fc269794
		i32 10, ; uint32_t entry_count
		i32 9, ; uint32_t duplicate_count
		ptr @module36_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module36_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.36_assembly_name, ; assembly_name: Xamarin.KotlinX.Serialization.Core.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 36
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x8f, i8 u0x57, i8 u0x10, i8 u0xc8, i8 u0xa7, i8 u0x64, i8 u0x96, i8 u0x4f, i8 u0x9b, i8 u0x49, i8 u0xfe, i8 u0xb5, i8 u0x6a, i8 u0x10, i8 u0x9f, i8 u0xa8 ], ; module_uuid: c810578f-64a7-4f96-9b49-feb56a109fa8
		i32 55, ; uint32_t entry_count
		i32 19, ; uint32_t duplicate_count
		ptr @module37_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module37_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.37_assembly_name, ; assembly_name: Xamarin.AndroidX.AppCompat
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 37
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x90, i8 u0xde, i8 u0x4f, i8 u0x7b, i8 u0xd8, i8 u0xb9, i8 u0x1f, i8 u0x4d, i8 u0xbf, i8 u0x25, i8 u0x97, i8 u0x09, i8 u0x3c, i8 u0xc7, i8 u0xeb, i8 u0x98 ], ; module_uuid: 7b4fde90-b9d8-4d1f-bf25-97093cc7eb98
		i32 1, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module38_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module38_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.38_assembly_name, ; assembly_name: Xamarin.AndroidX.CursorAdapter
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 38
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x99, i8 u0x7a, i8 u0x6e, i8 u0x8a, i8 u0xf5, i8 u0xe1, i8 u0x6b, i8 u0x47, i8 u0x89, i8 u0x9d, i8 u0x08, i8 u0xd5, i8 u0xff, i8 u0x6d, i8 u0x44, i8 u0x7e ], ; module_uuid: 8a6e7a99-e1f5-476b-899d-08d5ff6d447e
		i32 4, ; uint32_t entry_count
		i32 3, ; uint32_t duplicate_count
		ptr @module39_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module39_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.39_assembly_name, ; assembly_name: Xamarin.AndroidX.Media3.Extractor
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 39
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xaa, i8 u0xe3, i8 u0x72, i8 u0x9d, i8 u0x51, i8 u0xd7, i8 u0xe1, i8 u0x4f, i8 u0xbc, i8 u0x1c, i8 u0x76, i8 u0xc0, i8 u0x59, i8 u0xb2, i8 u0xba, i8 u0xa1 ], ; module_uuid: 9d72e3aa-d751-4fe1-bc1c-76c059b2baa1
		i32 638, ; uint32_t entry_count
		i32 245, ; uint32_t duplicate_count
		ptr @module40_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module40_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.40_assembly_name, ; assembly_name: Mono.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 40
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xab, i8 u0x3c, i8 u0xc1, i8 u0x65, i8 u0x62, i8 u0x6f, i8 u0x2e, i8 u0x49, i8 u0x8f, i8 u0xc0, i8 u0xe0, i8 u0x87, i8 u0xf0, i8 u0xf5, i8 u0xe5, i8 u0xaa ], ; module_uuid: 65c13cab-6f62-492e-8fc0-e087f0f5e5aa
		i32 85, ; uint32_t entry_count
		i32 55, ; uint32_t duplicate_count
		ptr @module41_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module41_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.41_assembly_name, ; assembly_name: Xamarin.AndroidX.Media3.ExoPlayer
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 41
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xb3, i8 u0x2f, i8 u0xc6, i8 u0xc7, i8 u0x7e, i8 u0xb3, i8 u0xbe, i8 u0x44, i8 u0xb1, i8 u0x92, i8 u0xbb, i8 u0xd1, i8 u0xfd, i8 u0x3d, i8 u0x80, i8 u0x51 ], ; module_uuid: c7c62fb3-b37e-44be-b192-bbd1fd3d8051
		i32 76, ; uint32_t entry_count
		i32 5, ; uint32_t duplicate_count
		ptr @module42_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module42_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.42_assembly_name, ; assembly_name: Microsoft.Maui
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 42
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xb3, i8 u0xae, i8 u0xa1, i8 u0xd4, i8 u0x6f, i8 u0xde, i8 u0xc6, i8 u0x4a, i8 u0x9f, i8 u0x19, i8 u0xb8, i8 u0x22, i8 u0x9d, i8 u0x02, i8 u0xd0, i8 u0xae ], ; module_uuid: d4a1aeb3-de6f-4ac6-9f19-b8229d02d0ae
		i32 2, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module43_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module43_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.43_assembly_name, ; assembly_name: Xamarin.AndroidX.SavedState.SavedState.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 43
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xbb, i8 u0x3b, i8 u0x62, i8 u0xfc, i8 u0xd5, i8 u0x35, i8 u0x68, i8 u0x44, i8 u0xb8, i8 u0xaa, i8 u0xb4, i8 u0xec, i8 u0x67, i8 u0xd8, i8 u0x44, i8 u0x24 ], ; module_uuid: fc623bbb-35d5-4468-b8aa-b4ec67d84424
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module44_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.44_assembly_name, ; assembly_name: SkiaSharp.Views.Maui.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 44
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xbc, i8 u0xd5, i8 u0x77, i8 u0x5e, i8 u0x2e, i8 u0x9d, i8 u0xca, i8 u0x40, i8 u0xa4, i8 u0x16, i8 u0x86, i8 u0x4f, i8 u0x41, i8 u0x73, i8 u0xaa, i8 u0x7a ], ; module_uuid: 5e77d5bc-9d2e-40ca-a416-864f4173aa7a
		i32 10, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module45_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.45_assembly_name, ; assembly_name: SkiaSharp.Views.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 45
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xbd, i8 u0x7f, i8 u0x23, i8 u0x34, i8 u0x49, i8 u0xa2, i8 u0x8d, i8 u0x46, i8 u0xa0, i8 u0xa0, i8 u0xfc, i8 u0x70, i8 u0xa5, i8 u0xc9, i8 u0xe3, i8 u0x15 ], ; module_uuid: 34237fbd-a249-468d-a0a0-fc70a5c9e315
		i32 107, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module46_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.46_assembly_name, ; assembly_name: Microsoft.Maui.Controls
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 46
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xc9, i8 u0x89, i8 u0xb7, i8 u0x03, i8 u0x62, i8 u0x4e, i8 u0xd2, i8 u0x42, i8 u0x98, i8 u0x80, i8 u0x73, i8 u0x2f, i8 u0x38, i8 u0x4b, i8 u0x63, i8 u0xce ], ; module_uuid: 03b789c9-4e62-42d2-9880-732f384b63ce
		i32 13, ; uint32_t entry_count
		i32 6, ; uint32_t duplicate_count
		ptr @module47_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module47_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.47_assembly_name, ; assembly_name: Xamarin.AndroidX.Activity
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 47
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xdb, i8 u0x47, i8 u0xde, i8 u0xbe, i8 u0x66, i8 u0x30, i8 u0x2e, i8 u0x4a, i8 u0x90, i8 u0x3e, i8 u0x6f, i8 u0x49, i8 u0x4d, i8 u0x31, i8 u0xa9, i8 u0xad ], ; module_uuid: bede47db-3066-4a2e-903e-6f494d31a9ad
		i32 23, ; uint32_t entry_count
		i32 9, ; uint32_t duplicate_count
		ptr @module48_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module48_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.48_assembly_name, ; assembly_name: Xamarin.AndroidX.Media3.Ui
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 48
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xdc, i8 u0x0c, i8 u0x70, i8 u0x90, i8 u0x0f, i8 u0x23, i8 u0x9c, i8 u0x43, i8 u0x96, i8 u0xfc, i8 u0xd6, i8 u0xaa, i8 u0x65, i8 u0x49, i8 u0xad, i8 u0xe0 ], ; module_uuid: 90700cdc-230f-439c-96fc-d6aa6549ade0
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module49_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.49_assembly_name, ; assembly_name: Xamarin.AndroidX.Camera.Lifecycle
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 49
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xe0, i8 u0x64, i8 u0x03, i8 u0x6b, i8 u0x82, i8 u0xf1, i8 u0xbf, i8 u0x4f, i8 u0xba, i8 u0x57, i8 u0xd7, i8 u0xea, i8 u0x07, i8 u0x0f, i8 u0x0a, i8 u0x81 ], ; module_uuid: 6b0364e0-f182-4fbf-ba57-d7ea070f0a81
		i32 7, ; uint32_t entry_count
		i32 5, ; uint32_t duplicate_count
		ptr @module50_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module50_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.50_assembly_name, ; assembly_name: Xamarin.AndroidX.ViewPager2
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 50
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xea, i8 u0x57, i8 u0xa3, i8 u0x3b, i8 u0x6f, i8 u0xf7, i8 u0xe9, i8 u0x42, i8 u0x99, i8 u0x5a, i8 u0x0e, i8 u0xde, i8 u0xf8, i8 u0x98, i8 u0x62, i8 u0xe8 ], ; module_uuid: 3ba357ea-f76f-42e9-995a-0edef89862e8
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module51_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.51_assembly_name, ; assembly_name: Xamarin.AndroidX.Collection.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 51
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xef, i8 u0xc7, i8 u0xdf, i8 u0x8c, i8 u0x74, i8 u0xed, i8 u0x9e, i8 u0x4d, i8 u0xb3, i8 u0x03, i8 u0xd2, i8 u0x39, i8 u0x3e, i8 u0xbb, i8 u0x01, i8 u0xa4 ], ; module_uuid: 8cdfc7ef-ed74-4d9e-b303-d2393ebb01a4
		i32 24, ; uint32_t entry_count
		i32 9, ; uint32_t duplicate_count
		ptr @module52_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module52_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.52_assembly_name, ; assembly_name: Xamarin.AndroidX.Media
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 52
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xef, i8 u0xd9, i8 u0x5d, i8 u0xcb, i8 u0xd7, i8 u0x29, i8 u0x42, i8 u0x4f, i8 u0x88, i8 u0xe4, i8 u0x5c, i8 u0xed, i8 u0xf2, i8 u0xea, i8 u0xf3, i8 u0xa2 ], ; module_uuid: cb5dd9ef-29d7-4f42-88e4-5cedf2eaf3a2
		i32 4, ; uint32_t entry_count
		i32 2, ; uint32_t duplicate_count
		ptr @module53_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module53_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.53_assembly_name, ; assembly_name: Xamarin.AndroidX.SwipeRefreshLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 53
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xf3, i8 u0xb1, i8 u0x28, i8 u0xc8, i8 u0x89, i8 u0xd4, i8 u0x12, i8 u0x40, i8 u0x9a, i8 u0x94, i8 u0x05, i8 u0x3f, i8 u0x5b, i8 u0x9c, i8 u0xa9, i8 u0x2b ], ; module_uuid: c828b1f3-d489-4012-9a94-053f5b9ca92b
		i32 67, ; uint32_t entry_count
		i32 25, ; uint32_t duplicate_count
		ptr @module54_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module54_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.54_assembly_name, ; assembly_name: Xamarin.Google.Android.Material
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 54
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xf4, i8 u0x39, i8 u0xdf, i8 u0xb6, i8 u0xe7, i8 u0xc3, i8 u0xaa, i8 u0x45, i8 u0xa6, i8 u0x7b, i8 u0x48, i8 u0xa9, i8 u0x63, i8 u0x90, i8 u0xc3, i8 u0xba ], ; module_uuid: b6df39f4-c3e7-45aa-a67b-48a96390c3ba
		i32 5, ; uint32_t entry_count
		i32 4, ; uint32_t duplicate_count
		ptr @module55_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module55_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.55_assembly_name, ; assembly_name: Xamarin.AndroidX.Loader
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 55
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xff, i8 u0x70, i8 u0x1b, i8 u0x41, i8 u0x4f, i8 u0x1a, i8 u0x8a, i8 u0x4a, i8 u0xbe, i8 u0x9b, i8 u0x5e, i8 u0x91, i8 u0xe3, i8 u0x19, i8 u0x32, i8 u0x8b ], ; module_uuid: 411b70ff-1a4f-4a8a-be9b-5e91e319328b
		i32 4, ; uint32_t entry_count
		i32 2, ; uint32_t duplicate_count
		ptr @module56_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module56_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.56_assembly_name, ; assembly_name: Xamarin.AndroidX.Media3.Decoder
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	} ; 56
], align 8

; Java types name hashes
@map_java_hashes = dso_local local_unnamed_addr constant [1783 x i64] [
	i64 u0x00063287e4c20d8e, ; 0 => android/widget/AbsListView$OnScrollListener
	i64 u0x00372cd76802b508, ; 1 => com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener
	i64 u0x003c2f2533bfd233, ; 2 => androidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl
	i64 u0x0054e7b33c6d2262, ; 3 => com/google/android/material/bottomnavigation/BottomNavigationView
	i64 u0x00acd1e6ad3a3aeb, ; 4 => androidx/core/view/autofill/AutofillIdCompat
	i64 u0x00dc93999daef2c7, ; 5 => android/opengl/GLES20
	i64 u0x00ffb6d1022738b7, ; 6 => mono/androidx/media3/ui/PlayerControlView_ProgressUpdateListenerImplementor
	i64 u0x013d70f30586d278, ; 7 => javax/net/ssl/KeyManagerFactory
	i64 u0x017c0bbcb46cf6dd, ; 8 => android/widget/AutoCompleteTextView
	i64 u0x01a16e6c243bd5d5, ; 9 => mono/com/google/android/material/navigation/NavigationBarView_OnItemSelectedListenerImplementor
	i64 u0x01afc15612f0c88a, ; 10 => com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy
	i64 u0x01beb04ccd88502c, ; 11 => java/util/ListIterator
	i64 u0x01cd624f1e38cc9f, ; 12 => java/lang/Byte
	i64 u0x020b1cbd9e125d93, ; 13 => crc645d80431ce5f73f11/SimpleViewHolder
	i64 u0x0269690ed0cda1bb, ; 14 => androidx/camera/core/UseCaseGroup
	i64 u0x0286e891cbd384d2, ; 15 => crc640ec207abc449b2ca/ShellSearchView
	i64 u0x029aacc15981bb25, ; 16 => androidx/camera/core/impl/ImageOutputConfig$Builder
	i64 u0x02e426fc27cd6822, ; 17 => android/provider/MediaStore$Images$Media
	i64 u0x02fa9e9fbdae4453, ; 18 => androidx/media3/exoplayer/source/MediaSource
	i64 u0x0304e457b1d15194, ; 19 => android/view/ViewGroup$MarginLayoutParams
	i64 u0x0318f6ff5c94fca0, ; 20 => androidx/navigation/NavDeepLinkBuilder
	i64 u0x0322801148f8b287, ; 21 => androidx/activity/result/contract/ActivityResultContract$SynchronousResult
	i64 u0x037731c75e68ea16, ; 22 => androidx/media3/ui/PlayerNotificationManager
	i64 u0x038672c69e50c36b, ; 23 => mono/androidx/media3/ui/PlayerView_FullscreenButtonClickListenerImplementor
	i64 u0x03888e1bfbb716d2, ; 24 => androidx/camera/core/Preview$Builder
	i64 u0x039cf4bd2e780e2e, ; 25 => android/hardware/camera2/CaptureResult
	i64 u0x03b201bf817739ef, ; 26 => java/util/TimerTask
	i64 u0x03cc98b851d4262c, ; 27 => javax/net/ssl/SSLContext
	i64 u0x03f56d812a81b5af, ; 28 => androidx/camera/camera2/interop/Camera2CameraInfo
	i64 u0x04028253532cfc4f, ; 29 => androidx/camera/core/FocusMeteringAction
	i64 u0x04048be4ab87bfe3, ; 30 => com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior
	i64 u0x041aa4da751eea19, ; 31 => android/text/style/CharacterStyle
	i64 u0x043fe0b8a9505a15, ; 32 => androidx/media3/datasource/StatsDataSource
	i64 u0x04460a618d4ff86c, ; 33 => androidx/camera/core/impl/CaptureStage
	i64 u0x0482c56099de3260, ; 34 => crc64f1558ff7e185dbfc/CameraConsumer
	i64 u0x04a9190501fc149a, ; 35 => java/lang/reflect/AccessibleObject
	i64 u0x04aa67fbc8dd2433, ; 36 => androidx/core/app/NotificationCompat$Extender
	i64 u0x052f7633c840a026, ; 37 => mono/androidx/appcompat/widget/SearchView_OnCloseListenerImplementor
	i64 u0x0577cfd0edc0d47c, ; 38 => android/view/View$OnFocusChangeListener
	i64 u0x05dce036569f9c03, ; 39 => androidx/lifecycle/LiveData
	i64 u0x064398dcdfbb50f1, ; 40 => androidx/media3/exoplayer/ExoPlayer$Builder
	i64 u0x0659c464b2333455, ; 41 => androidx/media3/exoplayer/drm/DrmSessionManager
	i64 u0x066fec6884ed4725, ; 42 => androidx/camera/core/internal/TargetConfig$Builder
	i64 u0x067b9514e9165133, ; 43 => crc64fcf28c0e24b4cc31/ButtonHandler_ButtonClickListener
	i64 u0x06beeb4b87f89e85, ; 44 => androidx/camera/core/impl/ImageCaptureConfig
	i64 u0x06c347d38116f240, ; 45 => android/content/res/TypedArray
	i64 u0x06f84afe4273c430, ; 46 => java/net/InetSocketAddress
	i64 u0x0739ad5d57f8f5c2, ; 47 => androidx/appcompat/widget/AppCompatImageView
	i64 u0x07ccfc99029994fb, ; 48 => androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo
	i64 u0x07ede16120373a51, ; 49 => androidx/appcompat/view/menu/SubMenuBuilder
	i64 u0x08394b4c787c1bf1, ; 50 => androidx/media3/common/PlaybackParameters
	i64 u0x083e83bb2321dd50, ; 51 => java/util/Random
	i64 u0x084bde0945f24428, ; 52 => androidx/navigation/fragment/FragmentNavigator$Destination
	i64 u0x087fb80a227e5598, ; 53 => android/view/OrientationEventListener
	i64 u0x08a42baeef438c2d, ; 54 => android/util/Xml
	i64 u0x08ba5597603eed52, ; 55 => androidx/core/view/WindowInsetsAnimationControlListenerCompat
	i64 u0x08ba574314f0d92f, ; 56 => androidx/media3/ui/PlayerNotificationManager$CustomActionReceiver
	i64 u0x08eea657702d1601, ; 57 => android/support/v4/media/session/IMediaSession
	i64 u0x0905261267c34df0, ; 58 => mono/android/content/DialogInterface_OnShowListenerImplementor
	i64 u0x0905c939c5c353ad, ; 59 => android/media/MediaCodec$CryptoInfo
	i64 u0x09470e9f9ec79397, ; 60 => androidx/media3/common/DataReader
	i64 u0x094bbc5afd8d66c7, ; 61 => com/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback
	i64 u0x0951205f5030ed75, ; 62 => androidx/media3/common/MediaItem$LiveConfiguration$Builder
	i64 u0x0956b57f28527f95, ; 63 => androidx/camera/view/CameraController
	i64 u0x097de261c1c905b7, ; 64 => androidx/camera/core/impl/utils/ExifData$Builder
	i64 u0x09ad329622f1f7c1, ; 65 => crc64d6358e7bf64fbac4/SpeechToTextImplementation_SpeechRecognitionListener
	i64 u0x09b247fe94b37abd, ; 66 => mono/android/view/animation/Animation_AnimationListenerImplementor
	i64 u0x09c0cbf163a68d1f, ; 67 => androidx/media3/exoplayer/ExoPlaybackException
	i64 u0x09df54a3005226e6, ; 68 => crc640ec207abc449b2ca/ContainerView
	i64 u0x09f386b034c10e2a, ; 69 => java/util/function/IntFunction
	i64 u0x0a02206550897431, ; 70 => androidx/camera/core/impl/CameraConfig
	i64 u0x0a0991adfec5ebd3, ; 71 => mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor
	i64 u0x0a364502506e12a9, ; 72 => android/os/CancellationSignal
	i64 u0x0a49aab6fb8903b8, ; 73 => android/app/ActionBar
	i64 u0x0a8602f2e894a9bc, ; 74 => crc64e1fb321c08285b90/ListViewAdapter
	i64 u0x0a8a26238002df46, ; 75 => crc6452ffdc5b34af3a0f/MauiScrollView
	i64 u0x0aa70144f896de4d, ; 76 => androidx/camera/video/Recording
	i64 u0x0ab77b7a4f03d9cf, ; 77 => android/widget/Adapter
	i64 u0x0ae9a45d3876fa01, ; 78 => androidx/media3/common/Timeline$Window
	i64 u0x0af6bbc9a990389a, ; 79 => androidx/recyclerview/widget/RecyclerView$ViewCacheExtension
	i64 u0x0afd27aa8152045b, ; 80 => androidx/media3/exoplayer/trackselection/TrackSelection
	i64 u0x0b0564f1b7e44272, ; 81 => crc6452ffdc5b34af3a0f/StackNavigationManager_Callbacks
	i64 u0x0b1da699fb29019a, ; 82 => android/os/BaseBundle
	i64 u0x0b6d47b337d450b1, ; 83 => androidx/lifecycle/viewmodel/ViewModelInitializer
	i64 u0x0b821ae2cca6f82f, ; 84 => android/content/DialogInterface$OnCancelListener
	i64 u0x0b95dc6056abf25b, ; 85 => android/widget/FrameLayout
	i64 u0x0c0a7525da1b8186, ; 86 => android/view/TextureView$SurfaceTextureListener
	i64 u0x0c3d9d1dbb97f92b, ; 87 => androidx/camera/core/impl/ImageReaderProxy
	i64 u0x0c44130caa233945, ; 88 => mono/android/runtime/JavaObject
	i64 u0x0c6bd98168627900, ; 89 => android/text/InputFilter
	i64 u0x0c85b86a8e0eff58, ; 90 => com/google/android/material/appbar/HeaderBehavior
	i64 u0x0caa0280513fecae, ; 91 => mono/androidx/media3/ui/PlayerView_ControllerVisibilityListenerImplementor
	i64 u0x0d60fa8ae40e8335, ; 92 => androidx/media3/common/AdPlaybackState
	i64 u0x0d9335f0988cd796, ; 93 => java/util/HashMap
	i64 u0x0d9e37c6bdb77f79, ; 94 => crc645d80431ce5f73f11/SimpleItemTouchHelperCallback
	i64 u0x0da352f5feff0b27, ; 95 => androidx/camera/core/impl/SessionConfig$OptionUnpacker
	i64 u0x0de59e8e7a0af0d1, ; 96 => androidx/media3/exoplayer/PlayerMessage
	i64 u0x0e38d8eb3df32a4b, ; 97 => com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener
	i64 u0x0e4646a9652b340f, ; 98 => androidx/camera/core/impl/UseCaseConfigFactory$CaptureType
	i64 u0x0e69182a0612bdd6, ; 99 => android/content/DialogInterface$OnDismissListener
	i64 u0x0ec3cd3f9f5973bd, ; 100 => android/graphics/drawable/GradientDrawable$Orientation
	i64 u0x0ed9459c549526c1, ; 101 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat
	i64 u0x0eda567aa6841ee4, ; 102 => android/graphics/Region$Op
	i64 u0x0ee5ee864926cdee, ; 103 => android/graphics/Path$FillType
	i64 u0x0f17a8f7ec719595, ; 104 => com/google/android/material/tabs/TabLayout$TabView
	i64 u0x0f3fd32f189104c9, ; 105 => com/google/android/material/appbar/ViewOffsetBehavior
	i64 u0x0f76e24fc1b42556, ; 106 => android/text/SpannableStringInternal
	i64 u0x0fa370d3e9adf34e, ; 107 => androidx/camera/core/resolutionselector/ResolutionStrategy
	i64 u0x0fbb00760377c24f, ; 108 => kotlinx/coroutines/flow/FlowCollector
	i64 u0x0fbc66cd2b1b4e77, ; 109 => androidx/recyclerview/widget/ItemTouchHelper
	i64 u0x0fbd1a2d794a9718, ; 110 => android/widget/ListAdapter
	i64 u0x0fc3f48bd51825ba, ; 111 => androidx/recyclerview/widget/LinearSnapHelper
	i64 u0x0fde55aa845991e2, ; 112 => android/graphics/drawable/Drawable$ConstantState
	i64 u0x0fdf6e61cfd83719, ; 113 => crc64fcf28c0e24b4cc31/ButtonHandler_ButtonTouchListener
	i64 u0x1014bd1f67aeb8ec, ; 114 => crc64e1fb321c08285b90/ListViewRenderer_SwipeRefreshLayoutWithFixedNestedScrolling
	i64 u0x102731205d6f1f1c, ; 115 => android/graphics/Path
	i64 u0x1027f59a6444be04, ; 116 => android/support/v4/media/session/MediaSessionCompat$QueueItem
	i64 u0x103d8579c39974d7, ; 117 => androidx/core/view/DisplayCutoutCompat
	i64 u0x1050b555cc009f77, ; 118 => crc6452ffdc5b34af3a0f/MauiSwipeView
	i64 u0x106be7c89662702e, ; 119 => java/net/Proxy$Type
	i64 u0x107b4c2c21d9edc5, ; 120 => android/os/PersistableBundle
	i64 u0x109c056c6dd543bd, ; 121 => crc6452ffdc5b34af3a0f/MauiMaterialButton_MauiResizableDrawable
	i64 u0x10c9b82608fa3cb1, ; 122 => crc64b5e713d400f589b7/MauiDrawable
	i64 u0x10cc64dc53558d33, ; 123 => android/content/ComponentName
	i64 u0x10e015905ca8bd0f, ; 124 => java/security/cert/Certificate
	i64 u0x10e1dea8929df694, ; 125 => android/graphics/drawable/DrawableContainer
	i64 u0x110217f9f8accd72, ; 126 => android/view/WindowInsetsController
	i64 u0x110441904b2da06c, ; 127 => androidx/camera/core/impl/ConfigProvider
	i64 u0x1129f447a445239d, ; 128 => crc64fcf28c0e24b4cc31/HybridWebViewHandler_HybridWebViewJavaScriptInterface
	i64 u0x11487815b4917a9b, ; 129 => javax/microedition/khronos/egl/EGLConfig
	i64 u0x11599992622f049a, ; 130 => androidx/media3/session/MediaSession$ControllerInfo
	i64 u0x116532ec07ee0771, ; 131 => java/security/spec/KeySpec
	i64 u0x116c2eefcbe49da3, ; 132 => crc645d80431ce5f73f11/SelectableItemsViewAdapter_2
	i64 u0x1180f07c8e6b509c, ; 133 => android/graphics/drawable/GradientDrawable
	i64 u0x11b3df35e5eac800, ; 134 => androidx/appcompat/app/ActionBar$OnNavigationListener
	i64 u0x11cef49ec24439a7, ; 135 => androidx/core/graphics/Insets
	i64 u0x11d17bb5232d3c3a, ; 136 => android/view/ContentInfo
	i64 u0x11ea3ec2f9841e81, ; 137 => android/view/View$OnLayoutChangeListener
	i64 u0x1236951d30f033b9, ; 138 => androidx/camera/core/impl/SurfaceSizeDefinition
	i64 u0x126fd2f9b666ff17, ; 139 => android/text/style/MetricAffectingSpan
	i64 u0x1280a30643599898, ; 140 => androidx/recyclerview/widget/SnapHelper
	i64 u0x12c273589e7bbe16, ; 141 => android/view/DragEvent
	i64 u0x12d291163c1f15a6, ; 142 => crc64e1fb321c08285b90/EntryCellView
	i64 u0x12d98d2a69fbf9c9, ; 143 => crc648e35430423bd4943/SKGLSurfaceViewRenderer
	i64 u0x12f689238a395eea, ; 144 => androidx/appcompat/widget/SearchView$OnSuggestionListener
	i64 u0x13325e9f8e28a522, ; 145 => mono/androidx/viewpager/widget/ViewPager_OnPageChangeListenerImplementor
	i64 u0x1344670b61795353, ; 146 => crc64159f3caeb1269279/MauiDrawingView
	i64 u0x134fb5354fb590b7, ; 147 => kotlin/reflect/KCallable
	i64 u0x1377bd48a9f09d19, ; 148 => androidx/recyclerview/widget/RecyclerView$OnScrollListener
	i64 u0x139c4260314b273d, ; 149 => android/app/Person
	i64 u0x13aea4afcf708268, ; 150 => android/os/ParcelFileDescriptor
	i64 u0x13be6b0dbad58d9c, ; 151 => crc64354973402314325c/CustomImageView
	i64 u0x13c953b8f2dde206, ; 152 => androidx/camera/view/internal/ScreenFlashUiInfo
	i64 u0x13e493cb2d624a36, ; 153 => android/support/v4/media/MediaMetadataCompat
	i64 u0x13e5902d3b855db6, ; 154 => javax/net/ssl/TrustManagerFactory
	i64 u0x13e7a20cea38d010, ; 155 => kotlin/reflect/KFunction
	i64 u0x146350135c295cb0, ; 156 => android/animation/Animator$AnimatorListener
	i64 u0x14967cd55ee6609b, ; 157 => android/graphics/BitmapShader
	i64 u0x14f54e7c28873e52, ; 158 => android/opengl/GLSurfaceView
	i64 u0x150e9f9d467462d4, ; 159 => java/io/RandomAccessFile
	i64 u0x1556d5a2db34c54b, ; 160 => crc64f5844edce43316e7/OnTouchListener
	i64 u0x15682bdd2dfb6d3f, ; 161 => android/widget/RemoteViews
	i64 u0x15771589264f32c6, ; 162 => java/util/List
	i64 u0x1644b711fd942b58, ; 163 => crc645d80431ce5f73f11/EdgeSnapHelper
	i64 u0x1667a4d6ac87c56f, ; 164 => android/os/Handler$Callback
	i64 u0x16698ccdb078d100, ; 165 => androidx/core/app/ActivityOptionsCompat
	i64 u0x167be582da7ac6ee, ; 166 => android/view/WindowInsetsController$OnControllableInsetsChangedListener
	i64 u0x16b07129ee36476e, ; 167 => android/os/PowerManager
	i64 u0x16c70a05a8455695, ; 168 => android/view/inputmethod/InputMethodManager
	i64 u0x16e14ff007911a7e, ; 169 => crc648e35430423bd4943/SKCanvasView
	i64 u0x17009b77da5ea197, ; 170 => androidx/media3/common/AudioAttributes$AudioAttributesV21
	i64 u0x1709693bced8b619, ; 171 => android/view/animation/Animation
	i64 u0x174604f06b155d44, ; 172 => androidx/core/app/NotificationCompat
	i64 u0x174ea3ac2a04b89b, ; 173 => android/support/v4/media/session/MediaSessionCompat
	i64 u0x1759b71b41bc5f1b, ; 174 => android/content/pm/PackageItemInfo
	i64 u0x1785a97d536b4bd2, ; 175 => androidx/camera/core/RetryPolicy$ExecutionState
	i64 u0x1786d279d508dd51, ; 176 => java/nio/FloatBuffer
	i64 u0x17948f96f25227f0, ; 177 => crc64f728827fec74e9c3/Toolbar_Container
	i64 u0x17a51fb2487819b2, ; 178 => mono/androidx/media3/ui/AspectRatioFrameLayout_AspectRatioListenerImplementor
	i64 u0x17baebf9734ef906, ; 179 => kotlinx/serialization/KSerializer
	i64 u0x17cf76dbdde2e271, ; 180 => androidx/media3/exoplayer/upstream/CmcdConfiguration$Factory
	i64 u0x17e1aa318b621d80, ; 181 => androidx/lifecycle/LifecycleOwner
	i64 u0x1830778aad99d496, ; 182 => androidx/lifecycle/ViewModelProvider
	i64 u0x1895f55b7520a32a, ; 183 => android/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo
	i64 u0x18c2a1de38f367ba, ; 184 => crc64e1fb321c08285b90/TableViewModelRenderer
	i64 u0x18cf457cebcdd8b2, ; 185 => androidx/media3/common/util/Clock
	i64 u0x190f07cff0012f30, ; 186 => crc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener
	i64 u0x193ea5b13d78ca47, ; 187 => androidx/appcompat/view/menu/MenuPresenter
	i64 u0x194a988ff977fd81, ; 188 => androidx/camera/core/impl/CaptureConfig
	i64 u0x1950fac852291891, ; 189 => android/view/WindowInsetsAnimationControlListener
	i64 u0x1968e455b9d932ad, ; 190 => java/lang/IncompatibleClassChangeError
	i64 u0x19b4dc48c58b018f, ; 191 => crc64ceb75e76f4b66147/MauiMediaElement
	i64 u0x19d574433f230d26, ; 192 => android/media/AudioDeviceInfo
	i64 u0x19e891785efa3793, ; 193 => android/support/v4/media/session/MediaControllerCompat$PlaybackInfo
	i64 u0x1a0754d23187e313, ; 194 => crc6479d6f9e48582dc67/GestureDetector_ScrollListener
	i64 u0x1a49d63abc7952ea, ; 195 => android/webkit/MimeTypeMap
	i64 u0x1a65dab33401d766, ; 196 => androidx/navigation/NavController$OnDestinationChangedListener
	i64 u0x1aa2bba740a0d65a, ; 197 => androidx/camera/camera2/internal/compat/CameraCharacteristicsCompat
	i64 u0x1aaa6a9aa98275b2, ; 198 => com/google/android/material/appbar/AppBarLayout$ChildScrollEffect
	i64 u0x1b88d684ca2a0819, ; 199 => crc6479d6f9e48582dc67/WindowOverlayStack
	i64 u0x1b89ef46042e2c03, ; 200 => android/text/method/MetaKeyKeyListener
	i64 u0x1c123737ef8a7675, ; 201 => android/app/ActivityManager
	i64 u0x1cbdcf00c44f2034, ; 202 => androidx/lifecycle/Observer
	i64 u0x1d72329005762b4a, ; 203 => java/util/AbstractSet
	i64 u0x1da654e027889141, ; 204 => crc640ec207abc449b2ca/ShellFlyoutRenderer
	i64 u0x1db460d3c8c060c6, ; 205 => androidx/camera/core/concurrent/CameraCoordinator$ConcurrentCameraModeListener
	i64 u0x1dc163de5519f3ef, ; 206 => com/google/android/material/shape/CornerSize
	i64 u0x1dd5eacdf16045e9, ; 207 => androidx/media/VolumeProviderCompat$Callback
	i64 u0x1df6cb381b21c3e5, ; 208 => crc6452ffdc5b34af3a0f/LayoutViewGroup
	i64 u0x1e0000284caa3573, ; 209 => android/os/LocaleList
	i64 u0x1e04bf19f9c14045, ; 210 => android/util/AttributeSet
	i64 u0x1e25af870a8898ca, ; 211 => android/animation/ValueAnimator$DurationScaleChangeListener
	i64 u0x1e39642ca41ee809, ; 212 => androidx/media3/exoplayer/source/ShuffleOrder
	i64 u0x1e549855226528a2, ; 213 => java/io/InterruptedIOException
	i64 u0x1e69018626ef9ffb, ; 214 => android/os/Handler
	i64 u0x1e72ebd893590a84, ; 215 => mono/androidx/core/view/WindowInsetsControllerCompat_OnControllableInsetsChangedListenerImplementor
	i64 u0x1e957b3efd87ae08, ; 216 => android/content/res/ColorStateList
	i64 u0x1ea747de70027aae, ; 217 => android/widget/RelativeLayout$LayoutParams
	i64 u0x1ea942af27b76190, ; 218 => android/view/accessibility/CaptioningManager$CaptionStyle
	i64 u0x1ed94df1d9fa38c4, ; 219 => java/text/NumberFormat
	i64 u0x1eec52f0d8ec6767, ; 220 => crc64f5844edce43316e7/CustomImageView
	i64 u0x1eef7492beaf81e2, ; 221 => android/os/IInterface
	i64 u0x1f76a92524b92e96, ; 222 => android/graphics/Region
	i64 u0x1fb2c14fc144ff41, ; 223 => androidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolver
	i64 u0x1fb6522f1211b131, ; 224 => androidx/core/view/WindowInsetsCompat
	i64 u0x1fd45c34f2daf07c, ; 225 => androidx/media3/common/util/HandlerWrapper$Message
	i64 u0x1fed72a807a05b10, ; 226 => androidx/media3/exoplayer/ExoPlayer$AudioOffloadListener
	i64 u0x201d0d80efb56cb8, ; 227 => android/opengl/GLSurfaceView$Renderer
	i64 u0x2082dd2d9d9ad447, ; 228 => androidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference
	i64 u0x208c2e59c4c6d758, ; 229 => java/util/function/ToIntFunction
	i64 u0x20c8db26fbc6479c, ; 230 => androidx/camera/video/Recorder
	i64 u0x21119a81f4354fb8, ; 231 => crc64f1558ff7e185dbfc/CameraManager_ImageCallBack
	i64 u0x211719e0e41e966a, ; 232 => android/graphics/drawable/StateListDrawable
	i64 u0x214b14c505219421, ; 233 => androidx/media3/common/MediaItem$AdsConfiguration
	i64 u0x2153a3df2897eb50, ; 234 => android/hardware/camera2/CameraCharacteristics$Key
	i64 u0x218f07bbf08c531e, ; 235 => kotlin/coroutines/CoroutineContext$Key
	i64 u0x21b381333982058e, ; 236 => javax/net/SocketFactory
	i64 u0x22147ddace31d268, ; 237 => androidx/media3/exoplayer/RendererCapabilities
	i64 u0x22436d73eb9797a7, ; 238 => android/content/IntentFilter
	i64 u0x225c20a45cb91cd7, ; 239 => java/lang/Error
	i64 u0x226a32ade9610c81, ; 240 => androidx/camera/core/impl/Config
	i64 u0x228edb5145b4bbc1, ; 241 => android/view/InputEvent
	i64 u0x22f341dcea6f3d85, ; 242 => androidx/core/content/pm/PackageInfoCompat
	i64 u0x23142080c6b7a295, ; 243 => android/graphics/drawable/BitmapDrawable
	i64 u0x23243faa046cf4fb, ; 244 => crc645d80431ce5f73f11/ItemsViewAdapter_2
	i64 u0x234193b9a430beb1, ; 245 => crc645d80431ce5f73f11/MauiCarouselRecyclerView
	i64 u0x23789a82b7f834d4, ; 246 => android/hardware/camera2/CameraCharacteristics
	i64 u0x23806711dfe30fce, ; 247 => androidx/media3/common/Player
	i64 u0x239dab047b24e9f8, ; 248 => androidx/media3/common/DrmInitData$SchemeData
	i64 u0x2413290612c4bce3, ; 249 => mono/androidx/recyclerview/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor
	i64 u0x242b6f4f965ac8b4, ; 250 => androidx/media3/exoplayer/source/MediaLoadData
	i64 u0x24336b0b8aaf4cfe, ; 251 => androidx/appcompat/app/ActionBarDrawerToggle$Delegate
	i64 u0x24519c116d0ca8a6, ; 252 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_LongPressGestureListener
	i64 u0x24d34cdbf04208f8, ; 253 => android/window/InputTransferToken
	i64 u0x24f44152583c2169, ; 254 => androidx/core/view/WindowInsetsCompat$Type
	i64 u0x24f448339156297b, ; 255 => crc645d80431ce5f73f11/EndSingleSnapHelper
	i64 u0x24f7c38731b35c70, ; 256 => com/google/android/material/tabs/TabLayoutMediator
	i64 u0x250f0166bb46cb93, ; 257 => android/webkit/WebChromeClient
	i64 u0x25530a8d502e8309, ; 258 => crc6452ffdc5b34af3a0f/StepperHandlerManager_StepperListener
	i64 u0x2564914306a7d978, ; 259 => crc6452ffdc5b34af3a0f/MauiAccessibilityDelegateCompat
	i64 u0x257965de19f948c8, ; 260 => crc648a9457dd5f66374f/ExtMauiScrollView
	i64 u0x2579dfe6473b5967, ; 261 => android/widget/RelativeLayout
	i64 u0x258a3fdaab536970, ; 262 => crc64e1fb321c08285b90/BaseCellView
	i64 u0x259534eb0941a685, ; 263 => androidx/camera/core/ImageProcessor$Request
	i64 u0x25be0d44e61e2384, ; 264 => crc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper
	i64 u0x25c6e6948f7aabe5, ; 265 => crc64338477404e88479c/ColorChangeRevealDrawable
	i64 u0x25d48cdd9a47992c, ; 266 => androidx/media3/decoder/CryptoInfo
	i64 u0x25ef71c09b2365b0, ; 267 => androidx/camera/core/ImageProcessor
	i64 u0x260b778cbe0699d1, ; 268 => androidx/media3/exoplayer/ExoPlayer$TextComponent
	i64 u0x264c763f15fe80ab, ; 269 => androidx/media3/exoplayer/source/TrackGroupArray
	i64 u0x26895eb5d7241695, ; 270 => androidx/camera/core/impl/CameraCaptureMetaData$AeMode
	i64 u0x26d52b7ae9ae9bc7, ; 271 => android/webkit/WebMessage
	i64 u0x272ea4375d87e30b, ; 272 => androidx/activity/result/ActivityResultCallback
	i64 u0x2787407975bffeee, ; 273 => androidx/camera/core/UseCase$StateChangeCallback
	i64 u0x27fdbdd146df145a, ; 274 => androidx/media3/common/Player$Events
	i64 u0x285b7613134d65d3, ; 275 => androidx/media3/common/util/BitmapLoader
	i64 u0x287bcca10e29c798, ; 276 => android/webkit/CookieManager
	i64 u0x287c1d67dd559dd2, ; 277 => androidx/core/app/NotificationChannelCompat
	i64 u0x288508d64f0f2d64, ; 278 => androidx/camera/extensions/CameraExtensionsControl
	i64 u0x28cad0b9244cc1b5, ; 279 => android/widget/ListView
	i64 u0x28dfb33ac66b3e15, ; 280 => androidx/camera/core/CameraXConfig
	i64 u0x290653ec034d481e, ; 281 => androidx/media3/session/MediaSession$ConnectionResult
	i64 u0x294713a0194d0119, ; 282 => mono/android/animation/AnimatorEventDispatcher
	i64 u0x296b87a36177ce1f, ; 283 => androidx/navigation/NavDeepLink
	i64 u0x29756fda71d7c7b0, ; 284 => androidx/camera/core/MeteringPointFactory
	i64 u0x2975831afa63f308, ; 285 => android/view/SearchEvent
	i64 u0x297a06a76a1a32e8, ; 286 => crc6452ffdc5b34af3a0f/MauiHybridWebView
	i64 u0x29c713799a61dfd3, ; 287 => android/graphics/PathEffect
	i64 u0x29d10d5373d0de51, ; 288 => android/app/TimePickerDialog
	i64 u0x29d741b98267cff9, ; 289 => crc645d80431ce5f73f11/EmptyViewAdapter
	i64 u0x29eea0438b34229e, ; 290 => android/widget/SearchView
	i64 u0x2a15272bf231e341, ; 291 => android/widget/EditText
	i64 u0x2a863404765de198, ; 292 => android/provider/DocumentsContract
	i64 u0x2aab96fa4382249d, ; 293 => androidx/camera/core/processing/SurfaceEdge
	i64 u0x2aaf5b4c01855a83, ; 294 => androidx/media3/common/MediaItem$ClippingConfiguration$Builder
	i64 u0x2ab3ff07e6889e61, ; 295 => androidx/camera/core/SurfaceRequest$TransformationInfoListener
	i64 u0x2ad8e01c24db2cd6, ; 296 => androidx/camera/core/resolutionselector/ResolutionFilter
	i64 u0x2aee053a4160bbec, ; 297 => kotlinx/coroutines/flow/Flow
	i64 u0x2b0021fb880f9a19, ; 298 => androidx/camera/core/impl/CameraDeviceSurfaceManager$Provider
	i64 u0x2b4dc18b8f592fba, ; 299 => android/view/inputmethod/ExtractedText
	i64 u0x2b72e127ba0bb70a, ; 300 => crc6486af4e8104107bae/DropdownViewExt
	i64 u0x2b9a31ac014169d3, ; 301 => androidx/camera/core/impl/CameraControlInternal
	i64 u0x2bcca4a8219ac237, ; 302 => javax/security/cert/X509Certificate
	i64 u0x2bd1ad3b5c2d27f0, ; 303 => android/graphics/BlendMode
	i64 u0x2be85c9edf151c8d, ; 304 => crc64ceb75e76f4b66147/MediaManager
	i64 u0x2bf6d6708afd9c04, ; 305 => androidx/savedstate/SavedStateRegistry
	i64 u0x2bf6dde72be3597b, ; 306 => crc640ec207abc449b2ca/ShellFlyoutLayout
	i64 u0x2bfb1e07ada83eca, ; 307 => androidx/lifecycle/viewmodel/CreationExtras$Key
	i64 u0x2c0c9dbeeb804874, ; 308 => android/widget/AdapterView
	i64 u0x2c30d6ecce5695fb, ; 309 => java/text/Format
	i64 u0x2c3a98b68817eb58, ; 310 => crc64e1fb321c08285b90/EntryCellEditText
	i64 u0x2c546f8dca46e363, ; 311 => androidx/navigation/NavType
	i64 u0x2ccbc00c67ad2748, ; 312 => androidx/camera/core/impl/ReadableConfig
	i64 u0x2ce3c962a914d7c5, ; 313 => crc64f728827fec74e9c3/TapWindowTracker_GestureListener
	i64 u0x2cf8d24c3d21e911, ; 314 => android/text/TextPaint
	i64 u0x2d1d8aa5c3043266, ; 315 => androidx/media3/ui/PlayerControlView$VisibilityListener
	i64 u0x2d266277f4578de8, ; 316 => kotlinx/serialization/encoding/Encoder
	i64 u0x2d394d9ef707bb4c, ; 317 => android/widget/AbsSeekBar
	i64 u0x2d6a6698637888af, ; 318 => com/google/android/material/tabs/TabLayout
	i64 u0x2d928408f885de50, ; 319 => androidx/camera/core/featuregroup/impl/ResolvedFeatureGroup
	i64 u0x2da89edd74ce3d5e, ; 320 => androidx/media3/extractor/text/Subtitle
	i64 u0x2dad289fa6207670, ; 321 => android/text/style/BackgroundColorSpan
	i64 u0x2e353ec1ff5b4b2e, ; 322 => androidx/camera/core/ImageAnalysis
	i64 u0x2e6a4b97165aa09b, ; 323 => androidx/camera/core/resolutionselector/ResolutionSelector$Builder
	i64 u0x2e7ac01fdc3e9e8d, ; 324 => android/text/style/WrapTogetherSpan
	i64 u0x2eacb325830db74c, ; 325 => android/database/ContentObserver
	i64 u0x2ee44e544e7f31fb, ; 326 => crc645d80431ce5f73f11/SpacingItemDecoration
	i64 u0x2f34663c27e21652, ; 327 => androidx/media3/common/PlaybackException
	i64 u0x2ff9fb2c70f4f954, ; 328 => java/lang/SecurityException
	i64 u0x301a44a43e303285, ; 329 => crc645d80431ce5f73f11/SingleSnapHelper
	i64 u0x3027c4dff269f550, ; 330 => androidx/media3/exoplayer/drm/DrmSessionManagerProvider
	i64 u0x304444061162dbb8, ; 331 => androidx/appcompat/widget/AppCompatTextView
	i64 u0x3068b2cc16f39dc1, ; 332 => android/view/ContextMenu$ContextMenuInfo
	i64 u0x30abf4d5cd5193ea, ; 333 => kotlin/reflect/KAnnotatedElement
	i64 u0x3124bf0069caf930, ; 334 => crc640360c8a960a6805b/CustomAccessibilityProvider
	i64 u0x315ed2c3714b7af8, ; 335 => kotlinx/serialization/encoding/CompositeDecoder
	i64 u0x316137951e53b82f, ; 336 => android/graphics/BlurMaskFilter
	i64 u0x31f6cbff3196a79a, ; 337 => android/content/IntentSender
	i64 u0x321c29cf8c6f7a93, ; 338 => android/content/res/Resources
	i64 u0x322a6d58316feaad, ; 339 => com/google/android/material/shape/ShapePathModel
	i64 u0x3284d6ffa593ab37, ; 340 => androidx/camera/core/ImageCapture
	i64 u0x32d6a1d6ee9f6d5a, ; 341 => android/content/Intent
	i64 u0x32e38c704bbe38ab, ; 342 => androidx/camera/core/PreviewCapabilities
	i64 u0x32f4c79d0d754da7, ; 343 => android/content/ClipDescription
	i64 u0x332031975eda7654, ; 344 => java/lang/Boolean
	i64 u0x332e678eef1fd7a9, ; 345 => androidx/media3/common/TrackGroup
	i64 u0x333aab094589d187, ; 346 => javax/microedition/khronos/egl/EGL10
	i64 u0x333c1e7a72efe803, ; 347 => com/google/android/material/shape/ShapePath
	i64 u0x33446dc637a16331, ; 348 => android/view/Menu
	i64 u0x33886795bd036f10, ; 349 => android/text/method/MovementMethod
	i64 u0x339314fb190f366a, ; 350 => androidx/appcompat/widget/Toolbar$OnMenuItemClickListener
	i64 u0x33cfd0a6159193b3, ; 351 => androidx/media3/common/MediaItem$ClippingProperties
	i64 u0x33d52fa94ce94e04, ; 352 => androidx/core/internal/view/SupportMenuItem
	i64 u0x33e2518e6297a83a, ; 353 => androidx/camera/camera2/internal/compat/CameraManagerCompat
	i64 u0x33fceb26a272cd76, ; 354 => androidx/media3/ui/PlayerControlView$ProgressUpdateListener
	i64 u0x33ff30e6692ebacc, ; 355 => androidx/core/widget/NestedScrollView$OnScrollChangeListener
	i64 u0x3436cf09b45d055e, ; 356 => java/security/Principal
	i64 u0x348d00618320f783, ; 357 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat
	i64 u0x34922aa49b075749, ; 358 => androidx/activity/result/ActivityResultLauncher
	i64 u0x3493d4f185c2b950, ; 359 => android/view/animation/LinearInterpolator
	i64 u0x34a4414d9498be08, ; 360 => androidx/core/view/WindowInsetsControllerCompat
	i64 u0x34b9d172a74faae8, ; 361 => androidx/camera/core/CameraSelector
	i64 u0x34d3edeaafb781d0, ; 362 => android/text/InputFilter$LengthFilter
	i64 u0x34e51d9ebf29d454, ; 363 => androidx/camera/video/VideoRecordEvent
	i64 u0x3546d62b6750666a, ; 364 => crc645d80431ce5f73f11/TextViewHolder
	i64 u0x354fcde9fba66be0, ; 365 => android/content/DialogInterface$OnClickListener
	i64 u0x35928849fbd174e5, ; 366 => androidx/camera/core/impl/CameraFactory$Provider
	i64 u0x35e989807a64bcd9, ; 367 => java/lang/IllegalStateException
	i64 u0x3611feb7c92af67a, ; 368 => android/content/SharedPreferences$Editor
	i64 u0x3627acf718d61f2c, ; 369 => androidx/media3/common/AuxEffectInfo
	i64 u0x3655063d24206f71, ; 370 => android/app/DatePickerDialog$OnDateSetListener
	i64 u0x3670776e5d21c29a, ; 371 => androidx/media3/common/MediaItem$RequestMetadata$Builder
	i64 u0x3690c8ddd0de1650, ; 372 => android/util/Pair
	i64 u0x36919b6683653a07, ; 373 => crc6452ffdc5b34af3a0f/SwipeViewPager
	i64 u0x3695825e95d58a86, ; 374 => java/lang/ClassLoader
	i64 u0x36a21a5536d10d64, ; 375 => android/view/LayoutInflater
	i64 u0x36cc13f28fccdf1e, ; 376 => androidx/camera/core/impl/CameraInfoInternal
	i64 u0x37085a846c8e84e3, ; 377 => mono/internal/javax/microedition/khronos/egl/EGL10
	i64 u0x374e29f85377aa8d, ; 378 => androidx/activity/BackEventCompat
	i64 u0x374e88907ca71674, ; 379 => crc6479d6f9e48582dc67/HorizontalScrollViewer
	i64 u0x37605836d2882b8e, ; 380 => androidx/collection/SparseArrayCompat
	i64 u0x37aa2a0aace75330, ; 381 => androidx/camera/core/impl/SessionConfig$Builder
	i64 u0x37ad67b74c824215, ; 382 => androidx/camera/core/Camera
	i64 u0x37b71a054ebc0df3, ; 383 => android/animation/AnimatorListenerAdapter
	i64 u0x37c2da9e97cb47f0, ; 384 => android/text/method/KeyListener
	i64 u0x37c2fcd9c2a64538, ; 385 => androidx/media3/common/text/Cue$Builder
	i64 u0x37ffea827354b6f0, ; 386 => androidx/core/graphics/ColorUtils
	i64 u0x3805860ad72c98d9, ; 387 => crc64f5844edce43316e7/ButtonView
	i64 u0x382d7ec8e9159c1e, ; 388 => androidx/media3/common/Timeline$Period
	i64 u0x388b31f963b8d561, ; 389 => androidx/camera/core/impl/StreamUseCase
	i64 u0x3895e97f3a6424d0, ; 390 => androidx/media3/common/MediaItem$LocalConfiguration
	i64 u0x38a041da7c763f23, ; 391 => android/view/animation/Animation$AnimationListener
	i64 u0x38a444992a5ec975, ; 392 => androidx/recyclerview/widget/GridLayoutManager
	i64 u0x38bd0b281100230c, ; 393 => androidx/recyclerview/widget/RecyclerView$OnItemTouchListener
	i64 u0x38efa7482f45a90d, ; 394 => crc640ec207abc449b2ca/CustomFrameLayout
	i64 u0x38f8abd8c74c4199, ; 395 => androidx/core/widget/CompoundButtonCompat
	i64 u0x3904a04f5caccc84, ; 396 => android/view/animation/AnimationUtils
	i64 u0x39598be8860f4637, ; 397 => androidx/fragment/app/FragmentHostCallback
	i64 u0x399255970a652898, ; 398 => android/view/View$DragShadowBuilder
	i64 u0x39b9936d894fb279, ; 399 => androidx/media3/common/text/Cue
	i64 u0x3a0b11ff22c4d637, ; 400 => android/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener
	i64 u0x3a5f163c839674eb, ; 401 => crc6452ffdc5b34af3a0f/MauiPickerBase
	i64 u0x3a6034507d355a70, ; 402 => androidx/camera/core/DynamicRange
	i64 u0x3a7b60f2af2c027d, ; 403 => androidx/media3/exoplayer/DecoderReuseEvaluation
	i64 u0x3a8127906692d290, ; 404 => android/graphics/Matrix
	i64 u0x3a8e7c9f52fffa08, ; 405 => android/text/method/DigitsKeyListener
	i64 u0x3ad7de9d5f9a79c1, ; 406 => mono/androidx/media3/datasource/TransferListenerImplementor
	i64 u0x3ade0c7da62503ba, ; 407 => crc64338477404e88479c/PointerGestureHandler
	i64 u0x3b01cd169489a0ba, ; 408 => android/view/inputmethod/InputConnection
	i64 u0x3b42d29f06c95015, ; 409 => android/view/accessibility/AccessibilityNodeInfo
	i64 u0x3b4546021c55bbd5, ; 410 => android/text/StaticLayout$Builder
	i64 u0x3b897751150d7c41, ; 411 => crc649ff77a65592e7d55/TabbedPageManager_TempView
	i64 u0x3bbcf2fd26063dab, ; 412 => androidx/activity/result/ActivityResultRegistry
	i64 u0x3befb3da59a57d28, ; 413 => androidx/navigation/NavArgument
	i64 u0x3c18c839bfe28e25, ; 414 => crc648e35430423bd4943/SKGLSurfaceView
	i64 u0x3c26f488127fabb3, ; 415 => crc640ec207abc449b2ca/ShellContentFragment
	i64 u0x3c7b6b371fdb815e, ; 416 => crc6479d6f9e48582dc67/NativeListViewScrollView
	i64 u0x3cb43278cd9db359, ; 417 => androidx/media3/common/Player$Commands$Builder
	i64 u0x3cbc5ad3e546be58, ; 418 => crc64338477404e88479c/MultiPageFragmentStateAdapter_1
	i64 u0x3ce3df636269ad35, ; 419 => android/support/v4/media/session/PlaybackStateCompat
	i64 u0x3d2c4c5c79a11e13, ; 420 => androidx/camera/core/ImageCapture$Builder
	i64 u0x3d671e7233f17019, ; 421 => crc64e1fb321c08285b90/CellAdapter
	i64 u0x3d6c541ff5df241e, ; 422 => android/view/contentcapture/ContentCaptureSession
	i64 u0x3daecfd1865916e7, ; 423 => mono/android/widget/PopupWindow_OnDismissListenerImplementor
	i64 u0x3db53723e5421d9e, ; 424 => androidx/media3/exoplayer/video/VideoFrameMetadataListener
	i64 u0x3e48520699aeb266, ; 425 => android/graphics/Path$Op
	i64 u0x3e63d052c6c91768, ; 426 => android/graphics/drawable/shapes/RectShape
	i64 u0x3ea0e9f234b8572a, ; 427 => android/graphics/DashPathEffect
	i64 u0x3ef4d22bf3b2260b, ; 428 => android/webkit/WebResourceResponse
	i64 u0x3f61da37fb333b04, ; 429 => android/app/ActionBar$LayoutParams
	i64 u0x3f97d8ee32f8b25b, ; 430 => android/view/ViewParent
	i64 u0x400d948c9d7f86fc, ; 431 => android/text/method/NumberKeyListener
	i64 u0x402e774404f0a64c, ; 432 => androidx/camera/core/impl/CameraCaptureMetaData$AeState
	i64 u0x406e54c64b3bee74, ; 433 => android/runtime/JavaProxyThrowable
	i64 u0x407db513422cf50c, ; 434 => android/media/session/MediaSessionManager
	i64 u0x40990721bf4c1086, ; 435 => android/widget/PopupWindow
	i64 u0x40b96fc75df9616d, ; 436 => android/view/GestureDetector$OnGestureListener
	i64 u0x40c05cff47992547, ; 437 => android/view/ViewGroup
	i64 u0x40e478bf1fb132e1, ; 438 => crc64e1fb321c08285b90/TextCellRenderer_TextCellView
	i64 u0x4102c960330b5936, ; 439 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_TapGestureListener
	i64 u0x410b8867f8d7004d, ; 440 => androidx/media3/exoplayer/trackselection/ExoTrackSelection
	i64 u0x412d3dac9f7de53a, ; 441 => android/view/View$OnScrollChangeListener
	i64 u0x414e9331a3640876, ; 442 => androidx/media3/exoplayer/SeekParameters
	i64 u0x415e631ae10d9777, ; 443 => androidx/fragment/app/FragmentTransaction
	i64 u0x41664855d9aa0b7a, ; 444 => androidx/media3/ui/PlayerNotificationManager$MediaDescriptionAdapter
	i64 u0x41ac0ab939dc266a, ; 445 => android/view/MenuItem$OnActionExpandListener
	i64 u0x41bebe9788d0065d, ; 446 => java/util/concurrent/Future
	i64 u0x41d091ef7039ab94, ; 447 => java/net/URLConnection
	i64 u0x41ebcd9abfe3ee7f, ; 448 => androidx/core/content/LocusIdCompat
	i64 u0x4209344bc1b095c1, ; 449 => java/net/ProtocolException
	i64 u0x420a04e6f6999834, ; 450 => crc6479d6f9e48582dc67/GestureDetector_ScaleListener
	i64 u0x42281d946d89f4bf, ; 451 => android/text/StaticLayout
	i64 u0x425ab76c004952f2, ; 452 => android/util/Range
	i64 u0x427bcfc9e4656b67, ; 453 => androidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy
	i64 u0x42ccc2c64993f27f, ; 454 => android/animation/ValueAnimator$AnimatorUpdateListener
	i64 u0x42e91d1f598314ca, ; 455 => android/database/DataSetObserver
	i64 u0x4326e660e16a4f2a, ; 456 => kotlin/jvm/functions/Function2
	i64 u0x436358cc7aa1212d, ; 457 => androidx/camera/video/Quality
	i64 u0x439a14affe23e7c0, ; 458 => androidx/appcompat/view/ActionMode$Callback
	i64 u0x43b039b3078a25e0, ; 459 => androidx/viewpager/widget/PagerAdapter
	i64 u0x43bf06faa05dffed, ; 460 => androidx/loader/content/Loader
	i64 u0x43e510056e08c362, ; 461 => androidx/camera/core/impl/MutableOptionsBundle
	i64 u0x440eda1cb69308a3, ; 462 => androidx/fragment/app/FragmentManager
	i64 u0x441028a345627265, ; 463 => androidx/viewpager2/widget/ViewPager2$PageTransformer
	i64 u0x441c5084fb227009, ; 464 => android/support/v4/media/session/MediaControllerCompat
	i64 u0x4458c07f53386b27, ; 465 => androidx/camera/core/imagecapture/ImagePipeline
	i64 u0x447911f99b272892, ; 466 => androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback
	i64 u0x44c3fee037b44d38, ; 467 => androidx/media3/exoplayer/upstream/Allocator$AllocationNode
	i64 u0x45461b89d0074576, ; 468 => androidx/media3/common/Format$Builder
	i64 u0x45a110add6cc3816, ; 469 => androidx/camera/core/impl/ImageInputConfig
	i64 u0x45cbc3db291fc315, ; 470 => com/google/android/material/internal/ScrimInsetsFrameLayout
	i64 u0x45e22fe78680c395, ; 471 => android/view/animation/BaseInterpolator
	i64 u0x45e308745fedc226, ; 472 => androidx/camera/core/impl/StreamSpec$Builder
	i64 u0x45e88f6bf8474d57, ; 473 => crc64e53d2f592022988e/ConnectivityBroadcastReceiver
	i64 u0x461cbd479244c30e, ; 474 => androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup
	i64 u0x46471c60ac99f101, ; 475 => androidx/appcompat/view/menu/MenuItemImpl
	i64 u0x46d1db9e48980f43, ; 476 => androidx/browser/customtabs/CustomTabsIntent$Builder
	i64 u0x46eb2cee557f0998, ; 477 => androidx/media3/common/MediaMetadata
	i64 u0x47255f3ebd4c924f, ; 478 => androidx/camera/core/impl/RequestProcessor$Request
	i64 u0x472dd4efe6be81d3, ; 479 => androidx/media3/ui/PlayerNotificationManager$Builder
	i64 u0x4768ffd64bb01691, ; 480 => android/view/WindowInsets$Type
	i64 u0x4792054f86c2da85, ; 481 => androidx/camera/core/ImageCaptureException
	i64 u0x482246ca274ee68f, ; 482 => androidx/activity/contextaware/OnContextAvailableListener
	i64 u0x48d8183d1b1e372d, ; 483 => crc64354973402314325c/ViewHolder
	i64 u0x48e1abb584b78c94, ; 484 => java/io/Writer
	i64 u0x48ec9995522d72dc, ; 485 => androidx/media3/exoplayer/upstream/CmcdConfiguration
	i64 u0x4908b0d97cd08997, ; 486 => androidx/camera/core/impl/SessionConfig
	i64 u0x4930daf7c10ff422, ; 487 => android/app/Notification$Builder
	i64 u0x4976930bddc9561a, ; 488 => com/microsoft/maui/PlatformContentViewGroup
	i64 u0x498aeb17f8ca6cd7, ; 489 => androidx/camera/core/streamsharing/StreamSharing
	i64 u0x498ba0971d83ce0a, ; 490 => android/content/res/XmlResourceParser
	i64 u0x498bbf94c21599c2, ; 491 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat
	i64 u0x49f836b50dc30062, ; 492 => androidx/core/app/ComponentActivity$ExtraData
	i64 u0x49f9e1dbcb76149f, ; 493 => androidx/media3/common/TrackSelectionParameters$Builder
	i64 u0x49fe953985e97bf2, ; 494 => androidx/camera/view/PreviewView$OnFrameUpdateListener
	i64 u0x4a1368574f17ef4a, ; 495 => crc6452ffdc5b34af3a0f/MauiLayerDrawable
	i64 u0x4a39213a97fe1b2f, ; 496 => java/net/ConnectException
	i64 u0x4a3a65d631edac16, ; 497 => androidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener
	i64 u0x4a62077e41e01226, ; 498 => android/view/View$OnKeyListener
	i64 u0x4a684bbb79f94c92, ; 499 => java/util/UUID
	i64 u0x4a7c0d4cc7a7a81c, ; 500 => androidx/camera/core/internal/CalculatedUseCaseInfo
	i64 u0x4ac5c336c72a1532, ; 501 => androidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener
	i64 u0x4aee09df55dd86b2, ; 502 => android/graphics/RadialGradient
	i64 u0x4b259e47b25e5c84, ; 503 => androidx/appcompat/view/menu/MenuPresenter$Callback
	i64 u0x4b9890541bbe42b9, ; 504 => android/text/SpannableStringBuilder
	i64 u0x4b9f25f301daddd8, ; 505 => androidx/core/view/ViewPropertyAnimatorListener
	i64 u0x4bc067aaf3d10a65, ; 506 => androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener
	i64 u0x4bc3254021830535, ; 507 => androidx/fragment/app/Fragment
	i64 u0x4bc38181888d0dbd, ; 508 => android/media/MediaCodec
	i64 u0x4bc5ffd3c93fb4c6, ; 509 => androidx/media3/common/TrackSelectionParameters
	i64 u0x4c0f941e09b60a45, ; 510 => mono/androidx/navigation/NavController_OnDestinationChangedListenerImplementor
	i64 u0x4c3e8bbf51390507, ; 511 => android/graphics/Path$Direction
	i64 u0x4c6e9166f44886c9, ; 512 => androidx/recyclerview/widget/LinearLayoutManager
	i64 u0x4c745b87f271a63b, ; 513 => androidx/camera/core/impl/Observable$Observer
	i64 u0x4d3c4bca1c8dea14, ; 514 => kotlin/reflect/KTypeProjection
	i64 u0x4d4174cfe79587fa, ; 515 => android/speech/RecognitionListener
	i64 u0x4d42113f2af39c56, ; 516 => crc64338477404e88479c/GradientStrokeDrawable
	i64 u0x4d5913834f8ec110, ; 517 => android/content/DialogInterface
	i64 u0x4da4ac13d373d9d4, ; 518 => android/view/SurfaceHolder$Callback
	i64 u0x4db8e45089399353, ; 519 => androidx/camera/video/QualitySelector
	i64 u0x4de23e4f12b0e274, ; 520 => android/text/style/TypefaceSpan
	i64 u0x4defe6bf46433842, ; 521 => androidx/media/MediaSessionManager
	i64 u0x4e6ec1690cfd5ab7, ; 522 => androidx/fragment/app/FragmentOnAttachListener
	i64 u0x4e7e0c32a0c92595, ; 523 => android/animation/Animator
	i64 u0x4ee5d68bf049f647, ; 524 => android/graphics/PointF
	i64 u0x4f6287dd50dad825, ; 525 => androidx/core/app/Person
	i64 u0x4f858ea9c9162f43, ; 526 => android/os/IBinder
	i64 u0x4f9ad430b1a97fe6, ; 527 => android/widget/ScrollView
	i64 u0x4fa0d981f22ddbd5, ; 528 => androidx/media3/common/FlagSet
	i64 u0x4fb6b2906496a2f4, ; 529 => crc645d80431ce5f73f11/ScrollHelper
	i64 u0x5000d515ab59fda0, ; 530 => mono/com/google/android/material/checkbox/MaterialCheckBox_OnCheckedStateChangedListenerImplementor
	i64 u0x50292cbe4e8d7a66, ; 531 => com/google/android/material/navigation/NavigationBarView$OnItemSelectedListener
	i64 u0x50545a826f08c298, ; 532 => androidx/camera/camera2/internal/Camera2PhysicalCameraInfoImpl
	i64 u0x505b1379ff157a72, ; 533 => android/view/Surface
	i64 u0x50764546118e1d8e, ; 534 => java/util/AbstractMap
	i64 u0x50c99fed15830727, ; 535 => androidx/appcompat/graphics/drawable/DrawableWrapperCompat
	i64 u0x50d702ac1a779d77, ; 536 => mono/android/content/DialogInterface_OnClickListenerImplementor
	i64 u0x50dc1d14cbccd085, ; 537 => androidx/core/widget/TextViewCompat
	i64 u0x510b4a194e70a8b9, ; 538 => android/webkit/WebChromeClient$FileChooserParams
	i64 u0x513e52254d0e24b4, ; 539 => android/graphics/drawable/shapes/OvalShape
	i64 u0x516bd5763f07d608, ; 540 => android/net/Uri
	i64 u0x5181b129b1a25949, ; 541 => java/lang/Class
	i64 u0x5184aae28f8d70df, ; 542 => android/text/TextDirectionHeuristic
	i64 u0x51bfc104622f66ab, ; 543 => crc648a9457dd5f66374f/LayoutViewGroupExtension
	i64 u0x51cee6815370b9e1, ; 544 => androidx/media3/common/MediaItem$RequestMetadata
	i64 u0x51f6a9688dd9b10f, ; 545 => androidx/media3/ui/PlayerControlView
	i64 u0x5238ad63b58da994, ; 546 => java/lang/ClassCastException
	i64 u0x525031aa556acae7, ; 547 => android/widget/ImageView$ScaleType
	i64 u0x52866792ff3e753b, ; 548 => androidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener
	i64 u0x5287354d65f6d922, ; 549 => crc648e35430423bd4943/SKGLSurfaceView_InternalRenderer
	i64 u0x529e559bd64e4c22, ; 550 => javax/net/ssl/HttpsURLConnection
	i64 u0x52a862f1811707ab, ; 551 => android/graphics/drawable/PaintDrawable
	i64 u0x52adb72c3191de4e, ; 552 => androidx/media3/ui/PlayerView$FullscreenButtonClickListener
	i64 u0x53358f28c966fd3d, ; 553 => androidx/recyclerview/widget/LinearSmoothScroller
	i64 u0x5338fc32332c7b76, ; 554 => androidx/media3/exoplayer/analytics/AnalyticsCollector
	i64 u0x53826d7a1581d39b, ; 555 => androidx/camera/core/internal/ThreadConfig$Builder
	i64 u0x53a75440048b66bb, ; 556 => mono/com/google/android/material/button/MaterialButton_OnCheckedChangeListenerImplementor
	i64 u0x53eb73e443ef06f6, ; 557 => android/content/ServiceConnection
	i64 u0x53f1a1773a4ecbf7, ; 558 => android/content/res/Resources$Theme
	i64 u0x53f952e9c06f6806, ; 559 => androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry
	i64 u0x53ffea4cdfcba029, ; 560 => android/widget/CheckBox
	i64 u0x53fff212036ac456, ; 561 => javax/microedition/khronos/egl/EGL
	i64 u0x543ee7a3edd80785, ; 562 => android/app/Notification
	i64 u0x544c8e257663438d, ; 563 => crc648e35430423bd4943/SKGLTextureView_InternalRenderer
	i64 u0x5457a3ee93e79e1b, ; 564 => android/view/inputmethod/EditorInfo
	i64 u0x5497fe01364b8541, ; 565 => androidx/camera/video/AudioStats
	i64 u0x54ac420c61df93e4, ; 566 => android/text/style/UnderlineSpan
	i64 u0x54c5d3387059fe2c, ; 567 => mono/android/view/View_OnClickListenerImplementor
	i64 u0x54c8b157aaa152c8, ; 568 => androidx/fragment/app/FragmentManager$BackStackEntry
	i64 u0x54e75191bbca79dd, ; 569 => java/nio/ByteBuffer
	i64 u0x54f3fe7b69fcb0b9, ; 570 => androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener
	i64 u0x551ac881eb4466c0, ; 571 => java/lang/Number
	i64 u0x5583d0b8a719d478, ; 572 => com/google/android/material/navigation/NavigationBarView
	i64 u0x55ad657acdd3959a, ; 573 => javax/microedition/khronos/egl/EGLSurface
	i64 u0x55f72f5bdbb6740d, ; 574 => android/webkit/WebResourceRequest
	i64 u0x56365290d5a06704, ; 575 => java/lang/LinkageError
	i64 u0x5666c9382435fd16, ; 576 => com/google/android/material/checkbox/MaterialCheckBox
	i64 u0x5670d8d609f8e657, ; 577 => android/view/inputmethod/CompletionInfo
	i64 u0x567e316d6f33b908, ; 578 => com/microsoft/maui/PlatformFontSpan
	i64 u0x567fec0de4828e4d, ; 579 => androidx/navigation/NavDestination
	i64 u0x5681ede87251094b, ; 580 => android/graphics/Point
	i64 u0x56b3097a5575b1b4, ; 581 => androidx/fragment/app/strictmode/FragmentStrictMode$Policy
	i64 u0x56b8ba111176ba34, ; 582 => java/util/SequencedSet
	i64 u0x56b969a6299088b8, ; 583 => crc6452ffdc5b34af3a0f/MauiSwipeRefreshLayout
	i64 u0x56edd703570382fd, ; 584 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor
	i64 u0x5719cb7a45389d03, ; 585 => android/view/accessibility/AccessibilityRecord
	i64 u0x572c24ab8c2a9676, ; 586 => crc6488302ad6e9e4df1a/ImageLoaderResultCallback
	i64 u0x578cde9a6ed73057, ; 587 => android/graphics/ColorFilter
	i64 u0x57a5f044287480be, ; 588 => android/support/v4/media/session/MediaSessionCompat$Callback
	i64 u0x57e37830b49b24af, ; 589 => android/app/NotificationChannel
	i64 u0x57fe4a40460344db, ; 590 => android/os/Build$VERSION
	i64 u0x5828ebd38d20bd09, ; 591 => androidx/core/graphics/drawable/IconCompat
	i64 u0x586ab22a14755113, ; 592 => androidx/appcompat/app/ActionBar$Tab
	i64 u0x586dabed27a4661b, ; 593 => androidx/camera/core/impl/SessionProcessor$CaptureSessionRequestProcessor
	i64 u0x587b88a96aea462f, ; 594 => androidx/core/view/MenuItemCompat$OnActionExpandListener
	i64 u0x588938d1949d40f5, ; 595 => androidx/camera/core/internal/StreamSpecQueryResult
	i64 u0x588dc256d5772acc, ; 596 => android/content/pm/Signature
	i64 u0x58a16f68a40a6aaa, ; 597 => androidx/loader/content/Loader$OnLoadCompleteListener
	i64 u0x58cef513210a5ef8, ; 598 => androidx/appcompat/widget/ScrollingTabContainerView
	i64 u0x58eaa41af58865c7, ; 599 => android/view/GestureDetector
	i64 u0x58f3414ff259c4b8, ; 600 => android/view/WindowManager
	i64 u0x590c8bf0cf1f819c, ; 601 => androidx/camera/core/imagecapture/TakePictureManager
	i64 u0x5953ba6ba835be62, ; 602 => androidx/appcompat/widget/AppCompatRadioButton
	i64 u0x59aec9038ba996bb, ; 603 => androidx/camera/core/ImageCapture$OutputFileOptions
	i64 u0x59c187e6ae5a875c, ; 604 => crc645d80431ce5f73f11/MauiRecyclerView_3
	i64 u0x5a0112c65ffedf51, ; 605 => crc64338477404e88479c/TapAndPanGestureDetector
	i64 u0x5a0481aecc8a3ce2, ; 606 => androidx/activity/ComponentActivity
	i64 u0x5a1e0f66702d8c74, ; 607 => androidx/media3/exoplayer/drm/DrmSession
	i64 u0x5a6af884fe3c181e, ; 608 => android/os/Bundle
	i64 u0x5a77a96ff0678558, ; 609 => crc64b5e713d400f589b7/LinearGradientShaderFactory
	i64 u0x5a792352facc703d, ; 610 => android/view/ScaleGestureDetector
	i64 u0x5a79d0affe1f320a, ; 611 => androidx/camera/core/SurfaceRequest$TransformationInfo
	i64 u0x5a98238ba3158bd9, ; 612 => crc64f5844edce43316e7/Mapping_CustomPathDrawable
	i64 u0x5aeee04bda9a96eb, ; 613 => com/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener
	i64 u0x5af227f45402badb, ; 614 => androidx/media3/common/Format
	i64 u0x5b127b65fd30e55c, ; 615 => com/google/common/util/concurrent/ListenableFuture
	i64 u0x5b4122135dd0a9b0, ; 616 => androidx/recyclerview/widget/RecyclerView$AdapterDataObserver
	i64 u0x5b4fb71e2ebac7d6, ; 617 => androidx/coordinatorlayout/widget/CoordinatorLayout
	i64 u0x5b5c8ccc426ade08, ; 618 => androidx/camera/core/MeteringPoint
	i64 u0x5b5fa78636404de3, ; 619 => androidx/media3/session/MediaStyleNotificationHelper$MediaStyle
	i64 u0x5b81bc1333f27da7, ; 620 => android/os/Environment
	i64 u0x5b905726d9bc975f, ; 621 => android/widget/TextView
	i64 u0x5bfd65ae1a6e6ffc, ; 622 => android/app/Activity
	i64 u0x5bff61abc9367a53, ; 623 => android/graphics/drawable/ColorDrawable
	i64 u0x5c015cc2ad92408f, ; 624 => crc64354973402314325c/ItemAdapter
	i64 u0x5c2a60c822a3770a, ; 625 => android/view/Choreographer
	i64 u0x5c654b241f6531ca, ; 626 => androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat
	i64 u0x5c84941e071ca5f7, ; 627 => androidx/media3/ui/PlayerView
	i64 u0x5c8e3d6643b1f8a4, ; 628 => androidx/media3/ui/AspectRatioFrameLayout
	i64 u0x5c9a08d12cd9a5b9, ; 629 => android/view/ActionProvider
	i64 u0x5cac99184d9fff7d, ; 630 => androidx/camera/core/internal/StreamSpecsCalculator$Companion
	i64 u0x5cba207f014f46ab, ; 631 => kotlin/jvm/functions/Function0
	i64 u0x5d2f984fd41e3f9a, ; 632 => androidx/media3/session/SessionToken
	i64 u0x5d89d4b8c5a3d9db, ; 633 => crc64338477404e88479c/DragAndDropGestureHandler_CustomLocalStateData
	i64 u0x5dc39c885e2f74c8, ; 634 => androidx/camera/view/PreviewView
	i64 u0x5ddd9bb7c8b2fafa, ; 635 => androidx/camera/core/SurfaceOutput
	i64 u0x5ddf7f807cfc0078, ; 636 => androidx/drawerlayout/widget/DrawerLayout$DrawerListener
	i64 u0x5e1c513312ebc1b3, ; 637 => android/view/KeyEvent
	i64 u0x5e38b925960b7be9, ; 638 => android/graphics/Rect
	i64 u0x5e39bcd2842d2eda, ; 639 => androidx/camera/core/impl/MutableConfig
	i64 u0x5ecb4f9acecde0d5, ; 640 => android/hardware/camera2/CameraManager
	i64 u0x5ee70ac3ebe949b0, ; 641 => androidx/appcompat/app/AlertDialog
	i64 u0x5f5a9fc3430795a4, ; 642 => android/content/ContextWrapper
	i64 u0x5f7e709faf8646e0, ; 643 => java/lang/Short
	i64 u0x5f852bdf8b50fd34, ; 644 => androidx/camera/core/impl/SurfaceConfig$ConfigSource
	i64 u0x5fcf59a6fdef477c, ; 645 => crc640360c8a960a6805b/StaticTextLayout
	i64 u0x5fe3480810f7fa98, ; 646 => androidx/media3/datasource/DataSource
	i64 u0x6026ccdf174d8a44, ; 647 => androidx/fragment/app/Fragment$SavedState
	i64 u0x604f2c0a4ec7dc6d, ; 648 => androidx/media3/common/MediaItem$SubtitleConfiguration$Builder
	i64 u0x60512d5bcf66b69d, ; 649 => crc64338477404e88479c/ModalNavigationManager_ModalFragment_CustomComponentDialog
	i64 u0x6052034b1fd2f322, ; 650 => mono/androidx/viewpager/widget/ViewPager_OnAdapterChangeListenerImplementor
	i64 u0x60671d93f827841c, ; 651 => androidx/media3/exoplayer/source/MediaPeriod
	i64 u0x606c0552cf86ec9a, ; 652 => androidx/recyclerview/widget/PagerSnapHelper
	i64 u0x60758c46d2753a9b, ; 653 => com/microsoft/maui/PlatformAppCompatTextView
	i64 u0x60f4eef2e292de33, ; 654 => android/graphics/LinearGradient
	i64 u0x61030996527b4bbc, ; 655 => android/app/UiModeManager
	i64 u0x61183bfd8b6bd8fc, ; 656 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter
	i64 u0x612a41da6ab82674, ; 657 => crc6452ffdc5b34af3a0f/NavigationRootManager_ElementBasedFragment
	i64 u0x612bded5eda4d0db, ; 658 => androidx/camera/core/impl/Config$Option
	i64 u0x6149cc868c1eff6d, ; 659 => android/view/SurfaceControlInputReceiver
	i64 u0x6167b463f4358303, ; 660 => android/hardware/camera2/params/InputConfiguration
	i64 u0x61e294aa76550052, ; 661 => java/util/Comparator
	i64 u0x6207a21d689e23d8, ; 662 => androidx/media3/exoplayer/trackselection/TrackSelectionArray
	i64 u0x620acfa7c9394d4b, ; 663 => androidx/customview/widget/Openable
	i64 u0x6219335ac57fb821, ; 664 => java/io/Serializable
	i64 u0x6220c7ea6623515a, ; 665 => com/google/android/material/shape/CornerTreatment
	i64 u0x623406f90ec5da2b, ; 666 => androidx/camera/core/impl/DeferrableSurface
	i64 u0x6260a9d5dac2c97c, ; 667 => androidx/core/view/ViewStructureCompat
	i64 u0x627cbc0d3688d726, ; 668 => androidx/camera/core/ImageAnalysis$Analyzer
	i64 u0x6298165c6bad7ccc, ; 669 => com/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener
	i64 u0x62daf35c931c09d6, ; 670 => android/content/BroadcastReceiver
	i64 u0x632306ed61138328, ; 671 => android/widget/FrameLayout$LayoutParams
	i64 u0x632b2c8978b75d3a, ; 672 => androidx/browser/customtabs/CustomTabsIntent
	i64 u0x6341d902373b98e2, ; 673 => com/google/android/material/tabs/TabLayout$Tab
	i64 u0x63655144c8397d37, ; 674 => android/hardware/camera2/CameraDevice
	i64 u0x6398dbf9569985fe, ; 675 => androidx/recyclerview/widget/RecyclerView$LayoutManager
	i64 u0x63a4d78ba35c4679, ; 676 => androidx/core/view/ActionProvider$SubUiVisibilityListener
	i64 u0x63bd71d5901196c2, ; 677 => androidx/media3/common/StreamKey
	i64 u0x63c6656042cac4ee, ; 678 => android/hardware/camera2/params/StreamConfigurationMap
	i64 u0x6408578172862f8d, ; 679 => java/lang/Void
	i64 u0x6489c4c28022368a, ; 680 => androidx/media3/exoplayer/source/chunk/MediaChunkIterator
	i64 u0x64b068dd4783bc6b, ; 681 => androidx/appcompat/widget/SearchView$OnQueryTextListener
	i64 u0x64b7578e403114fc, ; 682 => androidx/camera/view/internal/ScreenFlashUiInfo$ProviderType
	i64 u0x64eb2952fb14f277, ; 683 => androidx/media3/common/MediaItem
	i64 u0x6517c35353b9c5e6, ; 684 => crc6452ffdc5b34af3a0f/ScopedFragment
	i64 u0x6531c3e6b4a10d86, ; 685 => android/app/AlertDialog$Builder
	i64 u0x657a76c5c5e8ae37, ; 686 => androidx/camera/core/impl/SessionConfig$SessionError
	i64 u0x6582dfd3e9045b28, ; 687 => androidx/core/view/DragAndDropPermissionsCompat
	i64 u0x6586889e8594dad8, ; 688 => android/widget/BaseAdapter
	i64 u0x658dbda6541675f0, ; 689 => android/graphics/Paint$FontMetricsInt
	i64 u0x659c2abe67a29887, ; 690 => java/lang/Iterable
	i64 u0x65b48068a8beab4c, ; 691 => org/xmlpull/v1/XmlPullParserException
	i64 u0x65ee41a413ae2273, ; 692 => androidx/camera/core/impl/OutputSurfaceConfiguration
	i64 u0x65f6b14b7e978927, ; 693 => java/io/IOException
	i64 u0x665e90753f8d897c, ; 694 => androidx/core/view/accessibility/AccessibilityNodeProviderCompat
	i64 u0x665f83e363ae9dac, ; 695 => android/graphics/Shader
	i64 u0x667b50f3f2edbb73, ; 696 => android/graphics/drawable/ShapeDrawable$ShaderFactory
	i64 u0x670b5da4ef851f7e, ; 697 => android/support/v4/media/session/MediaSessionCompat$Token
	i64 u0x6764a13a5d25a65c, ; 698 => androidx/recyclerview/widget/RecyclerView$ItemDecoration
	i64 u0x676ecd3ec715a593, ; 699 => androidx/camera/core/ViewPort
	i64 u0x67765cb3732f0b32, ; 700 => android/text/Layout$Alignment
	i64 u0x679eda0ea37ca187, ; 701 => androidx/camera/core/impl/SessionConfig$ErrorListener
	i64 u0x67d192a418faaea7, ; 702 => androidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo
	i64 u0x67dc7ca4607a2fb3, ; 703 => crc6452ffdc5b34af3a0f/MauiHybridWebViewClient
	i64 u0x6825299c0d99280a, ; 704 => androidx/media3/exoplayer/analytics/PlayerId
	i64 u0x683b34ba77d878ed, ; 705 => java/util/concurrent/TimeUnit
	i64 u0x683ec3c5964ae14b, ; 706 => android/view/MenuItem$OnMenuItemClickListener
	i64 u0x6855fe4074b200b4, ; 707 => crc64b5e713d400f589b7/RadialGradientShaderFactory
	i64 u0x6890915f17dcdf32, ; 708 => android/graphics/Bitmap$CompressFormat
	i64 u0x68a4399e0a319f0e, ; 709 => androidx/camera/video/FallbackStrategy
	i64 u0x68ac1b9ebadea92e, ; 710 => com/google/android/material/elevation/ElevationOverlayProvider
	i64 u0x68b44b76762752b2, ; 711 => android/app/DatePickerDialog
	i64 u0x68b47cdb88f02749, ; 712 => androidx/camera/core/RetryPolicy
	i64 u0x68cf9abeceb59cea, ; 713 => androidx/core/text/PrecomputedTextCompat
	i64 u0x6922efe928410687, ; 714 => crc64e1fb321c08285b90/ListViewRenderer
	i64 u0x698099bd1c6d8d21, ; 715 => crc64e1fb321c08285b90/ConditionalFocusLayout
	i64 u0x69fab2ddc13ff3d5, ; 716 => androidx/camera/core/imagecapture/ImageCaptureControl
	i64 u0x6a38c6c5c11ae340, ; 717 => crc6452ffdc5b34af3a0f/StepperHandlerHolder
	i64 u0x6a90d6f52144b231, ; 718 => java/lang/AbstractMethodError
	i64 u0x6aa7d9af28b4551f, ; 719 => java/net/SocketTimeoutException
	i64 u0x6adf1754236db113, ; 720 => androidx/viewpager2/widget/ViewPager2$OnPageChangeCallback
	i64 u0x6b03329dfc544596, ; 721 => crc6452ffdc5b34af3a0f/MauiWebView
	i64 u0x6b51aa65df315197, ; 722 => com/google/android/material/appbar/HeaderScrollingViewBehavior
	i64 u0x6b6e62f3c48710bf, ; 723 => androidx/navigation/NavInflater
	i64 u0x6bb31a092bd1feb9, ; 724 => androidx/recyclerview/widget/OrientationHelper
	i64 u0x6bb600235e010d5b, ; 725 => android/view/KeyboardShortcutInfo
	i64 u0x6bc8f35a99a4e80b, ; 726 => androidx/media3/exoplayer/video/spherical/CameraMotionListener
	i64 u0x6be9c486e045423d, ; 727 => com/google/android/material/appbar/AppBarLayout
	i64 u0x6bed14024a62c9d6, ; 728 => androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy
	i64 u0x6bf4e69d043f6219, ; 729 => androidx/recyclerview/widget/RecyclerView$State
	i64 u0x6c5d67d46b4bd8f5, ; 730 => androidx/camera/core/impl/CameraConfig$PostviewFormatSelector
	i64 u0x6c87c98e7c02707b, ; 731 => androidx/viewpager2/widget/ViewPager2
	i64 u0x6c9ebc339853fa5a, ; 732 => androidx/recyclerview/widget/RecyclerView$RecycledViewPool
	i64 u0x6cfaf400e1425441, ; 733 => androidx/core/app/NotificationCompat$Action
	i64 u0x6d5687238e2037cb, ; 734 => android/text/TextUtils
	i64 u0x6d6e4849a9c9cd73, ; 735 => androidx/fragment/app/FragmentContainerView
	i64 u0x6d736771e9774ab2, ; 736 => androidx/core/view/WindowInsetsAnimationControllerCompat
	i64 u0x6da2d17ddad35bc5, ; 737 => android/os/UserHandle
	i64 u0x6dbc029eb41711b7, ; 738 => crc6452ffdc5b34af3a0f/WrapperView
	i64 u0x6dbcd0082585a8fa, ; 739 => androidx/appcompat/app/ActionBar$LayoutParams
	i64 u0x6dc0577159300216, ; 740 => androidx/appcompat/widget/TooltipCompat
	i64 u0x6dc4e91e9c2afbd9, ; 741 => androidx/camera/lifecycle/ProcessCameraProvider
	i64 u0x6e08471d92d44bae, ; 742 => kotlinx/serialization/SerializationStrategy
	i64 u0x6e0fb15bd0f04d15, ; 743 => java/lang/StackTraceElement
	i64 u0x6e23edb7ba3b4ddb, ; 744 => android/runtime/XmlReaderResourceParser
	i64 u0x6e2d46ff630000cf, ; 745 => androidx/camera/core/impl/CameraCaptureFailure
	i64 u0x6e5d338a24aafe63, ; 746 => crc6452ffdc5b34af3a0f/NavigationViewFragment
	i64 u0x6e5d903dea237f3d, ; 747 => crc648a9457dd5f66374f/ExtMauiHorizontalScrollView
	i64 u0x6e64d524730b0605, ; 748 => androidx/navigation/NavGraph
	i64 u0x6e9ff973248919e1, ; 749 => android/speech/tts/TextToSpeech$OnInitListener
	i64 u0x6ea4b64ad16a7f22, ; 750 => crc640ec207abc449b2ca/RecyclerViewContainer
	i64 u0x6ee7a6ff5acf323e, ; 751 => crc64f1558ff7e185dbfc/CameraManager_ResolutionFilter
	i64 u0x6ef4975bdb7af18f, ; 752 => android/view/MotionEvent
	i64 u0x6ef7816e17e24358, ; 753 => android/graphics/Canvas
	i64 u0x6f06b4caf5877ade, ; 754 => androidx/camera/core/impl/AdapterCameraInfo
	i64 u0x6f1689b942105844, ; 755 => androidx/media3/exoplayer/PlayerMessage$Target
	i64 u0x6f2c25bc76a30eb3, ; 756 => mono/android/app/TimePickerDialog_OnTimeSetListenerImplementor
	i64 u0x6f5fe694e0d3ad71, ; 757 => android/service/notification/StatusBarNotification
	i64 u0x6f613a87c77307d0, ; 758 => crc645d80431ce5f73f11/MauiCarouselRecyclerView_CarouselViewOnGlobalLayoutListener
	i64 u0x6f7d2d169e2ce1a7, ; 759 => androidx/core/view/ActionProvider$VisibilityListener
	i64 u0x6fc88779b51adf4a, ; 760 => crc645d80431ce5f73f11/CenterSnapHelper
	i64 u0x6ff236a19c39d939, ; 761 => crc645d80431ce5f73f11/NongreedySnapHelper_InitialScrollListener
	i64 u0x700106d0eaef6253, ; 762 => androidx/media3/exoplayer/video/VideoRendererEventListener
	i64 u0x700da72fda7f1d48, ; 763 => androidx/navigation/NavDirections
	i64 u0x70119df59a49b73c, ; 764 => android/text/style/SubscriptSpan
	i64 u0x70255d9c80f1dced, ; 765 => androidx/camera/core/internal/TargetConfig
	i64 u0x703efa6e1ccb459a, ; 766 => android/window/TrustedPresentationThresholds
	i64 u0x7051eff2058593fd, ; 767 => kotlinx/coroutines/flow/StateFlow
	i64 u0x7099dcd62c409c90, ; 768 => androidx/recyclerview/widget/RecyclerView$SmoothScroller
	i64 u0x70a08622aaf16a57, ; 769 => android/provider/MediaStore$Images
	i64 u0x70d7b31d753f209e, ; 770 => android/view/accessibility/AccessibilityManager
	i64 u0x714152b8b4c7f7d6, ; 771 => java/security/KeyFactory
	i64 u0x714b208e192a592e, ; 772 => androidx/media3/exoplayer/DecoderCounters
	i64 u0x715a86841a0ffdfc, ; 773 => android/graphics/drawable/DrawableWrapper
	i64 u0x718e83ff6d8bb83a, ; 774 => androidx/media3/ui/PlayerView$ControllerVisibilityListener
	i64 u0x71a366471b83c5b5, ; 775 => android/graphics/PorterDuff$Mode
	i64 u0x71eba2dd30bbaae2, ; 776 => androidx/camera/extensions/ExtensionsManager
	i64 u0x71fd27294bda99ec, ; 777 => crc64e1fb321c08285b90/ListViewRenderer_ListViewScrollDetector
	i64 u0x720cd712e1248c34, ; 778 => java/util/Iterator
	i64 u0x720de60454675dd1, ; 779 => java/lang/NoSuchFieldException
	i64 u0x72250d9fc64488cb, ; 780 => crc6452ffdc5b34af3a0f/MauiTextView
	i64 u0x7229c6ba83aefb2a, ; 781 => androidx/camera/core/impl/OptionsBundle
	i64 u0x7263818030e7e9ae, ; 782 => android/app/Application$ActivityLifecycleCallbacks
	i64 u0x7277a93836a4600e, ; 783 => androidx/core/content/FileProvider
	i64 u0x72902a32c8eefca5, ; 784 => mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor
	i64 u0x72a1f916524f134d, ; 785 => android/graphics/MaskFilter
	i64 u0x72a9b2668bfa9f2e, ; 786 => androidx/media3/exoplayer/ExoPlayer$DeviceComponent
	i64 u0x72c3927cb11ea168, ; 787 => androidx/camera/core/impl/SurfaceConfig$ConfigSize
	i64 u0x72eebb0413ddcb57, ; 788 => androidx/core/view/MenuProvider
	i64 u0x72f2a1098fdc8e8d, ; 789 => androidx/core/view/ScrollingView
	i64 u0x731d258e71c0cf1e, ; 790 => java/lang/Appendable
	i64 u0x733b91fe6ad98558, ; 791 => java/util/SequencedCollection
	i64 u0x734d10277a2fa3c8, ; 792 => crc6452ffdc5b34af3a0f/ContainerView
	i64 u0x73596717b501b881, ; 793 => androidx/media3/decoder/DecoderInputBuffer
	i64 u0x7366b72149b10768, ; 794 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor
	i64 u0x7367a2232d18a62a, ; 795 => java/lang/AbstractStringBuilder
	i64 u0x73df24c7eefd23ea, ; 796 => androidx/camera/core/impl/utils/ExifData
	i64 u0x73e318a585bfc2e1, ; 797 => androidx/navigation/fragment/FragmentNavigator
	i64 u0x73fc72de87024687, ; 798 => androidx/media3/common/MediaItem$ClippingConfiguration
	i64 u0x742016c9b209dd21, ; 799 => crc64338477404e88479c/GenericMenuClickListener
	i64 u0x743141b26b46ed76, ; 800 => androidx/camera/core/impl/EncoderProfilesProxy
	i64 u0x74cb19d4a7c9afb6, ; 801 => androidx/camera/core/ExtendableBuilder
	i64 u0x74fec31fac75a39b, ; 802 => android/os/Message
	i64 u0x75106b52d2e6f9bb, ; 803 => microsoft/maui/platform/MauiNavHostFragment
	i64 u0x7522945af31b2b2c, ; 804 => crc649ff77a65592e7d55/TabbedPageManager_Listeners
	i64 u0x75469416bb30381b, ; 805 => androidx/media3/exoplayer/ExoPlayer$VideoComponent
	i64 u0x75529b356df7b6a6, ; 806 => androidx/media3/datasource/TransferListener
	i64 u0x75591c18ddf5e52d, ; 807 => mono/android/TypeManager
	i64 u0x75831fb649777eb9, ; 808 => androidx/camera/core/impl/RequestProcessor
	i64 u0x759417050ff83072, ; 809 => android/support/v4/media/session/IMediaControllerCallback
	i64 u0x75a8e484d572136c, ; 810 => androidx/core/view/PointerIconCompat
	i64 u0x75c0676a362007df, ; 811 => android/view/ScaleGestureDetector$OnScaleGestureListener
	i64 u0x75c5771f2c4153c9, ; 812 => android/graphics/BlurMaskFilter$Blur
	i64 u0x75f1e5a53d8f5c3e, ; 813 => androidx/media3/exoplayer/ExoPlayer$AudioComponent
	i64 u0x76011f516f0fd1fa, ; 814 => kotlin/reflect/KType
	i64 u0x7618d20d66679b07, ; 815 => android/view/ActionMode$Callback
	i64 u0x761f7e1b6e4804f9, ; 816 => androidx/lifecycle/viewmodel/CreationExtras
	i64 u0x763b0c46a0d100da, ; 817 => crc640ec207abc449b2ca/ShellFragmentContainer
	i64 u0x763c2670ea45f55c, ; 818 => android/graphics/drawable/Drawable
	i64 u0x7672ff526305decc, ; 819 => kotlin/coroutines/CoroutineContext
	i64 u0x769858d73eac9d5a, ; 820 => android/widget/AdapterView$OnItemSelectedListener
	i64 u0x7699e204374e476e, ; 821 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ElementViewHolder
	i64 u0x76cbd2104dd555ed, ; 822 => android/content/Context
	i64 u0x76cd544434e023e9, ; 823 => android/widget/AbsoluteLayout
	i64 u0x76cdf4e28f731f13, ; 824 => androidx/media3/common/MediaItem$Subtitle
	i64 u0x771d7f310992d805, ; 825 => androidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder
	i64 u0x775f4b008c098a1a, ; 826 => androidx/core/view/WindowInsetsAnimationCompat$BoundsCompat
	i64 u0x776fac8615206e88, ; 827 => crc6468b6408a11370c2f/WebAuthenticatorIntermediateActivity
	i64 u0x778cfba384f8d504, ; 828 => androidx/viewpager2/adapter/FragmentStateAdapter
	i64 u0x77e17daf4f2798d3, ; 829 => androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener
	i64 u0x77f013f4840c6e9d, ; 830 => android/widget/SeekBar$OnSeekBarChangeListener
	i64 u0x782ecc3f7b0f1702, ; 831 => crc6452ffdc5b34af3a0f/BorderDrawable
	i64 u0x786e5a40bb3c74ca, ; 832 => android/webkit/ValueCallback
	i64 u0x78a8a09e70ef45d0, ; 833 => androidx/lifecycle/LifecycleObserver
	i64 u0x78bd50b8041f8ec3, ; 834 => android/text/style/StyleSpan
	i64 u0x78ccd36665bb4ea0, ; 835 => androidx/camera/core/impl/OutputSurface
	i64 u0x78e3de77156d950a, ; 836 => androidx/media3/exoplayer/FormatHolder
	i64 u0x78e857b64c18f122, ; 837 => androidx/camera/video/MediaStoreOutputOptions
	i64 u0x78f85ce39df68ca7, ; 838 => androidx/activity/OnBackPressedDispatcher
	i64 u0x790004a16b482410, ; 839 => kotlinx/coroutines/flow/SharedFlow
	i64 u0x79010cb7f8e68c03, ; 840 => androidx/core/app/SharedElementCallback
	i64 u0x7923685decfc70fb, ; 841 => mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor
	i64 u0x794945e513b3eb18, ; 842 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ShellLinearLayout
	i64 u0x7977deebacec08ab, ; 843 => androidx/activity/ComponentDialog
	i64 u0x7988fa0f526a36f4, ; 844 => mono/androidx/recyclerview/widget/RecyclerView_OnItemTouchListenerImplementor
	i64 u0x799e5cf8387079f0, ; 845 => android/text/format/DateFormat
	i64 u0x79b8e6ed4e0962cc, ; 846 => android/webkit/WebView
	i64 u0x7a113e3c4f34e47e, ; 847 => androidx/media3/exoplayer/LoadControl
	i64 u0x7a5d42aa9daae09b, ; 848 => crc645d80431ce5f73f11/ItemContentView
	i64 u0x7b20a8c72b4caa3d, ; 849 => crc64338477404e88479c/ModalNavigationManager_ModalFragment
	i64 u0x7b3aeb75b65cbd49, ; 850 => java/security/spec/PKCS8EncodedKeySpec
	i64 u0x7b56b4292dd91c4f, ; 851 => androidx/appcompat/app/ActionBar$OnMenuVisibilityListener
	i64 u0x7b6583ae2b53d8c6, ; 852 => androidx/media3/ui/PlayerNotificationManager$BitmapCallback
	i64 u0x7b7af49dc7612e19, ; 853 => com/google/android/material/bottomnavigation/BottomNavigationMenuView
	i64 u0x7b8092c4b75aeeb1, ; 854 => crc648e35430423bd4943/SKGLTextureViewRenderer
	i64 u0x7b8a450ef3d3c146, ; 855 => androidx/core/view/WindowInsetsAnimationCompat
	i64 u0x7b925bdca68a0101, ; 856 => java/util/ArrayList
	i64 u0x7bc72d027e66ad3c, ; 857 => android/view/Display
	i64 u0x7bd1fdf400377ed4, ; 858 => androidx/camera/core/impl/SurfaceConfig
	i64 u0x7c399b8939d0b28d, ; 859 => crc64e1fb321c08285b90/VisualElementRenderer_1
	i64 u0x7c7bf58ca7530650, ; 860 => androidx/camera/core/impl/CameraCaptureMetaData$AfMode
	i64 u0x7c93df30f68cf9a7, ; 861 => javax/security/auth/Subject
	i64 u0x7d1282be62fee357, ; 862 => android/text/Layout
	i64 u0x7d2c987ae4cd1b0a, ; 863 => androidx/appcompat/app/AppCompatDelegate
	i64 u0x7d8f1e430aa19c68, ; 864 => android/content/ContentProvider
	i64 u0x7dc1a13534998131, ; 865 => androidx/camera/video/FileOutputOptions$Builder
	i64 u0x7df3b1f2d68d053d, ; 866 => androidx/media3/exoplayer/upstream/Allocator
	i64 u0x7dff4c2d4c028447, ; 867 => androidx/appcompat/widget/SearchView$OnCloseListener
	i64 u0x7e0053f5a1f97282, ; 868 => android/util/StateSet
	i64 u0x7e201ad40955df46, ; 869 => android/os/Parcel
	i64 u0x7e6385a92572b003, ; 870 => com/microsoft/maui/PlatformShadowDrawable
	i64 u0x7e8db786ecef7243, ; 871 => androidx/camera/core/UseCase
	i64 u0x7e9c8acc3bd837bf, ; 872 => androidx/media3/common/ColorInfo
	i64 u0x7eaadfc0d327456a, ; 873 => crc6452ffdc5b34af3a0f/MauiStepper
	i64 u0x7eec405468a6a0e7, ; 874 => crc64f5844edce43316e7/PlatformRotator
	i64 u0x7ef93854923e0913, ; 875 => java/util/Locale
	i64 u0x7f0d7baf92a81e22, ; 876 => androidx/viewpager/widget/ViewPager$PageTransformer
	i64 u0x7f486b0eaf366c11, ; 877 => android/view/TextureView
	i64 u0x7f8502d3539fedda, ; 878 => androidx/camera/core/ImageCapture$ScreenFlash
	i64 u0x7fc6286783d5249d, ; 879 => java/security/Key
	i64 u0x7fd0c0cbdc4f6c31, ; 880 => crc645d80431ce5f73f11/StartSnapHelper
	i64 u0x7fd6b531797aa365, ; 881 => java/net/URL
	i64 u0x80348c0f373ed0ed, ; 882 => androidx/media3/common/TrackSelectionOverride
	i64 u0x803c00108539f471, ; 883 => androidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener
	i64 u0x8087343f088cdd62, ; 884 => kotlinx/serialization/descriptors/SerialKind
	i64 u0x809e3b051f381ee7, ; 885 => java/lang/StringBuilder
	i64 u0x80ab8661037dcaa4, ; 886 => androidx/camera/core/SurfaceRequest
	i64 u0x80b2eff68480f860, ; 887 => androidx/core/app/ComponentActivity
	i64 u0x80db8a1ba14a2f71, ; 888 => androidx/camera/view/PreviewView$ScaleType
	i64 u0x811a6571399defdf, ; 889 => android/view/ViewTreeObserver
	i64 u0x81329494ac82a700, ; 890 => crc640360c8a960a6805b/PlatformSignaturePad
	i64 u0x8140e7fab50af9a3, ; 891 => androidx/media3/common/ColorInfo$Builder
	i64 u0x816611be5081e6a6, ; 892 => androidx/loader/content/Loader$OnLoadCanceledListener
	i64 u0x81a9b57a7455bc09, ; 893 => crc6486af4e8104107bae/LayoutViewGroupExt
	i64 u0x81b9feefc4c8a54b, ; 894 => android/graphics/drawable/AnimationDrawable
	i64 u0x81f19eb23092b621, ; 895 => android/widget/PopupWindow$OnDismissListener
	i64 u0x823209080aca23c1, ; 896 => android/media/session/MediaSessionManager$RemoteUserInfo
	i64 u0x823976c4014e2915, ; 897 => androidx/media3/exoplayer/text/TextOutput
	i64 u0x823c54a67f346ebd, ; 898 => android/view/ViewGroup$OnHierarchyChangeListener
	i64 u0x824360861fd72eec, ; 899 => android/media/AudioAttributes
	i64 u0x82437651e84d8ef1, ; 900 => mono/androidx/appcompat/widget/SearchView_OnSuggestionListenerImplementor
	i64 u0x824a99083b1c9980, ; 901 => androidx/media3/exoplayer/LoadingInfo
	i64 u0x82d156baaac6b271, ; 902 => com/google/android/material/button/MaterialButton
	i64 u0x82d4b802f5f16be5, ; 903 => androidx/core/view/ContentInfoCompat
	i64 u0x82d7d7eecd15c435, ; 904 => androidx/camera/core/ImageCapture$OnImageSavedCallback
	i64 u0x82e3a90c05352a60, ; 905 => android/os/ResultReceiver
	i64 u0x831ac2299215129e, ; 906 => android/text/style/ClickableSpan
	i64 u0x8382b117e5ce1b08, ; 907 => crc64fcf28c0e24b4cc31/ToolbarHandler_ProcessBackClick
	i64 u0x8389777d2cbf57e8, ; 908 => kotlin/jvm/internal/markers/KMappedMarker
	i64 u0x83b023293bf67f91, ; 909 => androidx/media3/common/Player$Commands
	i64 u0x83bb9cdbe24fab11, ; 910 => androidx/media/VolumeProviderCompat
	i64 u0x8407971d2e654189, ; 911 => androidx/core/view/contentcapture/ContentCaptureSessionCompat
	i64 u0x84847e4e3d1decde, ; 912 => android/graphics/drawable/Animatable
	i64 u0x849891cbd238b929, ; 913 => crc6452ffdc5b34af3a0f/MauiPageControl_TEditClickListener
	i64 u0x84a0e1080b630a71, ; 914 => android/util/TypedValue
	i64 u0x84d123dfffb8220d, ; 915 => androidx/media3/common/util/Consumer
	i64 u0x84de4b691bbece02, ; 916 => android/view/WindowInsetsAnimation$Bounds
	i64 u0x84f94178aab6cc34, ; 917 => java/lang/CharSequence
	i64 u0x851714794ae293d4, ; 918 => android/content/ContentValues
	i64 u0x852b5457ebdd5c87, ; 919 => android/view/ViewGroup$LayoutParams
	i64 u0x85484318643883ec, ; 920 => mono/androidx/swiperefreshlayout/widget/SwipeRefreshLayout_OnRefreshListenerImplementor
	i64 u0x857e9a08c0f1b76a, ; 921 => java/lang/Math
	i64 u0x85928bf84afcf5c1, ; 922 => android/text/style/LineHeightSpan
	i64 u0x85ec68b2c000d758, ; 923 => androidx/media3/exoplayer/RendererCapabilities$Listener
	i64 u0x85f0f67c9a393c74, ; 924 => mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor
	i64 u0x8630444b8c4fb189, ; 925 => crc640ec207abc449b2ca/ShellSectionRenderer
	i64 u0x86441d8f4c5feb95, ; 926 => androidx/camera/core/impl/EncoderProfilesProvider
	i64 u0x867603248aefbc4a, ; 927 => androidx/camera/core/ImageProxy
	i64 u0x86e2d20cd088700a, ; 928 => androidx/media3/common/Timeline
	i64 u0x8757d6a5a0083426, ; 929 => mono/androidx/fragment/app/FragmentOnAttachListenerImplementor
	i64 u0x877c43ba36542679, ; 930 => androidx/media3/exoplayer/analytics/AnalyticsListener
	i64 u0x8817ebe79901b58b, ; 931 => androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener
	i64 u0x888209cd5c645835, ; 932 => androidx/media3/common/ErrorMessageProvider
	i64 u0x888700b03d541d93, ; 933 => java/lang/RuntimeException
	i64 u0x889cf012a76d5159, ; 934 => crc6452ffdc5b34af3a0f/MauiTimePicker
	i64 u0x88e5d5f2f75be295, ; 935 => androidx/media3/common/Metadata
	i64 u0x88f0e2119cc57d0c, ; 936 => crc6436e425876cb621d9/FragmentLifecycleManager
	i64 u0x88f7510c649f4a97, ; 937 => java/io/InputStream
	i64 u0x8934c4f215102479, ; 938 => androidx/core/content/pm/ShortcutInfoCompat
	i64 u0x89573b2343b833d9, ; 939 => crc6452ffdc5b34af3a0f/MauiBoxView
	i64 u0x895c33d930fba4ec, ; 940 => crc640ec207abc449b2ca/ShellFragmentStateAdapter
	i64 u0x896dd3f945a64fd8, ; 941 => kotlinx/serialization/descriptors/SerialDescriptor
	i64 u0x8977b0575e6138b2, ; 942 => androidx/media3/common/Label
	i64 u0x89b4e5207bc2bd03, ; 943 => crc64e1fb321c08285b90/ViewRenderer_2
	i64 u0x89bb78ecf66b1453, ; 944 => android/view/SurfaceControl
	i64 u0x89dd9f6b9a07e7dc, ; 945 => crc6452ffdc5b34af3a0f/MauiMaterialButton
	i64 u0x8a1490d8574c80bb, ; 946 => com/google/android/material/appbar/AppBarLayout$BaseBehavior
	i64 u0x8a1927818aa18084, ; 947 => javax/net/ssl/KeyManager
	i64 u0x8a3ea3c274e8ce68, ; 948 => java/lang/Character
	i64 u0x8a5349863088c262, ; 949 => androidx/appcompat/app/ActionBarDrawerToggle
	i64 u0x8a6d217b35a9e388, ; 950 => android/app/TimePickerDialog$OnTimeSetListener
	i64 u0x8a827f97b9e96017, ; 951 => crc64ba438d8f48cf7e75/ActivityLifecycleContextListener
	i64 u0x8a89060c7bb2fa66, ; 952 => crc6452ffdc5b34af3a0f/MauiShapeView
	i64 u0x8abd2c329d2cfb3b, ; 953 => androidx/camera/core/impl/SurfaceStreamSpecQueryResult
	i64 u0x8abed19b023ffa85, ; 954 => androidx/core/util/Pair
	i64 u0x8bc84b37d30c7ba0, ; 955 => android/widget/ImageButton
	i64 u0x8c015130260df8da, ; 956 => android/media/MediaMetadataRetriever
	i64 u0x8c273b59f062071a, ; 957 => androidx/camera/core/CameraProvider
	i64 u0x8c77114d6dcd93fe, ; 958 => java/util/function/Function
	i64 u0x8c92f6338e96a4a1, ; 959 => com/google/android/material/navigation/NavigationView
	i64 u0x8c9cbedbb1657afd, ; 960 => android/content/pm/ApplicationInfo
	i64 u0x8ce61e47a9725bab, ; 961 => androidx/recyclerview/widget/RecyclerView$Adapter
	i64 u0x8d02bdee4d42aad5, ; 962 => androidx/lifecycle/ViewModelStoreOwner
	i64 u0x8d336818f5dae75a, ; 963 => androidx/recyclerview/widget/RecyclerView
	i64 u0x8d3ef13fbeef669c, ; 964 => androidx/appcompat/view/menu/MenuBuilder$Callback
	i64 u0x8d5b24a0831de33b, ; 965 => crc6486af4e8104107bae/CustomInputConnection
	i64 u0x8dd45477b60254b9, ; 966 => androidx/media3/exoplayer/PlaybackLooperProvider
	i64 u0x8dde213f6a8ff31c, ; 967 => crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_HeaderContainer
	i64 u0x8ddf972a307df226, ; 968 => androidx/media3/session/MediaSession$Builder
	i64 u0x8df3e8c200a502d7, ; 969 => crc64338477404e88479c/ControlsAccessibilityDelegate
	i64 u0x8e0cbfbaba7671bf, ; 970 => androidx/camera/core/processing/SurfaceProcessorInternal
	i64 u0x8e795a0bfb2fe84b, ; 971 => androidx/core/os/LocaleListCompat
	i64 u0x8e7a7278f27efaf0, ; 972 => crc6452ffdc5b34af3a0f/FragmentManagerExtensions_CallBacks
	i64 u0x8e80a8cd4be83f8c, ; 973 => android/view/ActionMode
	i64 u0x8ed1624d39198279, ; 974 => android/provider/MediaStore$Audio$Media
	i64 u0x8eedeff2522abc60, ; 975 => kotlinx/serialization/encoding/CompositeDecoder$Companion
	i64 u0x8ef620892da8a06a, ; 976 => android/view/MenuInflater
	i64 u0x8f0cb47bdce20841, ; 977 => android/text/Spanned
	i64 u0x8f43d8e91285e5d7, ; 978 => java/lang/IllegalAccessException
	i64 u0x8f51766d700c2991, ; 979 => crc645d80431ce5f73f11/GridLayoutSpanSizeLookup
	i64 u0x8f5224f15feb918a, ; 980 => crc64fcf28c0e24b4cc31/SwitchHandler_CheckedChangeListener
	i64 u0x8f6070b59054e406, ; 981 => androidx/core/view/OnApplyWindowInsetsListener
	i64 u0x8fc41936751c807d, ; 982 => crc645d80431ce5f73f11/CarouselViewAdapter_2
	i64 u0x9046b03cb7077f82, ; 983 => androidx/media3/common/util/Size
	i64 u0x9059b8948625bb9c, ; 984 => androidx/core/content/PermissionChecker
	i64 u0x907300d9cadf3d62, ; 985 => java/util/Set
	i64 u0x90b4aeb45636cd6a, ; 986 => mono/android/runtime/OutputStreamAdapter
	i64 u0x90b7a39fee5a38a1, ; 987 => crc64fcf28c0e24b4cc31/SliderHandler_SeekBarChangeListener
	i64 u0x90c66f160d69bbf7, ; 988 => android/text/style/BulletSpan
	i64 u0x912b555aa0007288, ; 989 => android/view/ViewManager
	i64 u0x9183f81557218751, ; 990 => androidx/core/app/RemoteInput
	i64 u0x918d5892c09695ca, ; 991 => androidx/media3/common/MediaMetadata$Builder
	i64 u0x91c38e3191efb825, ; 992 => androidx/core/app/NotificationCompat$BubbleMetadata
	i64 u0x92188d393e2af2d2, ; 993 => java/lang/Throwable
	i64 u0x924fb937aac4a5a0, ; 994 => crc6488302ad6e9e4df1a/ImageLoaderCallback
	i64 u0x927b15ca7e9d7717, ; 995 => androidx/camera/core/CameraInfo
	i64 u0x92b59c839bc46278, ; 996 => java/lang/Thread
	i64 u0x92d169110b3a5841, ; 997 => androidx/camera/core/impl/UseCaseConfig
	i64 u0x92e0260f69f10ee8, ; 998 => androidx/browser/customtabs/CustomTabsSession
	i64 u0x935d88e2c2e5941f, ; 999 => crc6488302ad6e9e4df1a/MauiApplication
	i64 u0x93624b42fb99551b, ; 1000 => android/widget/Filter
	i64 u0x937cf8b7dccf3fae, ; 1001 => android/hardware/camera2/CameraManager$AvailabilityCallback
	i64 u0x93ac957223ce8c40, ; 1002 => crc640a8d9a12ddbf2cf2/EnergySaverBroadcastReceiver
	i64 u0x93fd9afcca79a38f, ; 1003 => androidx/camera/core/ImageCapture$Defaults
	i64 u0x943a2b2e5130aba3, ; 1004 => java/util/function/ToDoubleFunction
	i64 u0x9461b0401dbcf96c, ; 1005 => android/app/Dialog
	i64 u0x94700ca548899cd4, ; 1006 => android/app/Notification$BubbleMetadata
	i64 u0x94aa6bac75f4fa7d, ; 1007 => androidx/camera/core/impl/CaptureConfig$Builder
	i64 u0x94ab6271293e91f4, ; 1008 => android/text/style/StrikethroughSpan
	i64 u0x94efbff2cfad32eb, ; 1009 => com/microsoft/maui/PlatformPaintType
	i64 u0x9514b3fc1164c9f2, ; 1010 => androidx/media3/session/MediaSession
	i64 u0x951aa313de8b041c, ; 1011 => crc64338477404e88479c/MauiViewPager
	i64 u0x9584fc24c466e188, ; 1012 => android/graphics/Paint$Cap
	i64 u0x95da26b357f9d721, ; 1013 => androidx/media3/exoplayer/source/SampleStream
	i64 u0x9623d020ace61138, ; 1014 => androidx/camera/core/impl/CameraCaptureFailure$Reason
	i64 u0x965bfaf1ff1da014, ; 1015 => java/lang/ReflectiveOperationException
	i64 u0x965f4b81a6eadfa3, ; 1016 => android/media/MediaFormat
	i64 u0x96cf68019297d3dd, ; 1017 => mono/android/content/DialogInterface_OnDismissListenerImplementor
	i64 u0x970505cba82be522, ; 1018 => androidx/camera/video/OutputOptions
	i64 u0x9721e6ba29424ff0, ; 1019 => android/view/inputmethod/PreviewableHandwritingGesture
	i64 u0x9776d2ad269f8528, ; 1020 => com/google/android/material/internal/StaticLayoutBuilderConfigurer
	i64 u0x97ada2c2479a9b60, ; 1021 => kotlin/reflect/KVisibility
	i64 u0x97c9d63fd14dcde7, ; 1022 => android/widget/FilterQueryProvider
	i64 u0x97e2e9121179cb48, ; 1023 => android/graphics/SurfaceTexture
	i64 u0x97ec84fca1b732f0, ; 1024 => mono/androidx/core/widget/NestedScrollView_OnScrollChangeListenerImplementor
	i64 u0x980f689001eed0a2, ; 1025 => androidx/media3/datasource/DataSpec
	i64 u0x9836a430b4a84f60, ; 1026 => androidx/camera/core/CameraEffect
	i64 u0x9858654a6a15b73f, ; 1027 => crc645d80431ce5f73f11/StartSingleSnapHelper
	i64 u0x987c034c565c02d3, ; 1028 => androidx/camera/camera2/internal/compat/StreamConfigurationMapCompat
	i64 u0x988101eb35e8c40e, ; 1029 => androidx/core/view/AccessibilityDelegateCompat
	i64 u0x9891a3a06e139546, ; 1030 => androidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener
	i64 u0x98ba110c6c57da31, ; 1031 => java/lang/Float
	i64 u0x98c586f56c023bec, ; 1032 => android/graphics/Bitmap$Config
	i64 u0x98ff485da7f0266f, ; 1033 => com/google/android/material/imageview/ShapeableImageView
	i64 u0x9908090bdf73918a, ; 1034 => androidx/lifecycle/Lifecycle
	i64 u0x990d68d24a8a5d1f, ; 1035 => android/text/style/ParagraphStyle
	i64 u0x99436d5f935363e6, ; 1036 => android/opengl/GLES10
	i64 u0x9944d918322ff885, ; 1037 => crc648e35430423bd4943/GLTextureView
	i64 u0x995f02becc4146fe, ; 1038 => android/content/ClipData
	i64 u0x9969c631954df2e4, ; 1039 => android/view/inputmethod/CorrectionInfo
	i64 u0x99b4bc4a856dc9da, ; 1040 => android/content/pm/PackageManager
	i64 u0x99bf13d85b207872, ; 1041 => androidx/camera/video/VideoRecordEvent$Finalize
	i64 u0x99df91bab800c287, ; 1042 => mono/android/runtime/InputStreamAdapter
	i64 u0x99eb5e58eff0d75f, ; 1043 => androidx/camera/core/impl/ImageAnalysisConfig
	i64 u0x9a23c2d41060f81e, ; 1044 => java/io/File
	i64 u0x9a3050da9641e7c4, ; 1045 => crc6452ffdc5b34af3a0f/MauiDatePicker
	i64 u0x9a55c691985b1ff7, ; 1046 => android/os/Parcelable$Creator
	i64 u0x9a68fa465ca8abf9, ; 1047 => java/io/FileDescriptor
	i64 u0x9add6d3a0d9aac4c, ; 1048 => androidx/camera/core/impl/SurfaceConfig$ConfigType
	i64 u0x9ae7cd80b907648d, ; 1049 => androidx/camera/video/FileDescriptorOutputOptions
	i64 u0x9b6492715b9dfccd, ; 1050 => androidx/versionedparcelable/CustomVersionedParcelable
	i64 u0x9b91309f682756dc, ; 1051 => crc6481e5b28a6b4dd87a/NativeCustomScrolLayout
	i64 u0x9baa5d4afdfeb64a, ; 1052 => androidx/navigation/NavDeepLinkRequest
	i64 u0x9babc3bd2b21d8ad, ; 1053 => crc6452ffdc5b34af3a0f/LocalizedDigitsKeyListener
	i64 u0x9bc48619a61f0e65, ; 1054 => androidx/media3/exoplayer/source/MediaSourceEventListener
	i64 u0x9bef32e3e3859878, ; 1055 => mono/androidx/camera/core/ForwardingImageProxy_OnImageCloseListenerImplementor
	i64 u0x9c437fa042ccf440, ; 1056 => androidx/savedstate/SavedStateRegistry$SavedStateProvider
	i64 u0x9c9e4c72b56ff0f4, ; 1057 => crc645d80431ce5f73f11/ReorderableItemsViewAdapter_2
	i64 u0x9cb6a0e63a122ff1, ; 1058 => android/content/pm/ShortcutInfo
	i64 u0x9cba68cf67f2313b, ; 1059 => androidx/media3/common/Player$PositionInfo
	i64 u0x9cea3cc5cc0acb6c, ; 1060 => crc648873bc476df5e156/BoundServiceBinder
	i64 u0x9cebbb039a638f4d, ; 1061 => android/graphics/BitmapFactory$Options
	i64 u0x9cfab72a71a77b1e, ; 1062 => androidx/navigation/Navigator$Extras
	i64 u0x9cfb8dda71b9bbdb, ; 1063 => mono/android/view/ViewGroup_OnHierarchyChangeListenerImplementor
	i64 u0x9d1f43b333e65305, ; 1064 => android/text/Spannable
	i64 u0x9d5ba0f725aa462c, ; 1065 => com/google/android/material/appbar/AppBarLayout$Behavior
	i64 u0x9d5e39f54f24ca21, ; 1066 => androidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig
	i64 u0x9d6822c4ff6553bf, ; 1067 => androidx/media3/decoder/Buffer
	i64 u0x9d9586a9c48e6fd7, ; 1068 => androidx/media3/exoplayer/source/MediaSource$Factory
	i64 u0x9db6accc46c9ce7f, ; 1069 => java/util/function/Predicate
	i64 u0x9db900af518e4827, ; 1070 => androidx/camera/video/Recorder$Builder
	i64 u0x9dbfa302c7baf9ec, ; 1071 => android/text/GetChars
	i64 u0x9ddb6fe7564e2094, ; 1072 => kotlin/reflect/KDeclarationContainer
	i64 u0x9de83fd8b85d70fc, ; 1073 => android/widget/SectionIndexer
	i64 u0x9e10a0b3efa170dc, ; 1074 => android/view/ContextThemeWrapper
	i64 u0x9e228d9af9dfb6ee, ; 1075 => androidx/core/app/Person$Builder
	i64 u0x9e26f9c944b82e69, ; 1076 => crc64338477404e88479c/GenericGlobalLayoutListener
	i64 u0x9e6dc3e8eedaf8a8, ; 1077 => java/net/SocketException
	i64 u0x9e8497fc52a96d4d, ; 1078 => android/graphics/PorterDuff
	i64 u0x9e91524221d7f1f3, ; 1079 => com/microsoft/maui/PlatformMauiAppCompatActivity
	i64 u0x9ecc38fa7e43a0c8, ; 1080 => androidx/fragment/app/FragmentContainer
	i64 u0x9f320c2c164ae334, ; 1081 => java/io/FileNotFoundException
	i64 u0x9f4c9bf8c1f6ddb2, ; 1082 => androidx/core/view/ViewPropertyAnimatorCompat
	i64 u0x9f5a6b54beec1a29, ; 1083 => mono/android/view/View_OnScrollChangeListenerImplementor
	i64 u0x9f62c492eba1d1f2, ; 1084 => android/speech/SpeechRecognizer
	i64 u0x9f950635a5c6617e, ; 1085 => crc6452ffdc5b34af3a0f/MauiAppCompatEditText
	i64 u0x9fa1370a1b1093fa, ; 1086 => java/lang/NullPointerException
	i64 u0x9fceb9720ff4752f, ; 1087 => androidx/lifecycle/ViewModelStore
	i64 u0x9fd977b6d588d776, ; 1088 => androidx/camera/core/ImageCapture$ScreenFlashListener
	i64 u0xa0413b32c00d8806, ; 1089 => crc64354973402314325c/PlatformCarouselItem
	i64 u0xa07cbd8408019386, ; 1090 => java/net/Proxy
	i64 u0xa0a4380fbe936fa9, ; 1091 => androidx/camera/core/impl/Timebase
	i64 u0xa0b3e998faac11c3, ; 1092 => crc6479d6f9e48582dc67/PlatformScrollViewer
	i64 u0xa0cf83102ab6249f, ; 1093 => crc640ec207abc449b2ca/ShellSearchViewAdapter_ObjectWrapper
	i64 u0xa0d6dd163cf9a125, ; 1094 => androidx/media3/exoplayer/LoadControl$Parameters
	i64 u0xa0e8bade9ecc1b90, ; 1095 => androidx/fragment/app/FragmentManager$OnBackStackChangedListener
	i64 u0xa0ef070e22dbf13b, ; 1096 => androidx/camera/core/imagecapture/PostviewSettings
	i64 u0xa0ef9facbe641466, ; 1097 => androidx/core/view/ViewCompat
	i64 u0xa16f6194dd37e0b5, ; 1098 => androidx/camera/video/VideoOutput$SourceState
	i64 u0xa1ca713dac36a165, ; 1099 => androidx/media3/exoplayer/upstream/BandwidthMeter
	i64 u0xa1d1fb801c274bfc, ; 1100 => androidx/media3/common/MediaItem$DrmConfiguration
	i64 u0xa1ead478a027c56c, ; 1101 => android/animation/ValueAnimator
	i64 u0xa1f5df9f29ce40b8, ; 1102 => androidx/navigation/Navigator
	i64 u0xa1f69eeebebd7ca5, ; 1103 => android/widget/ProgressBar
	i64 u0xa24d07cd0d5c4f0f, ; 1104 => android/animation/TimeInterpolator
	i64 u0xa24ee676f2aaec87, ; 1105 => androidx/appcompat/widget/SearchView
	i64 u0xa2c344771af945fc, ; 1106 => androidx/activity/FullyDrawnReporter
	i64 u0xa2f05a58c7d33dff, ; 1107 => crc64354973402314325c/PlatformCarousel
	i64 u0xa316a74fb2c2f60c, ; 1108 => androidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag
	i64 u0xa336c59dc305bd26, ; 1109 => androidx/media3/extractor/text/SubtitleParser
	i64 u0xa34b4db9fa4732cc, ; 1110 => android/graphics/drawable/InsetDrawable
	i64 u0xa3606cb2bcff9285, ; 1111 => androidx/media3/common/Player$Listener
	i64 u0xa3859b5ed9f780d4, ; 1112 => androidx/appcompat/widget/LinearLayoutCompat
	i64 u0xa398e93d7065b828, ; 1113 => kotlin/Function
	i64 u0xa3ad720d45785742, ; 1114 => androidx/appcompat/view/menu/MenuView
	i64 u0xa3ce560621e954d3, ; 1115 => crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer
	i64 u0xa3d005b2db469996, ; 1116 => android/widget/RadioButton
	i64 u0xa3d3c9e462460eb7, ; 1117 => android/graphics/Paint$Style
	i64 u0xa3eaa07d6d77fe8c, ; 1118 => android/util/Size
	i64 u0xa3f94f613be69f75, ; 1119 => androidx/media3/session/SessionCommands
	i64 u0xa41bffdca649c81a, ; 1120 => androidx/media/AudioAttributesCompat
	i64 u0xa4414bb71bf7bc36, ; 1121 => androidx/lifecycle/ViewModelProvider$Factory
	i64 u0xa4658f002c1277fc, ; 1122 => androidx/media3/ui/SubtitleView
	i64 u0xa47433d85b440c29, ; 1123 => androidx/core/util/Predicate
	i64 u0xa4cc8b3097166227, ; 1124 => android/view/View$OnAttachStateChangeListener
	i64 u0xa4e745bf1607e5a9, ; 1125 => android/opengl/Matrix
	i64 u0xa5080403dafe22a0, ; 1126 => androidx/swiperefreshlayout/widget/SwipeRefreshLayout
	i64 u0xa5475b5d3e2dd34e, ; 1127 => androidx/appcompat/widget/AppCompatAutoCompleteTextView
	i64 u0xa569d34f63e173fb, ; 1128 => android/media/Image
	i64 u0xa588668feb1b05b9, ; 1129 => android/view/SurfaceView
	i64 u0xa59db4b8b7dbe046, ; 1130 => javax/net/ssl/SSLSession
	i64 u0xa62d838688721cd6, ; 1131 => androidx/camera/core/internal/IoConfig$Builder
	i64 u0xa66e0e0698158040, ; 1132 => androidx/appcompat/app/AlertDialog$Builder
	i64 u0xa6794d1f84bf041d, ; 1133 => crc64e1fb321c08285b90/TableViewRenderer
	i64 u0xa68cfba6b3bae773, ; 1134 => android/provider/Settings$Global
	i64 u0xa6b282a2477038a5, ; 1135 => androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener
	i64 u0xa71aafbfe7017e70, ; 1136 => com/google/android/material/shape/MaterialShapeDrawable
	i64 u0xa7233c1d5f1fea9b, ; 1137 => javax/microedition/khronos/opengles/GL10
	i64 u0xa757f83a95bc65d9, ; 1138 => kotlin/reflect/KVariance
	i64 u0xa76f26c70ed71676, ; 1139 => androidx/appcompat/app/ActionBar$TabListener
	i64 u0xa7fa861f4f28ceae, ; 1140 => crc645d80431ce5f73f11/CarouselViewOnScrollListener
	i64 u0xa824ab889bcafcd2, ; 1141 => androidx/recyclerview/widget/RecyclerView$LayoutParams
	i64 u0xa84c85cd540a70d3, ; 1142 => androidx/camera/core/ZoomState
	i64 u0xa865adbdd81d9951, ; 1143 => java/io/OutputStream
	i64 u0xa86a562595e2d422, ; 1144 => androidx/camera/core/ImageCaptureLatencyEstimate
	i64 u0xa86f66387eaee170, ; 1145 => android/content/SharedPreferences
	i64 u0xa87b56b08c12f7a3, ; 1146 => crc64a096dc44ad241142/PlatformTicker_DurationScaleListener
	i64 u0xa8942dad824bbfa8, ; 1147 => androidx/camera/core/ResolutionInfo
	i64 u0xa8c8380ae261807d, ; 1148 => android/widget/TextView$BufferType
	i64 u0xa8cc1540f74ab177, ; 1149 => crc640a8d9a12ddbf2cf2/BatteryBroadcastReceiver
	i64 u0xa8d6159bcb046bd9, ; 1150 => crc640ec207abc449b2ca/ScrollLayoutManager
	i64 u0xa8df1de3fe84eb44, ; 1151 => androidx/camera/core/impl/CameraCaptureMetaData$AwbState
	i64 u0xa90c6cf1901ef9b1, ; 1152 => androidx/media3/exoplayer/PlayerMessage$Sender
	i64 u0xa94960ea73ff5ea8, ; 1153 => androidx/navigation/NavGraphNavigator
	i64 u0xa95eae500754348a, ; 1154 => java/net/SocketAddress
	i64 u0xa96f5f32da5c87e7, ; 1155 => androidx/camera/core/ConcurrentCamera$SingleCameraConfig
	i64 u0xa97606357a123828, ; 1156 => android/media/session/MediaSession
	i64 u0xa9ac09fff726bffd, ; 1157 => android/graphics/Paint$Join
	i64 u0xa9acdba0129a6b21, ; 1158 => crc645d80431ce5f73f11/GroupableItemsViewAdapter_2
	i64 u0xa9ce15e4e3a206da, ; 1159 => android/text/TextWatcher
	i64 u0xaa1e83a09f2fc981, ; 1160 => java/nio/Buffer
	i64 u0xaa3cafa21a3bea0f, ; 1161 => androidx/viewpager/widget/ViewPager
	i64 u0xaa469f39e9e03bd4, ; 1162 => androidx/lifecycle/ViewModelProvider$Factory$Companion
	i64 u0xaa46d09246372443, ; 1163 => crc6452ffdc5b34af3a0f/ContentViewGroup
	i64 u0xaa4d89cb8e2812a6, ; 1164 => android/app/NotificationChannelGroup
	i64 u0xaa75ead031784774, ; 1165 => javax/net/ssl/SSLSocketFactory
	i64 u0xaa7b11cdd6000676, ; 1166 => android/provider/Settings
	i64 u0xaa8e001a129a7284, ; 1167 => com/google/android/material/navigation/NavigationBarPresenter
	i64 u0xaacdc63773b92c2d, ; 1168 => androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams
	i64 u0xab25a0d95d444eaf, ; 1169 => androidx/media3/common/Rating
	i64 u0xab2eb899e74adc32, ; 1170 => androidx/recyclerview/widget/RecyclerView$RecyclerListener
	i64 u0xab37ee257442413a, ; 1171 => java/nio/ByteOrder
	i64 u0xab5c314d4c56f950, ; 1172 => androidx/media3/exoplayer/drm/DrmSession$DrmSessionException
	i64 u0xab983374e34b5b67, ; 1173 => androidx/camera/core/ExposureState
	i64 u0xabaefbbe8f188ae7, ; 1174 => crc64eaf685e082aef0e5/SKGLViewHandler_MauiSKGLTextureView
	i64 u0xabc3cd0f40f748aa, ; 1175 => java/lang/String
	i64 u0xabe6d6ebc681adc2, ; 1176 => android/runtime/XmlReaderPullParser
	i64 u0xac047f65cff07e9e, ; 1177 => android/graphics/PorterDuffXfermode
	i64 u0xac3332e13a2c0367, ; 1178 => androidx/camera/core/impl/CameraCaptureMetaData$FlashState
	i64 u0xac7bbd754d805e27, ; 1179 => android/graphics/BitmapFactory
	i64 u0xac7c7e1bdd46f12a, ; 1180 => androidx/recyclerview/widget/RecyclerView$ItemAnimator
	i64 u0xac86da7d9cd4863e, ; 1181 => androidx/appcompat/app/ActionBar
	i64 u0xac9902bb0e4c5217, ; 1182 => java/lang/IllegalArgumentException
	i64 u0xacbf005c134f5d18, ; 1183 => androidx/camera/core/impl/UseCaseConfigFactory$Provider
	i64 u0xacbf549cdef93bef, ; 1184 => java/net/HttpURLConnection
	i64 u0xacecf1c31d72b150, ; 1185 => androidx/media3/exoplayer/source/MediaPeriod$Callback
	i64 u0xacf36d0287eb74e9, ; 1186 => android/support/v4/media/RatingCompat
	i64 u0xad8d10280dfccd71, ; 1187 => crc6452ffdc5b34af3a0f/ViewFragment
	i64 u0xadb29d4c73f24a8c, ; 1188 => com/google/android/material/button/MaterialButton$OnCheckedChangeListener
	i64 u0xae8c8ca30483ee35, ; 1189 => androidx/navigation/NavBackStackEntry
	i64 u0xaee6c9bf6be99825, ; 1190 => androidx/media3/ui/AspectRatioFrameLayout$AspectRatioListener
	i64 u0xaf159c0e995e4702, ; 1191 => com/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState
	i64 u0xaf1679a039f6fbb9, ; 1192 => androidx/appcompat/widget/Toolbar
	i64 u0xaf21fa4d321c1cba, ; 1193 => androidx/core/text/PrecomputedTextCompat$Params
	i64 u0xaf92d7d51c7442b0, ; 1194 => androidx/camera/core/impl/CameraInternal
	i64 u0xafdf04e9229184a3, ; 1195 => com/google/android/material/shape/ShapeAppearanceModel$Builder
	i64 u0xafdf36ba959fe151, ; 1196 => androidx/media3/exoplayer/trackselection/TrackSelectorResult
	i64 u0xafe151dded911985, ; 1197 => android/hardware/camera2/CameraCaptureSession
	i64 u0xb00eab597b120f1c, ; 1198 => android/view/KeyboardShortcutGroup
	i64 u0xb02badeb1c97535c, ; 1199 => java/lang/Integer
	i64 u0xb0888408f321b943, ; 1200 => androidx/appcompat/app/AppCompatDialog
	i64 u0xb0e934994bddcba7, ; 1201 => android/view/inputmethod/ExtractedTextRequest
	i64 u0xb173addb5bfcaed6, ; 1202 => androidx/media3/exoplayer/MediaClock
	i64 u0xb17995fbc7351342, ; 1203 => android/media/Image$Plane
	i64 u0xb18d71343ca8e96f, ; 1204 => java/lang/Exception
	i64 u0xb209d55b71ead22c, ; 1205 => android/view/animation/Interpolator
	i64 u0xb254043df975968d, ; 1206 => mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor
	i64 u0xb259b48abce95d10, ; 1207 => android/hardware/camera2/CameraMetadata
	i64 u0xb25c7b4226da60cc, ; 1208 => androidx/media3/exoplayer/ExoPlayer$PreloadConfiguration
	i64 u0xb293ea10ff5d69e9, ; 1209 => androidx/media3/decoder/CryptoConfig
	i64 u0xb2a2c4218a8e7d1d, ; 1210 => kotlin/sequences/Sequence
	i64 u0xb2ad998617af984b, ; 1211 => androidx/camera/core/impl/AttachedSurfaceInfo
	i64 u0xb2b2e615ea3f507a, ; 1212 => crc6452ffdc5b34af3a0f/PlatformTouchGraphicsView
	i64 u0xb2bfba2c56d4b5dc, ; 1213 => androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties
	i64 u0xb2e5c87b55a56110, ; 1214 => android/content/LocusId
	i64 u0xb30a9983aabe769e, ; 1215 => microsoft/maui/essentials/fileProvider
	i64 u0xb329f158c70397be, ; 1216 => androidx/navigation/NavigatorState
	i64 u0xb3369008f4fe1419, ; 1217 => androidx/appcompat/app/AppCompatActivity
	i64 u0xb3693705985e8b13, ; 1218 => androidx/core/view/accessibility/AccessibilityViewCommand
	i64 u0xb374dc7d92c34054, ; 1219 => android/webkit/WebViewClient
	i64 u0xb377ef937a0bfe7d, ; 1220 => androidx/navigation/NavController
	i64 u0xb378438cc777bbf0, ; 1221 => android/view/WindowManager$LayoutParams
	i64 u0xb3c6bac6ce6fafd2, ; 1222 => androidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions
	i64 u0xb3d4cbc19434ef12, ; 1223 => android/util/SizeF
	i64 u0xb3ea8750328eba6b, ; 1224 => android/graphics/RectF
	i64 u0xb3f543d691f25c2c, ; 1225 => android/content/DialogInterface$OnShowListener
	i64 u0xb4003c19b02c9764, ; 1226 => androidx/camera/core/impl/QuirkSettings
	i64 u0xb40ce654b6388f81, ; 1227 => java/lang/reflect/Field
	i64 u0xb42026236b8f4f29, ; 1228 => androidx/drawerlayout/widget/DrawerLayout
	i64 u0xb42403b63bb95be0, ; 1229 => android/support/v4/media/session/MediaSessionCompat$RegistrationCallback
	i64 u0xb43646675f535577, ; 1230 => androidx/camera/core/FocusMeteringAction$Builder
	i64 u0xb43bff1eb757d5fb, ; 1231 => org/xmlpull/v1/XmlPullParser
	i64 u0xb449ae5af4bca8d8, ; 1232 => androidx/browser/customtabs/EngagementSignalsCallback
	i64 u0xb44c711ce591a772, ; 1233 => mono/android/view/View_OnTouchListenerImplementor
	i64 u0xb4590065532ff198, ; 1234 => androidx/camera/core/ImageCapture$OutputFileResults
	i64 u0xb4792773637390c2, ; 1235 => com/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener
	i64 u0xb4f47430f94297c1, ; 1236 => crc6452ffdc5b34af3a0f/MauiPageControl
	i64 u0xb4fc3e21cc054bc7, ; 1237 => android/graphics/Paint
	i64 u0xb5142e0637833cab, ; 1238 => androidx/camera/core/impl/CaptureConfig$OptionUnpacker
	i64 u0xb54eff3a21a3eefa, ; 1239 => androidx/loader/app/LoaderManager$LoaderCallbacks
	i64 u0xb55ac5b60ac90870, ; 1240 => java/nio/IntBuffer
	i64 u0xb563fee7d41736ed, ; 1241 => androidx/media3/common/MediaItem$Builder
	i64 u0xb56e3efa284790aa, ; 1242 => android/view/WindowInsets
	i64 u0xb56e879bb5d599f3, ; 1243 => android/window/OnBackInvokedCallback
	i64 u0xb570f3bf7dea9b6e, ; 1244 => mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor
	i64 u0xb57a340642ab29c6, ; 1245 => crc64f1558ff7e185dbfc/CameraManager_OrientationListener
	i64 u0xb5ac04c19de8aabf, ; 1246 => android/widget/AbsListView
	i64 u0xb5cc78a6da81db86, ; 1247 => androidx/core/view/ScaleGestureDetectorCompat
	i64 u0xb609cd2eea685fb3, ; 1248 => androidx/navigation/ui/AppBarConfiguration$Builder
	i64 u0xb60a0c71bb9d295a, ; 1249 => androidx/media3/exoplayer/Renderer
	i64 u0xb6425fca959ab57e, ; 1250 => android/text/TextUtils$TruncateAt
	i64 u0xb67590e997212933, ; 1251 => androidx/camera/video/RecordingStats
	i64 u0xb6880deb4171acbc, ; 1252 => com/google/android/material/shape/EdgeTreatment
	i64 u0xb69237f2a9d74c94, ; 1253 => mono/android/view/View_OnKeyListenerImplementor
	i64 u0xb69317d4cbae2478, ; 1254 => android/content/res/Configuration
	i64 u0xb6b11675684b5f05, ; 1255 => crc6488302ad6e9e4df1a/ImageLoaderCallbackBase_1
	i64 u0xb6ea91db24be70cd, ; 1256 => com/microsoft/maui/PlatformWrapperView
	i64 u0xb6f8c31e92275934, ; 1257 => android/view/accessibility/CaptioningManager
	i64 u0xb76b9ac76caa5270, ; 1258 => crc64e1fb321c08285b90/FrameRenderer
	i64 u0xb773bd566b4f471e, ; 1259 => crc64338477404e88479c/GenericAnimatorListener
	i64 u0xb77aae9e2e13bfcc, ; 1260 => android/app/Service
	i64 u0xb79687aac992f83a, ; 1261 => androidx/viewpager2/adapter/FragmentViewHolder
	i64 u0xb7c66216b01d6e9a, ; 1262 => androidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection
	i64 u0xb7f60ace3fa0816b, ; 1263 => android/view/Window
	i64 u0xb7fc24ca8fecd2c5, ; 1264 => mono/android/view/View_OnAttachStateChangeListenerImplementor
	i64 u0xb831e87cc1c8ced2, ; 1265 => androidx/camera/core/impl/utils/ExifData$WhiteBalanceMode
	i64 u0xb874f7480a30d0eb, ; 1266 => androidx/media3/datasource/DataSpec$Builder
	i64 u0xb8c6dc400481ff5e, ; 1267 => androidx/media3/exoplayer/ExoPlayer
	i64 u0xb8df224d6b778ca3, ; 1268 => android/view/View
	i64 u0xb8f2521e5d90246f, ; 1269 => crc64338477404e88479c/ToolbarExtensions_ToolbarTitleIconImageView
	i64 u0xb952c578f3377537, ; 1270 => crc64338477404e88479c/ModalNavigationManager_ModalFragment_CustomComponentDialog_CallBack
	i64 u0xb97377cead771d2e, ; 1271 => com/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener
	i64 u0xb9cdbe6eddac55c0, ; 1272 => mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor
	i64 u0xb9e48b25660487c5, ; 1273 => javax/net/ssl/TrustManager
	i64 u0xba0eff32005a0a62, ; 1274 => androidx/media3/exoplayer/audio/AudioRendererEventListener
	i64 u0xba263234cbab6d9a, ; 1275 => androidx/navigation/NavDestination$DeepLinkMatch
	i64 u0xba79fa9c8b5d21f6, ; 1276 => android/provider/MediaStore$Audio
	i64 u0xba9336a6f8112d75, ; 1277 => androidx/camera/core/imagecapture/TakePictureRequest
	i64 u0xbacf55cfc50d3d0b, ; 1278 => kotlin/reflect/KParameter$Kind
	i64 u0xbb3714aed5433d20, ; 1279 => androidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences
	i64 u0xbb41c32523812652, ; 1280 => android/widget/Button
	i64 u0xbb84ccbe48f6c18b, ; 1281 => android/os/Looper
	i64 u0xbbaf4b15fe6e0964, ; 1282 => android/text/SpannableString
	i64 u0xbbdac0a71931a1da, ; 1283 => androidx/camera/core/ImageProxy$PlaneProxy
	i64 u0xbc0f5862b0fe462b, ; 1284 => android/hardware/camera2/CameraCaptureSession$StateCallback
	i64 u0xbc201330f4acc6fb, ; 1285 => android/widget/TimePicker
	i64 u0xbc23f0c88f3b93bb, ; 1286 => android/webkit/WebResourceError
	i64 u0xbc2557b6ee0cdca0, ; 1287 => androidx/media3/ui/PlayerNotificationManager$NotificationListener
	i64 u0xbc7639d7badc3890, ; 1288 => androidx/recyclerview/widget/ItemTouchHelper$Callback
	i64 u0xbc7d00ca5216ea6a, ; 1289 => crc64ba438d8f48cf7e75/IntermediateActivity
	i64 u0xbc89a6074f33c9ca, ; 1290 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat
	i64 u0xbcd7e1b68a2c4f42, ; 1291 => androidx/media/MediaSessionManager$RemoteUserInfo
	i64 u0xbcd91a6640f5231e, ; 1292 => androidx/camera/view/PreviewView$ImplementationMode
	i64 u0xbd8eeb1678aa451f, ; 1293 => androidx/core/app/TaskStackBuilder
	i64 u0xbd8ef7c9514338a5, ; 1294 => androidx/camera/core/impl/CameraRepository
	i64 u0xbd98035b949025ef, ; 1295 => android/media/session/MediaSession$Token
	i64 u0xbdda3de944afbbe2, ; 1296 => androidx/navigation/NavHostController
	i64 u0xbe06f6e215da9cc0, ; 1297 => androidx/media3/common/PriorityTaskManager
	i64 u0xbe9d97b629d64695, ; 1298 => androidx/camera/core/impl/CameraCaptureMetaData$AwbMode
	i64 u0xbea4a0addb116259, ; 1299 => crc647db950552a943f28/MainApplication
	i64 u0xbef8008144c823b0, ; 1300 => androidx/media3/common/Tracks$Group
	i64 u0xbf2634fa5f7ca77a, ; 1301 => mono/android/widget/TextView_OnEditorActionListenerImplementor
	i64 u0xbf2a1dfd1b8127a9, ; 1302 => androidx/camera/view/CameraController$OutputSize
	i64 u0xbf6d427143271cb3, ; 1303 => java/lang/Object
	i64 u0xbf9dae2beff68075, ; 1304 => android/graphics/Insets
	i64 u0xbfcccc29cac8e8a1, ; 1305 => mono/androidx/activity/contextaware/OnContextAvailableListenerImplementor
	i64 u0xbfce483e78d14911, ; 1306 => androidx/camera/core/internal/StreamSpecsCalculator
	i64 u0xbfee75e113b64f18, ; 1307 => android/widget/SpinnerAdapter
	i64 u0xc00f4c2f11efdcff, ; 1308 => java/lang/ClassNotFoundException
	i64 u0xc012d4a9d397728a, ; 1309 => com/google/android/material/shape/ShapeAppearanceModel
	i64 u0xc0252c5c6e843dc5, ; 1310 => android/provider/MediaStore$Video$Media
	i64 u0xc049c2855c8d6137, ; 1311 => androidx/media3/exoplayer/SuitableOutputChecker
	i64 u0xc0500a5415d61b75, ; 1312 => crc6481e5b28a6b4dd87a/NativeSnapLayout_FlingGestureListener
	i64 u0xc05f59957902d55b, ; 1313 => android/support/v4/media/session/ParcelableVolumeInfo
	i64 u0xc089cbdafa1922cb, ; 1314 => androidx/media3/exoplayer/upstream/BandwidthMeter$EventListener
	i64 u0xc095e5da02b35ab7, ; 1315 => androidx/core/view/accessibility/AccessibilityWindowInfoCompat
	i64 u0xc09c4739b672f89f, ; 1316 => androidx/camera/video/OutputResults
	i64 u0xc0b44fbbc2895d38, ; 1317 => kotlin/jvm/internal/DefaultConstructorMarker
	i64 u0xc0d2632c9e89e62f, ; 1318 => crc64e1fb321c08285b90/ListViewRenderer_Container
	i64 u0xc0f8739dda93c69d, ; 1319 => androidx/navigation/NavAction
	i64 u0xc10458fbff2846b9, ; 1320 => androidx/core/app/NotificationChannelGroupCompat$Builder
	i64 u0xc11c787ba4c12e3e, ; 1321 => androidx/media3/exoplayer/RendererConfiguration
	i64 u0xc12ea9375fcd39a2, ; 1322 => androidx/camera/core/impl/TagBundle
	i64 u0xc18723826b70e521, ; 1323 => java/util/concurrent/Executors
	i64 u0xc19241f7950bb1dc, ; 1324 => androidx/media3/exoplayer/analytics/AnalyticsListener$Events
	i64 u0xc194cf35700f24d1, ; 1325 => android/view/animation/AnimationSet
	i64 u0xc1a43ce814bd6203, ; 1326 => android/content/ClipData$Item
	i64 u0xc1a807325c15cf73, ; 1327 => android/graphics/Bitmap
	i64 u0xc2512364d51a7359, ; 1328 => android/widget/SeekBar
	i64 u0xc2699473eca9d329, ; 1329 => com/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer
	i64 u0xc288a8550f7ef636, ; 1330 => android/view/SubMenu
	i64 u0xc2a8e50a5f08afc6, ; 1331 => mono/java/lang/RunnableImplementor
	i64 u0xc2d2916e08f7fcd5, ; 1332 => android/view/WindowInsetsAnimationController
	i64 u0xc2f59b0db6e79925, ; 1333 => androidx/media3/exoplayer/source/MediaSource$MediaPeriodId
	i64 u0xc30ebb034acbab21, ; 1334 => android/support/v4/media/session/MediaControllerCompat$Callback
	i64 u0xc314f847568bfe33, ; 1335 => androidx/camera/core/impl/SessionProcessor$CaptureCallback
	i64 u0xc3448e73cf4fda29, ; 1336 => com/google/android/material/bottomnavigation/BottomNavigationItemView
	i64 u0xc37aac9ebc9cdf42, ; 1337 => androidx/camera/core/impl/SessionConfig$OutputConfig
	i64 u0xc3a0d1e70fc04a12, ; 1338 => androidx/fragment/app/strictmode/Violation
	i64 u0xc3b5b652da3a7fb8, ; 1339 => androidx/camera/core/impl/Quirks
	i64 u0xc3b87cac393a46ec, ; 1340 => androidx/camera/core/impl/CameraPresenceMonitor
	i64 u0xc3c24f871dfe39fc, ; 1341 => androidx/media3/common/Metadata$Entry
	i64 u0xc3eb0cbb47f178b9, ; 1342 => java/lang/Enum
	i64 u0xc3f264557c647077, ; 1343 => java/util/Timer
	i64 u0xc410281d3f079bb9, ; 1344 => kotlin/reflect/KClassifier
	i64 u0xc430119c0a46ebac, ; 1345 => androidx/browser/customtabs/CustomTabsSession$PendingSession
	i64 u0xc452ee0901c19a4d, ; 1346 => android/graphics/drawable/LayerDrawable
	i64 u0xc457b8ed18fcdc55, ; 1347 => crc64159f3caeb1269279/MauiSemanticOrderView
	i64 u0xc4667e0e3dcb2142, ; 1348 => crc6452ffdc5b34af3a0f/MauiPicker
	i64 u0xc4672e7cec372c98, ; 1349 => crc64f5844edce43316e7/PlatformRotatorItem
	i64 u0xc4998152ef9eb5a5, ; 1350 => kotlin/reflect/KParameter
	i64 u0xc4caf427aa5a4598, ; 1351 => androidx/camera/core/Preview$SurfaceProvider
	i64 u0xc4e1d7e4d6990b04, ; 1352 => android/database/Cursor
	i64 u0xc509661f018da630, ; 1353 => androidx/appcompat/widget/AppCompatCheckBox
	i64 u0xc5369e1c8e0778b2, ; 1354 => com/google/android/material/appbar/AppBarLayout$LayoutParams
	i64 u0xc5b5e4b920f555ee, ; 1355 => com/microsoft/maui/PlatformDispatcher
	i64 u0xc5cba61c0a1bf8e0, ; 1356 => androidx/camera/core/impl/Observable
	i64 u0xc6013565781afea8, ; 1357 => androidx/media3/exoplayer/analytics/AnalyticsListener$EventTime
	i64 u0xc606e1058d794da9, ; 1358 => java/lang/AutoCloseable
	i64 u0xc60c9333403c3d74, ; 1359 => crc643f2b18b2570eaa5a/PlatformGraphicsView
	i64 u0xc60ed5dc5daaa06c, ; 1360 => crc64f5844edce43316e7/SfRotatorFlingGestureListener
	i64 u0xc62a8626699a6eff, ; 1361 => androidx/media3/exoplayer/source/chunk/MediaChunk
	i64 u0xc63933355b4d467d, ; 1362 => android/widget/CompoundButton
	i64 u0xc63d7737310ec2d2, ; 1363 => androidx/appcompat/content/res/AppCompatResources
	i64 u0xc63d8ed5f16cff9f, ; 1364 => android/widget/DatePicker
	i64 u0xc66b28b06af00e09, ; 1365 => crc640ec207abc449b2ca/ShellItemRendererBase
	i64 u0xc66dbf07fd913914, ; 1366 => androidx/camera/core/ForwardingImageProxy$OnImageCloseListener
	i64 u0xc67042a852087d9a, ; 1367 => crc648873bc476df5e156/BoundServiceConnection
	i64 u0xc676eb12115a0cfd, ; 1368 => java/util/concurrent/Callable
	i64 u0xc68a0ac78e093ec5, ; 1369 => crc64fcf28c0e24b4cc31/SearchBarHandler_FocusChangeListener
	i64 u0xc6a64908f989db1f, ; 1370 => java/util/Spliterator
	i64 u0xc6dcfddd28ee4b89, ; 1371 => mono/android/widget/AdapterView_OnItemClickListenerImplementor
	i64 u0xc721b83c1b0725c6, ; 1372 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer
	i64 u0xc7352532882255e4, ; 1373 => androidx/activity/result/contract/ActivityResultContract
	i64 u0xc76e55b604f0a034, ; 1374 => androidx/camera/core/resolutionselector/ResolutionSelector
	i64 u0xc77241534a220e8b, ; 1375 => android/view/inputmethod/TextAttribute
	i64 u0xc7e7d72888a9cbd1, ; 1376 => android/view/accessibility/AccessibilityWindowInfo
	i64 u0xc83910308b360de2, ; 1377 => androidx/appcompat/widget/SwitchCompat
	i64 u0xc83bcc1744de4118, ; 1378 => crc640ec207abc449b2ca/ShellToolbarTracker
	i64 u0xc83f7693ddf5a6cb, ; 1379 => crc640ec207abc449b2ca/ShellSectionRenderer_ViewPagerPageChanged
	i64 u0xc86fbf48dd8f48b1, ; 1380 => androidx/core/app/NotificationChannelGroupCompat
	i64 u0xc878e7ebff932ae7, ; 1381 => androidx/camera/core/impl/InternalCameraPresenceListener
	i64 u0xc8c11b250ce4b41e, ; 1382 => android/view/ScaleGestureDetector$SimpleOnScaleGestureListener
	i64 u0xc8d5c33e136ee12d, ; 1383 => androidx/appcompat/widget/AppCompatImageButton
	i64 u0xc8dabb1ec9568e80, ; 1384 => com/google/android/material/bottomsheet/BottomSheetBehavior
	i64 u0xc9555246542a99da, ; 1385 => android/os/Binder
	i64 u0xc9907bd32c160fff, ; 1386 => android/util/Log
	i64 u0xc99e090e60d66f58, ; 1387 => java/io/StringWriter
	i64 u0xca0dbb061e68acc1, ; 1388 => androidx/camera/core/imagecapture/TakePictureManager$Provider
	i64 u0xca35caf567cfa745, ; 1389 => java/util/Collection
	i64 u0xca6532e26e36e7d3, ; 1390 => crc64396a3fe5f8138e3f/KeepAliveService
	i64 u0xca754b77efc8606b, ; 1391 => android/app/NotificationManager
	i64 u0xcabf871ef950ad91, ; 1392 => android/view/View$OnClickListener
	i64 u0xcb4af9b128fa333f, ; 1393 => android/view/SurfaceHolder
	i64 u0xcb502115d02cfb31, ; 1394 => androidx/activity/OnBackPressedCallback
	i64 u0xcb6ab3cbe5fe668b, ; 1395 => crc648e35430423bd4943/SKSurfaceView
	i64 u0xcb78471f1fffa813, ; 1396 => androidx/camera/core/impl/CaptureBundle
	i64 u0xcb8d1d6001681e7e, ; 1397 => crc645d80431ce5f73f11/TemplatedItemViewHolder
	i64 u0xcbbe7354a1b9c7e3, ; 1398 => androidx/fragment/app/DialogFragment
	i64 u0xcbc34fae61c9b002, ; 1399 => androidx/recyclerview/widget/RecyclerView$ViewHolder
	i64 u0xcbca5e7a937babbc, ; 1400 => androidx/camera/view/transform/OutputTransform
	i64 u0xcc306823503920e9, ; 1401 => android/app/Application
	i64 u0xcc3c26b070861b6e, ; 1402 => android/view/ViewPropertyAnimator
	i64 u0xcc94b924b6f55b54, ; 1403 => android/content/pm/ShortcutManager
	i64 u0xcccbe07add8b48f5, ; 1404 => androidx/camera/video/PendingRecording
	i64 u0xcd2826ea6c10615f, ; 1405 => androidx/media3/exoplayer/metadata/MetadataOutput
	i64 u0xcdab92a676cb69e2, ; 1406 => androidx/media3/exoplayer/upstream/Allocation
	i64 u0xcdb61e962e110ef9, ; 1407 => androidx/media3/common/MediaItem$AdsConfiguration$Builder
	i64 u0xcde9bb136889de02, ; 1408 => androidx/camera/view/video/AudioConfig
	i64 u0xcdefa3530f990c69, ; 1409 => androidx/recyclerview/widget/ItemTouchUIUtil
	i64 u0xcdf4fe3b1db1eeb0, ; 1410 => android/view/MenuItem
	i64 u0xce3b78826c33a15b, ; 1411 => android/view/View$MeasureSpec
	i64 u0xce4220df2e65ad7c, ; 1412 => androidx/media3/exoplayer/SuitableOutputChecker$Callback
	i64 u0xce4b3c9d4e20935c, ; 1413 => androidx/navigation/ui/AppBarConfiguration
	i64 u0xce7deb6f95484b30, ; 1414 => android/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener
	i64 u0xce8f455b2f4af3f3, ; 1415 => crc6452ffdc5b34af3a0f/MauiWebChromeClient
	i64 u0xcee19936e5b7407d, ; 1416 => android/graphics/Xfermode
	i64 u0xcefb45e7022310ea, ; 1417 => com/microsoft/maui/HybridJavaScriptInterface
	i64 u0xcf4377252105bb90, ; 1418 => androidx/camera/core/CameraUseCaseAdapterProvider
	i64 u0xcf4598dee84af51c, ; 1419 => androidx/media3/common/text/CueGroup
	i64 u0xcf4a3917e4797c13, ; 1420 => androidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener
	i64 u0xcf5118f37190e6ff, ; 1421 => androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks
	i64 u0xcf9f8d71d3de4d65, ; 1422 => android/view/inputmethod/InputContentInfo
	i64 u0xcfb9636813513757, ; 1423 => mono/androidx/appcompat/widget/SearchView_OnQueryTextListenerImplementor
	i64 u0xcff8e2b65992ded1, ; 1424 => androidx/camera/core/concurrent/CameraCoordinator
	i64 u0xd0733c320aa3ff03, ; 1425 => mono/android/view/View_OnLayoutChangeListenerImplementor
	i64 u0xd0ab2651543a6a05, ; 1426 => androidx/camera/core/impl/CameraFactory
	i64 u0xd0e722c3b0bde16f, ; 1427 => android/graphics/Typeface
	i64 u0xd0fdb8dd4573f5f7, ; 1428 => android/window/BackEvent
	i64 u0xd10cef77b42cd8bf, ; 1429 => androidx/media3/common/AdOverlayInfo
	i64 u0xd1b288a9c7bb8f53, ; 1430 => java/lang/Double
	i64 u0xd1bb565fc45586eb, ; 1431 => android/app/PendingIntent
	i64 u0xd1c5e40206cc64ab, ; 1432 => androidx/media3/exoplayer/LoadingInfo$Builder
	i64 u0xd1c6f898302a054f, ; 1433 => crc640ec207abc449b2ca/ShellSearchViewAdapter_CustomFilter
	i64 u0xd1c7138d80f67b9f, ; 1434 => crc648e35430423bd4943/GLTextureView_LogWriter
	i64 u0xd1de5b64b400590a, ; 1435 => android/widget/OverScroller
	i64 u0xd1fee90bf31026de, ; 1436 => androidx/camera/core/impl/UseCaseConfig$Builder
	i64 u0xd202c8ea2a504e12, ; 1437 => android/webkit/WebSettings
	i64 u0xd22f5c0c8def47ff, ; 1438 => android/preference/PreferenceManager
	i64 u0xd23c2ba7064dd9dd, ; 1439 => mono/android/app/DatePickerDialog_OnDateSetListenerImplementor
	i64 u0xd26195c132985edf, ; 1440 => crc6452ffdc5b34af3a0f/MauiHorizontalScrollView
	i64 u0xd294b4da088b36d0, ; 1441 => androidx/core/util/Consumer
	i64 u0xd2c22a74efd7fe43, ; 1442 => androidx/media3/common/DrmInitData
	i64 u0xd3158fc01ef05c82, ; 1443 => android/speech/tts/TextToSpeech
	i64 u0xd31f101d4b856661, ; 1444 => androidx/media3/extractor/text/SubtitleParser$Factory
	i64 u0xd3216151c34fd6f8, ; 1445 => androidx/navigation/ui/NavigationUI
	i64 u0xd37bd51464b51f79, ; 1446 => android/graphics/drawable/RippleDrawable
	i64 u0xd39c770b67de9183, ; 1447 => android/app/AlertDialog
	i64 u0xd3c43ee198e77de2, ; 1448 => androidx/appcompat/view/menu/MenuBuilder
	i64 u0xd3fca4b0ddad8277, ; 1449 => androidx/media3/extractor/text/SubtitleParser$OutputOptions
	i64 u0xd3fdbbda8d68fda5, ; 1450 => androidx/camera/core/ImageCapture$OnImageCapturedCallback
	i64 u0xd420aecb035ca006, ; 1451 => crc640360c8a960a6805b/CustomAccessibilityDelegate
	i64 u0xd538384fb20ae66c, ; 1452 => java/text/DecimalFormat
	i64 u0xd59ecec99fd063b4, ; 1453 => androidx/navigation/NavOptions
	i64 u0xd5a28b8fa6d48e71, ; 1454 => android/os/Build
	i64 u0xd5bfeae2074a5b36, ; 1455 => android/widget/Filter$FilterResults
	i64 u0xd67fed0d6f1b3dde, ; 1456 => androidx/media3/session/CommandButton
	i64 u0xd687dc86c66ae031, ; 1457 => androidx/core/app/NotificationCompat$Style
	i64 u0xd6880b1e41bf57b5, ; 1458 => java/io/Reader
	i64 u0xd6ec414c6f0409db, ; 1459 => androidx/drawerlayout/widget/DrawerLayout$LayoutParams
	i64 u0xd6ffcfcf48e26125, ; 1460 => androidx/camera/core/impl/UseCaseConfigFactory
	i64 u0xd73eadb606b3f155, ; 1461 => androidx/navigation/NavigatorProvider
	i64 u0xd758f43330d4e0ad, ; 1462 => android/graphics/drawable/Icon
	i64 u0xd7811591c5567074, ; 1463 => javax/microedition/khronos/opengles/GL
	i64 u0xd7bca846bc82a088, ; 1464 => androidx/media3/exoplayer/RenderersFactory
	i64 u0xd7bf0ca2c70de05c, ; 1465 => android/util/DisplayMetrics
	i64 u0xd7d412ecfd847e8d, ; 1466 => android/view/WindowInsetsAnimation
	i64 u0xd7e1e4845540748c, ; 1467 => crc640ec207abc449b2ca/ShellSearchView_ClipDrawableWrapper
	i64 u0xd7f6c403483ad98d, ; 1468 => kotlinx/serialization/encoding/CompositeEncoder
	i64 u0xd813e6f20a49bb22, ; 1469 => java/util/LinkedHashSet
	i64 u0xd88443e11b25ea33, ; 1470 => java/util/function/UnaryOperator
	i64 u0xd8aaec9071b6abf2, ; 1471 => crc645d80431ce5f73f11/CarouselSpacingItemDecoration
	i64 u0xd8ab954c8665d775, ; 1472 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat
	i64 u0xd9576dfa3a764dc4, ; 1473 => androidx/camera/extensions/CameraExtensionsInfo
	i64 u0xd95d6dc3cf850ced, ; 1474 => android/view/View$AccessibilityDelegate
	i64 u0xd9894fafe0aa82b4, ; 1475 => mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor
	i64 u0xd9aebd86bdaf8ad1, ; 1476 => androidx/fragment/app/FragmentResultListener
	i64 u0xd9af3f71e595db52, ; 1477 => kotlin/reflect/KTypeParameter
	i64 u0xd9b7c5a9770e7b12, ; 1478 => androidx/camera/video/FileOutputOptions
	i64 u0xd9bf98f7765a21b1, ; 1479 => android/graphics/drawable/shapes/Shape
	i64 u0xd9f80c7ded36b670, ; 1480 => crc64e1fb321c08285b90/ViewRenderer
	i64 u0xda24dc0f1c8c18bc, ; 1481 => crc640ec207abc449b2ca/ShellItemRenderer
	i64 u0xda68913bc1c106cd, ; 1482 => com/microsoft/maui/PlatformLineHeightSpan
	i64 u0xdbb1cb3e761b7615, ; 1483 => crc645d80431ce5f73f11/PositionalSmoothScroller
	i64 u0xdbb2d0179830a0a6, ; 1484 => androidx/media3/common/MediaItem$SubtitleConfiguration
	i64 u0xdbb76cb30e7b6509, ; 1485 => android/content/ContentResolver
	i64 u0xdbc489fcfe0eac15, ; 1486 => androidx/camera/core/impl/ImageInputConfig$Builder
	i64 u0xdbc6b808ac4d7d65, ; 1487 => androidx/camera/core/impl/CameraCaptureMetaData
	i64 u0xdc132bd7fe147400, ; 1488 => androidx/core/graphics/drawable/DrawableCompat
	i64 u0xdc5c62ea80134007, ; 1489 => android/view/inputmethod/TextSnapshot
	i64 u0xdc870aeaa9abb8f0, ; 1490 => androidx/media3/session/SessionCommand
	i64 u0xdc8c5477e2f268e6, ; 1491 => androidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher
	i64 u0xdc8cbcd782c8060c, ; 1492 => androidx/media3/exoplayer/image/ImageOutput
	i64 u0xdcbab16d05f31663, ; 1493 => android/app/SearchableInfo
	i64 u0xdccf355ea3232d20, ; 1494 => crc6486af4e8104107bae/AppCompatEditTextExt
	i64 u0xdce51d0c09d90fa8, ; 1495 => com/google/android/material/navigation/NavigationBarMenuView
	i64 u0xdd20fdef9c9ddad0, ; 1496 => com/microsoft/maui/MauiViewGroup
	i64 u0xdd3b9929bc462c67, ; 1497 => crc645d80431ce5f73f11/NongreedySnapHelper
	i64 u0xdd463626e67f1bf6, ; 1498 => androidx/loader/app/LoaderManager
	i64 u0xdd7919f89d55038d, ; 1499 => crc6481e5b28a6b4dd87a/NativeSnapLayout
	i64 u0xdd812f1d4afa427b, ; 1500 => java/lang/UnsupportedOperationException
	i64 u0xddbb492979f5c092, ; 1501 => com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener
	i64 u0xdde3ded0ec573476, ; 1502 => androidx/recyclerview/widget/RecyclerView$Recycler
	i64 u0xddeb5e38523313ea, ; 1503 => android/content/DialogInterface$OnKeyListener
	i64 u0xde36efb42da7cc2d, ; 1504 => javax/net/ssl/SSLSessionContext
	i64 u0xde661e8331fec958, ; 1505 => androidx/appcompat/graphics/drawable/DrawerArrowDrawable
	i64 u0xde77d411368f787e, ; 1506 => crc64338477404e88479c/InnerScaleListener
	i64 u0xde9b5e8488610564, ; 1507 => android/view/GestureDetector$SimpleOnGestureListener
	i64 u0xdec29d1ad6406856, ; 1508 => androidx/camera/core/impl/CameraDeviceSurfaceManager
	i64 u0xdeca2ec5a22a5e73, ; 1509 => crc648e35430423bd4943/SKGLTextureView
	i64 u0xdee6e35ea742e03e, ; 1510 => androidx/core/app/NotificationCompat$Builder
	i64 u0xdf09f81bead0a7bd, ; 1511 => androidx/camera/core/SessionConfig
	i64 u0xdf2b95a4ece2b3f7, ; 1512 => androidx/camera/core/impl/Config$OptionMatcher
	i64 u0xdf57213be15322dd, ; 1513 => android/graphics/Paint$FontMetrics
	i64 u0xdf60ac1aec5f22f9, ; 1514 => androidx/camera/core/impl/RequestProcessor$Callback
	i64 u0xdf7a8cd0384eaf2c, ; 1515 => android/view/animation/DecelerateInterpolator
	i64 u0xdfd5ccafba5e6939, ; 1516 => androidx/media3/exoplayer/source/chunk/Chunk
	i64 u0xdfecd839d4f3e1a4, ; 1517 => androidx/appcompat/widget/AppCompatButton
	i64 u0xdfef58a3c722a78d, ; 1518 => android/view/ContextMenu
	i64 u0xe01f96c3792a5999, ; 1519 => androidx/camera/core/impl/StreamSpec
	i64 u0xe024b538ad65ea66, ; 1520 => java/util/function/Consumer
	i64 u0xe0446bf91fb0c2dd, ; 1521 => java/lang/NoClassDefFoundError
	i64 u0xe07294a62243ee1f, ; 1522 => androidx/camera/core/impl/CameraCaptureCallback
	i64 u0xe084597aeb6014f1, ; 1523 => androidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig
	i64 u0xe092996eb02be58a, ; 1524 => android/webkit/RenderProcessGoneDetail
	i64 u0xe0b2becf1de762d8, ; 1525 => kotlinx/serialization/DeserializationStrategy
	i64 u0xe0b600ed9de21982, ; 1526 => com/google/android/material/appbar/AppBarLayout$LiftOnScrollListener
	i64 u0xe0f47e92347d97e9, ; 1527 => android/os/Parcelable
	i64 u0xe116bc26f4f89e46, ; 1528 => androidx/fragment/app/FragmentFactory
	i64 u0xe149f6bc65d447d8, ; 1529 => androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action
	i64 u0xe156c210e126089c, ; 1530 => android/view/ViewStructure
	i64 u0xe1682b764dc034e8, ; 1531 => androidx/camera/core/impl/SessionProcessor
	i64 u0xe16a6d5f0e70fc15, ; 1532 => androidx/media3/common/MediaItem$LiveConfiguration
	i64 u0xe17ffbb89b1fb57f, ; 1533 => androidx/core/view/RoundedCornerCompat
	i64 u0xe1b04ab6156538aa, ; 1534 => crc64e1fb321c08285b90/CellRenderer_RendererHolder
	i64 u0xe1b3c5871398eb28, ; 1535 => java/nio/channels/FileChannel
	i64 u0xe1bb787ca7ca5fee, ; 1536 => androidx/appcompat/app/AppCompatCallback
	i64 u0xe1bf08ed09c2c547, ; 1537 => android/widget/Filterable
	i64 u0xe1c84d8d5b9434cc, ; 1538 => crc64f5844edce43316e7/TabStrip
	i64 u0xe1e9b8b006533b8c, ; 1539 => crc6452ffdc5b34af3a0f/WebViewExtensions_JavascriptResult
	i64 u0xe2268cf85462644e, ; 1540 => androidx/media3/session/MediaStyleNotificationHelper
	i64 u0xe22bb95540a673ba, ; 1541 => android/window/OnBackInvokedDispatcher
	i64 u0xe259a517ff822e70, ; 1542 => androidx/camera/core/internal/CameraUseCaseAdapter
	i64 u0xe28cd0a2e6de00c1, ; 1543 => java/security/KeyStore
	i64 u0xe28f7119e3bcea05, ; 1544 => android/util/Rational
	i64 u0xe2fccb68b1269f1c, ; 1545 => androidx/camera/core/impl/CameraCaptureMetaData$AfState
	i64 u0xe324013d7e39b88a, ; 1546 => mono/android/content/DialogInterface_OnCancelListenerImplementor
	i64 u0xe351dccbfffb7df1, ; 1547 => crc64338477404e88479c/FragmentContainer
	i64 u0xe37bab6623ca3f34, ; 1548 => androidx/lifecycle/ViewModel
	i64 u0xe3843bf91193455c, ; 1549 => android/util/SparseArray
	i64 u0xe38528954b158fff, ; 1550 => java/util/concurrent/Executor
	i64 u0xe39829b35e720e04, ; 1551 => java/util/function/IntConsumer
	i64 u0xe3afce923c3bb432, ; 1552 => communityToolkit/maui/media/services
	i64 u0xe3b32b29aed12354, ; 1553 => mono/com/google/android/material/checkbox/MaterialCheckBox_OnErrorChangedListenerImplementor
	i64 u0xe3e73f662c17d47c, ; 1554 => androidx/camera/core/impl/SessionConfig$OutputConfig$Builder
	i64 u0xe437ac3d638a3fef, ; 1555 => android/text/method/BaseKeyListener
	i64 u0xe4ad6aa98d2cce4c, ; 1556 => crc6479d6f9e48582dc67/NativeTreeViewScrollView
	i64 u0xe4c5b0a99cb44963, ; 1557 => kotlin/reflect/KTypeProjection$Companion
	i64 u0xe4e8702fce78eb3a, ; 1558 => crc640ec207abc449b2ca/ShellSearchViewAdapter
	i64 u0xe4f6c83baa637de1, ; 1559 => androidx/media3/exoplayer/source/LoadEventInfo
	i64 u0xe5028846deb1244d, ; 1560 => com/microsoft/maui/PlatformLogger
	i64 u0xe503c0c55a6f84b7, ; 1561 => androidx/camera/core/featuregroup/GroupableFeature
	i64 u0xe50fb4f0adb1330f, ; 1562 => android/widget/ImageView
	i64 u0xe5198b3185c5450a, ; 1563 => android/text/NoCopySpan
	i64 u0xe5648777cc2d7acc, ; 1564 => androidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair
	i64 u0xe57e063876d83762, ; 1565 => android/provider/MediaStore$Video
	i64 u0xe59c130e7d1e4ac3, ; 1566 => java/security/SecureRandom
	i64 u0xe607a819ce5a08d8, ; 1567 => mono/androidx/media3/ui/PlayerControlView_OnFullScreenModeChangedListenerImplementor
	i64 u0xe635a54b0edb478c, ; 1568 => android/view/inputmethod/HandwritingGesture
	i64 u0xe663c278c572f570, ; 1569 => android/database/CharArrayBuffer
	i64 u0xe66e73e6f14e03d2, ; 1570 => android/widget/AdapterView$OnItemLongClickListener
	i64 u0xe690be1a76abc139, ; 1571 => androidx/camera/core/impl/Config$OptionPriority
	i64 u0xe69fd761f3982876, ; 1572 => androidx/media3/exoplayer/source/SequenceableLoader$Callback
	i64 u0xe6b76c398e304c92, ; 1573 => kotlin/coroutines/Continuation
	i64 u0xe6cd200754f8f60a, ; 1574 => android/view/Window$Callback
	i64 u0xe6d0135d38ccb41c, ; 1575 => androidx/appcompat/widget/LinearLayoutCompat$LayoutParams
	i64 u0xe72468967b13cd11, ; 1576 => androidx/appcompat/view/ActionMode
	i64 u0xe7452a6f5c925f12, ; 1577 => androidx/viewpager/widget/ViewPager$OnPageChangeListener
	i64 u0xe75630a521411315, ; 1578 => android/support/v4/media/session/PlaybackStateCompat$CustomAction
	i64 u0xe79198d17cd61fdd, ; 1579 => android/content/pm/PackageInfo
	i64 u0xe79ac91277736a72, ; 1580 => androidx/cursoradapter/widget/CursorAdapter
	i64 u0xe7b02a99cc948463, ; 1581 => crc64f5844edce43316e7/ProTimer
	i64 u0xe7c5168fd08808ad, ; 1582 => android/content/res/AssetFileDescriptor
	i64 u0xe7cd116bc6268309, ; 1583 => mono/com/google/android/material/tabs/TabLayout_BaseOnTabSelectedListenerImplementor
	i64 u0xe7f8d72d37eced45, ; 1584 => android/view/View$OnDragListener
	i64 u0xe80bc29eab60a114, ; 1585 => crc64f5844edce43316e7/ItemViewHolder
	i64 u0xe81ccd56d897dfbf, ; 1586 => android/content/DialogInterface$OnMultiChoiceClickListener
	i64 u0xe86c900b9d4ca193, ; 1587 => com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback
	i64 u0xe89da97b609fddcb, ; 1588 => kotlinx/coroutines/CoroutineScope
	i64 u0xe8b52a7318e34a5d, ; 1589 => androidx/core/view/WindowCompat
	i64 u0xe8cbe514aeeebda7, ; 1590 => com/google/android/material/navigation/NavigationBarItemView
	i64 u0xe8d0c30ab85673ff, ; 1591 => android/view/View$OnTouchListener
	i64 u0xe8ea7675ab17537b, ; 1592 => androidx/media3/common/VideoSize
	i64 u0xe90f97d4a8779aba, ; 1593 => androidx/camera/core/impl/CameraThreadConfig
	i64 u0xe92206056a1e06df, ; 1594 => androidx/camera/core/RetryPolicy$RetryConfig
	i64 u0xe9386aaf92488cd7, ; 1595 => android/widget/EdgeEffect
	i64 u0xe94dd9d7a0bada9f, ; 1596 => android/content/res/AssetManager
	i64 u0xe94e56d31bbb02b6, ; 1597 => com/google/android/material/navigation/NavigationBarView$OnItemReselectedListener
	i64 u0xe9a6a557012633af, ; 1598 => crc64338477404e88479c/DragAndDropGestureHandler
	i64 u0xe9b7e5b7cbaed03b, ; 1599 => androidx/camera/video/VideoCapabilities
	i64 u0xe9cf0c51f32f4ede, ; 1600 => androidx/camera/core/impl/CameraCaptureResult
	i64 u0xe9f1e6df0de3646b, ; 1601 => androidx/cardview/widget/CardView
	i64 u0xea05b3ee0fb76695, ; 1602 => androidx/camera/video/VideoCapture
	i64 u0xea0bdfe2dd73aeb6, ; 1603 => androidx/camera/core/imagecapture/RequestWithCallback
	i64 u0xea0fdc01c2239d1a, ; 1604 => androidx/media3/session/SessionCommands$Builder
	i64 u0xea404e10a903dbb8, ; 1605 => androidx/navigation/NavViewModelStoreProvider
	i64 u0xea429b6c352c1c1a, ; 1606 => android/view/animation/TranslateAnimation
	i64 u0xea728e0f517c558e, ; 1607 => kotlin/reflect/KClass
	i64 u0xea77581d05ee4142, ; 1608 => android/view/ViewTreeObserver$OnGlobalLayoutListener
	i64 u0xea8d7576da2aa058, ; 1609 => android/speech/tts/TextToSpeech$OnUtteranceCompletedListener
	i64 u0xeaeb4c8036a90f29, ; 1610 => crc640a8d9a12ddbf2cf2/DeviceDisplayImplementation_Listener
	i64 u0xeaf6a5430f0b3623, ; 1611 => androidx/media3/common/util/HandlerWrapper
	i64 u0xeaf79fd2ac71dd8d, ; 1612 => androidx/media3/exoplayer/source/SequenceableLoader
	i64 u0xeb82145dcac4c559, ; 1613 => java/lang/Long
	i64 u0xeb918642e3f3d0ee, ; 1614 => com/google/android/material/appbar/MaterialToolbar
	i64 u0xebe39d8298b84309, ; 1615 => androidx/lifecycle/Lifecycle$State
	i64 u0xec423b5666e4a47b, ; 1616 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor
	i64 u0xec7a834af29afbb4, ; 1617 => androidx/camera/core/SurfaceOutput$CameraInputInfo
	i64 u0xec8b276c12c354ff, ; 1618 => android/widget/HorizontalScrollView
	i64 u0xec949171e33dfda8, ; 1619 => kotlinx/serialization/encoding/Decoder
	i64 u0xec9c9d883b1920cb, ; 1620 => androidx/camera/core/impl/Identifier
	i64 u0xeca1a1cbdf01eb65, ; 1621 => androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback
	i64 u0xecf577a3b59693fa, ; 1622 => androidx/fragment/app/FragmentActivity
	i64 u0xed1e2ee1ba8b4d67, ; 1623 => android/hardware/camera2/CameraDevice$StateCallback
	i64 u0xed3bf28f37177c87, ; 1624 => android/content/SharedPreferences$OnSharedPreferenceChangeListener
	i64 u0xed44b6fd79e75a7a, ; 1625 => mono/android/support/v4/media/session/MediaSessionCompat_OnActiveChangeListenerImplementor
	i64 u0xed4878d661403d7e, ; 1626 => androidx/media3/session/MediaSession$Callback
	i64 u0xed49ed70aa9be1b3, ; 1627 => java/nio/channels/spi/AbstractInterruptibleChannel
	i64 u0xed8f46732d9687a1, ; 1628 => androidx/camera/core/ImageAnalysis$Defaults
	i64 u0xee030dac625532e9, ; 1629 => crc64f5844edce43316e7/ThumbnailStrip
	i64 u0xee58348f4c4ad939, ; 1630 => javax/net/ssl/HostnameVerifier
	i64 u0xee6f3d1e7507d907, ; 1631 => java/util/Enumeration
	i64 u0xee790d57bc6939ce, ; 1632 => crc6493855b22b6fa0721/TextToSpeechInternalImplementation
	i64 u0xee9b0e55b4e9242b, ; 1633 => crc6479d6f9e48582dc67/NativeCustomScrolLayout
	i64 u0xeeb466b1609c8ddb, ; 1634 => androidx/viewpager/widget/ViewPager$OnAdapterChangeListener
	i64 u0xeec4bbde96108858, ; 1635 => com/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator
	i64 u0xeed6692b305e945a, ; 1636 => crc64e1fb321c08285b90/SwitchCellView
	i64 u0xeed97b1a03611806, ; 1637 => javax/microedition/khronos/egl/EGLContext
	i64 u0xeef328d1f5b0ffd5, ; 1638 => crc645d80431ce5f73f11/SelectableViewHolder
	i64 u0xef2f2996a1d369cc, ; 1639 => java/io/FileInputStream
	i64 u0xef481f7a1af9d518, ; 1640 => androidx/core/app/NotificationChannelCompat$Builder
	i64 u0xef6af9e9e9537961, ; 1641 => androidx/media3/common/AudioAttributes
	i64 u0xef7212ef395f64aa, ; 1642 => mono/android/view/View_OnFocusChangeListenerImplementor
	i64 u0xef7a3125ca95a92d, ; 1643 => androidx/media3/ui/CaptionStyleCompat
	i64 u0xef7b5b1ae365a0df, ; 1644 => androidx/navigation/fragment/NavHostFragment
	i64 u0xef923c7cf0b20d3d, ; 1645 => androidx/camera/core/ForwardingImageProxy
	i64 u0xef953c41325a3428, ; 1646 => java/io/PrintWriter
	i64 u0xefd8c7aa4b48418e, ; 1647 => android/widget/LinearLayout
	i64 u0xefe20f47f9dcda2e, ; 1648 => com/microsoft/maui/ImageLoaderCallback
	i64 u0xf00499aebbbf1859, ; 1649 => androidx/core/app/ActivityCompat
	i64 u0xf025927f8e99b866, ; 1650 => androidx/recyclerview/widget/RecyclerView$OnFlingListener
	i64 u0xf02caf30c0e4a5c7, ; 1651 => androidx/camera/core/CameraPresenceListener
	i64 u0xf0654f9be531078e, ; 1652 => java/io/Closeable
	i64 u0xf06b3faff90d301b, ; 1653 => androidx/appcompat/widget/Toolbar$LayoutParams
	i64 u0xf0b145cb4b481b64, ; 1654 => mono/com/google/android/material/appbar/AppBarLayout_OnOffsetChangedListenerImplementor
	i64 u0xf0b24a22b573fe22, ; 1655 => java/util/TreeMap
	i64 u0xf0cf138d551e7388, ; 1656 => crc645d80431ce5f73f11/SizedItemContentView
	i64 u0xf0d6570f58a623d5, ; 1657 => crc647db950552a943f28/MainActivity
	i64 u0xf11f22a6441fcfbc, ; 1658 => java/lang/IndexOutOfBoundsException
	i64 u0xf1244788d28ae1f7, ; 1659 => androidx/lifecycle/AtomicReference
	i64 u0xf144bea6cfe93113, ; 1660 => androidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy
	i64 u0xf15bb28304fee21c, ; 1661 => android/provider/Settings$NameValueTable
	i64 u0xf16e73c8be28bf16, ; 1662 => java/lang/annotation/Annotation
	i64 u0xf1923c91feb2cec5, ; 1663 => androidx/browser/customtabs/CustomTabColorSchemeParams
	i64 u0xf1eae814fc93ec98, ; 1664 => android/graphics/Shader$TileMode
	i64 u0xf21aa8d1473bceba, ; 1665 => androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior
	i64 u0xf236b279159cd6de, ; 1666 => crc645d80431ce5f73f11/StructuredItemsViewAdapter_2
	i64 u0xf2746f96a8715737, ; 1667 => androidx/camera/core/Preview$Defaults
	i64 u0xf2952bad3c8f0233, ; 1668 => android/text/Editable
	i64 u0xf295fd61c06a6738, ; 1669 => android/view/View$OnHoverListener
	i64 u0xf298604f5a285696, ; 1670 => androidx/media3/exoplayer/trackselection/TrackSelector
	i64 u0xf2a0b652533c6f79, ; 1671 => crc645d80431ce5f73f11/EndSnapHelper
	i64 u0xf2cdc8dcdb853243, ; 1672 => androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory
	i64 u0xf2e19065f0e73e4d, ; 1673 => java/text/DecimalFormatSymbols
	i64 u0xf2e3de579e508658, ; 1674 => android/provider/MediaStore
	i64 u0xf323c9ddabd70266, ; 1675 => kotlin/jvm/functions/Function1
	i64 u0xf336fb6a1f86aa13, ; 1676 => androidx/core/app/ActivityCompat$PermissionCompatDelegate
	i64 u0xf349b61791b066f0, ; 1677 => androidx/camera/core/impl/Quirk
	i64 u0xf34e92f7f961f0eb, ; 1678 => androidx/camera/core/ConcurrentCamera
	i64 u0xf38608385d689955, ; 1679 => mono/android/runtime/JavaArray
	i64 u0xf3d4ab08aaf25ccb, ; 1680 => java/net/UnknownServiceException
	i64 u0xf3d9da552fe9a5a7, ; 1681 => mono/android/text/TextWatcherImplementor
	i64 u0xf3deb63e2d596087, ; 1682 => androidx/appcompat/widget/AppCompatEditText
	i64 u0xf430e69bc72bf5c0, ; 1683 => android/media/metrics/LogSessionId
	i64 u0xf43224eb7d757fa7, ; 1684 => java/util/concurrent/ExecutorService
	i64 u0xf44314212064bd78, ; 1685 => android/view/ViewConfiguration
	i64 u0xf47b78ba2b97efb9, ; 1686 => androidx/camera/core/impl/ForwardingCameraInfo
	i64 u0xf4f69186b2718c37, ; 1687 => android/location/Location
	i64 u0xf5085ea57b8d83a4, ; 1688 => android/view/accessibility/AccessibilityEvent
	i64 u0xf528a237995c6879, ; 1689 => androidx/camera/core/ImageProcessor$Response
	i64 u0xf52c07920492a796, ; 1690 => androidx/fragment/app/strictmode/FragmentStrictMode
	i64 u0xf53bc5d3b1998b24, ; 1691 => androidx/camera/core/ImageInfo
	i64 u0xf53d4c1a6dbf311b, ; 1692 => android/text/Html
	i64 u0xf53ee7be68a59d41, ; 1693 => com/google/android/material/appbar/CollapsingToolbarLayout
	i64 u0xf54591d16dde07b0, ; 1694 => androidx/media3/common/MediaItem$DrmConfiguration$Builder
	i64 u0xf54855065ce009bd, ; 1695 => android/content/pm/ConfigurationInfo
	i64 u0xf55223b6e3eecb56, ; 1696 => androidx/core/view/MenuItemCompat
	i64 u0xf55d9ff0318ff888, ; 1697 => androidx/core/view/WindowInsetsAnimationCompat$Callback
	i64 u0xf57171fdf29f5557, ; 1698 => androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher
	i64 u0xf57a883b87fe9056, ; 1699 => crc6488302ad6e9e4df1a/MauiAppCompatActivity
	i64 u0xf589cc0bcdc773a9, ; 1700 => mono/com/google/android/material/navigation/NavigationBarView_OnItemReselectedListenerImplementor
	i64 u0xf5ab0aa16946826a, ; 1701 => androidx/media3/exoplayer/source/MediaSource$MediaSourceCaller
	i64 u0xf5bc8b9a77351ffc, ; 1702 => android/graphics/drawable/ShapeDrawable
	i64 u0xf5ce2952fd4a7060, ; 1703 => androidx/camera/core/ImageCaptureCapabilities
	i64 u0xf5f6efe4654731f5, ; 1704 => androidx/camera/core/ImageReaderProxyProvider
	i64 u0xf61f943f0206ffef, ; 1705 => androidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback
	i64 u0xf623b3fb4c4afa2e, ; 1706 => androidx/camera/core/resolutionselector/AspectRatioStrategy
	i64 u0xf62a876be707d0b8, ; 1707 => crc645d80431ce5f73f11/RecyclerViewScrollListener_2
	i64 u0xf652408cf9160c75, ; 1708 => androidx/media3/common/Effect
	i64 u0xf68f57f80c555315, ; 1709 => crc6452ffdc5b34af3a0f/MauiShapeableImageView
	i64 u0xf69be4289311bd6a, ; 1710 => androidx/media3/common/DeviceInfo
	i64 u0xf6a84ab2352c2e84, ; 1711 => java/util/function/ToLongFunction
	i64 u0xf6b6db79acc3d8f0, ; 1712 => androidx/camera/core/ImageCapture$Metadata
	i64 u0xf7595172a9a58b85, ; 1713 => mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor
	i64 u0xf75d8dd75143511a, ; 1714 => androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments
	i64 u0xf7df86f1c9d8e4a3, ; 1715 => com/google/android/material/tabs/TabLayout$OnTabSelectedListener
	i64 u0xf7e5a0fcd1becf27, ; 1716 => mono/androidx/media3/ui/PlayerControlView_VisibilityListenerImplementor
	i64 u0xf8058f3d708eaf64, ; 1717 => android/text/style/SuperscriptSpan
	i64 u0xf825e7294d941e1f, ; 1718 => androidx/camera/core/impl/PreviewConfig
	i64 u0xf85cbededb432844, ; 1719 => java/security/spec/EncodedKeySpec
	i64 u0xf86d1ada6f6d214a, ; 1720 => mono/com/google/android/material/appbar/AppBarLayout_LiftOnScrollListenerImplementor
	i64 u0xf8ca4a570d78d8fe, ; 1721 => crc645d80431ce5f73f11/DataChangeObserver
	i64 u0xf8ce0ad191cefbc4, ; 1722 => androidx/core/view/ActionProvider
	i64 u0xf953bb1666d00630, ; 1723 => androidx/camera/core/CompositionSettings
	i64 u0xf9665f0bb989fc04, ; 1724 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat
	i64 u0xf9ad79a231c20217, ; 1725 => java/util/AbstractCollection
	i64 u0xf9df3849f259e110, ; 1726 => android/view/inputmethod/SurroundingText
	i64 u0xf9df9bc4da0b5adc, ; 1727 => androidx/camera/core/CameraControl
	i64 u0xf9e936b25401d5d4, ; 1728 => androidx/recyclerview/widget/RecyclerViewAccessibilityDelegate
	i64 u0xfa1baa381b3f9cde, ; 1729 => mono/java/lang/Runnable
	i64 u0xfa1d5ed2f58367c8, ; 1730 => androidx/core/view/ViewPropertyAnimatorUpdateListener
	i64 u0xfa3358820cdcdbb3, ; 1731 => androidx/core/app/NotificationManagerCompat
	i64 u0xfa7b056a355a9bca, ; 1732 => android/support/v4/media/session/MediaControllerCompat$TransportControls
	i64 u0xfa87a527bf5e5d1f, ; 1733 => androidx/camera/core/Preview
	i64 u0xfaa2c879d63dad6e, ; 1734 => android/widget/Switch
	i64 u0xfac7e280adbe4149, ; 1735 => android/view/inputmethod/BaseInputConnection
	i64 u0xfac92c73e59de3a9, ; 1736 => crc6488302ad6e9e4df1a/MauiApplication_ActivityLifecycleCallbacks
	i64 u0xfaee1f89c751c767, ; 1737 => android/view/autofill/AutofillId
	i64 u0xfb0541dba11b69d9, ; 1738 => android/graphics/Color
	i64 u0xfb3f8ff4b6c72bde, ; 1739 => androidx/versionedparcelable/VersionedParcelable
	i64 u0xfb451910cd924e38, ; 1740 => androidx/media3/exoplayer/drm/DrmSessionEventListener
	i64 u0xfb62cd37b72a66e7, ; 1741 => androidx/media3/session/SessionError
	i64 u0xfb7acb9a6ab88dfc, ; 1742 => android/view/GestureDetector$OnDoubleTapListener
	i64 u0xfb95200d9bf41dfa, ; 1743 => androidx/core/app/NotificationBuilderWithBuilderAccessor
	i64 u0xfb9909be06ff7396, ; 1744 => androidx/core/view/OnReceiveContentListener
	i64 u0xfb9a51a22eb2843f, ; 1745 => javax/security/cert/Certificate
	i64 u0xfbc767061ef27e09, ; 1746 => androidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult
	i64 u0xfbde04d5b5157c93, ; 1747 => androidx/lifecycle/Lifecycle$Event
	i64 u0xfbe9bfa5cc50fed6, ; 1748 => java/util/HashSet
	i64 u0xfbf339bcc735c980, ; 1749 => crc64354973402314325c/SpaceItemDecoration
	i64 u0xfc16c38c998d430c, ; 1750 => kotlin/enums/EnumEntries
	i64 u0xfc406a5c9ae396f0, ; 1751 => crc64338477404e88479c/InnerGestureListener
	i64 u0xfc40c16a360aac93, ; 1752 => com/microsoft/maui/PlatformInterop
	i64 u0xfc64f6dc9166eaf2, ; 1753 => crc6452ffdc5b34af3a0f/MauiWebViewClient
	i64 u0xfc6883cbde20375a, ; 1754 => androidx/camera/core/CameraIdentifier
	i64 u0xfc78a7521cff7b95, ; 1755 => androidx/media3/exoplayer/LivePlaybackSpeedControl
	i64 u0xfcb3254d3921ac28, ; 1756 => androidx/appcompat/widget/DecorToolbar
	i64 u0xfcb507ff775c1269, ; 1757 => com/google/android/material/badge/BadgeDrawable
	i64 u0xfceb270d37176318, ; 1758 => androidx/camera/core/SurfaceProcessor
	i64 u0xfcefd984af922310, ; 1759 => android/opengl/GLDebugHelper
	i64 u0xfcfb527dd74d3ecc, ; 1760 => android/support/v4/media/MediaDescriptionCompat
	i64 u0xfd2b1a3de667eb51, ; 1761 => java/lang/Runnable
	i64 u0xfd32c7b4b775d06c, ; 1762 => androidx/media3/common/Tracks
	i64 u0xfd45cc49d3236300, ; 1763 => android/os/IBinder$DeathRecipient
	i64 u0xfd4ff765c5f32a77, ; 1764 => crc640ec207abc449b2ca/ShellToolbarTracker_FlyoutIconDrawerDrawable
	i64 u0xfd582859e64f83db, ; 1765 => crc64e1fb321c08285b90/GroupedListViewAdapter
	i64 u0xfd6f34ffcf88aced, ; 1766 => androidx/core/widget/NestedScrollView
	i64 u0xfd830ff8e6ccffed, ; 1767 => android/widget/AdapterView$OnItemClickListener
	i64 u0xfd853b4373fcc7f1, ; 1768 => android/view/WindowMetrics
	i64 u0xfdb80a97163c2d42, ; 1769 => androidx/media3/common/AdPlaybackState$AdGroup
	i64 u0xfdcaff9cf0f28f33, ; 1770 => crc640ec207abc449b2ca/ShellPageContainer
	i64 u0xfdf56d1e55549adf, ; 1771 => mono/androidx/recyclerview/widget/RecyclerView_RecyclerListenerImplementor
	i64 u0xfe07df0b35277433, ; 1772 => android/widget/LinearLayout$LayoutParams
	i64 u0xfe1a93aee76753cc, ; 1773 => androidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy
	i64 u0xfe6b0b2cfdd593b8, ; 1774 => android/text/style/ForegroundColorSpan
	i64 u0xfe82461141d5a47e, ; 1775 => crc6452ffdc5b34af3a0f/MauiSearchView
	i64 u0xfebcdabf0ccfc548, ; 1776 => android/content/pm/ShortcutInfo$Builder
	i64 u0xfebf2b77f1940e7e, ; 1777 => java/security/PrivateKey
	i64 u0xfedc22e568a65326, ; 1778 => android/widget/TextView$OnEditorActionListener
	i64 u0xff079db13d3076a9, ; 1779 => androidx/core/content/ContextCompat
	i64 u0xff1fe60c1de18005, ; 1780 => javax/microedition/khronos/egl/EGLDisplay
	i64 u0xffd092c889d0e828, ; 1781 => com/google/android/material/bottomsheet/BottomSheetDialog
	i64 u0xfff33782bdf2bde2 ; 1782 => android/widget/CompoundButton$OnCheckedChangeListener
], align 8

@module0_managed_to_java = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 1220; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 196; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 510; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 20; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 1296; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 723; uint32_t java_map_index
	} ; 5
], align 4

@module0_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 196; uint32_t java_map_index
	} ; 0
], align 4

@module1_managed_to_java = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 1390; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 1663; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 672; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 476; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 998; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 1345; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 1232; uint32_t java_map_index
	} ; 6
], align 4

@module1_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 1232; uint32_t java_map_index
	} ; 0
], align 4

@module2_managed_to_java = internal dso_local constant [20 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 1622; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 1398; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000025, ; uint32_t type_token_id
		i32 507; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000026, ; uint32_t type_token_id
		i32 647; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000027, ; uint32_t type_token_id
		i32 1080; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 735; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 1528; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 397; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 462; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200002e, ; uint32_t type_token_id
		i32 568; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000030, ; uint32_t type_token_id
		i32 1421; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000032, ; uint32_t type_token_id
		i32 1095; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000037, ; uint32_t type_token_id
		i32 784; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 443; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 522; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 929; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 1476; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 1690; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 581; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 1338; uint32_t java_map_index
	} ; 19
], align 4

@module2_managed_to_java_duplicates = internal dso_local constant [10 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 1080; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 397; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200002f, ; uint32_t type_token_id
		i32 568; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000031, ; uint32_t type_token_id
		i32 1421; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000033, ; uint32_t type_token_id
		i32 1095; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 462; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000047, ; uint32_t type_token_id
		i32 443; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 522; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 1476; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 1338; uint32_t java_map_index
	} ; 9
], align 4

@module3_managed_to_java = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 459; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 1161; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 1634; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000022, ; uint32_t type_token_id
		i32 650; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 1577; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 145; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 876; uint32_t java_map_index
	} ; 6
], align 4

@module3_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 459; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 1634; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 1577; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 876; uint32_t java_map_index
	} ; 3
], align 4

@module4_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 231; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 751; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 1245; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 34; uint32_t java_map_index
	} ; 3
], align 4

@module5_managed_to_java = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 962; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 1548; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 182; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 1162; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 1121; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 1087; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 816; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 307; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 83; uint32_t java_map_index
	} ; 8
], align 4

@module5_managed_to_java_duplicates = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 962; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 1548; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 1121; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 307; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 816; uint32_t java_map_index
	} ; 4
], align 4

@module6_managed_to_java = internal dso_local constant [41 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 392; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 474; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 1409; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 109; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 1288; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000053, ; uint32_t type_token_id
		i32 512; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000054, ; uint32_t type_token_id
		i32 553; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000055, ; uint32_t type_token_id
		i32 111; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000056, ; uint32_t type_token_id
		i32 724; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000058, ; uint32_t type_token_id
		i32 652; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000059, ; uint32_t type_token_id
		i32 963; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 961; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 728; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 616; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200005f, ; uint32_t type_token_id
		i32 466; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000061, ; uint32_t type_token_id
		i32 1672; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000062, ; uint32_t type_token_id
		i32 1180; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000063, ; uint32_t type_token_id
		i32 506; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000065, ; uint32_t type_token_id
		i32 48; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000067, ; uint32_t type_token_id
		i32 698; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000069, ; uint32_t type_token_id
		i32 675; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 559; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 1213; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 1141; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 931; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000073, ; uint32_t type_token_id
		i32 249; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000074, ; uint32_t type_token_id
		i32 1650; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000076, ; uint32_t type_token_id
		i32 393; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 844; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 148; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 732; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 1502; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x02000080, ; uint32_t type_token_id
		i32 1170; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x02000083, ; uint32_t type_token_id
		i32 1771; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000084, ; uint32_t type_token_id
		i32 768; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000085, ; uint32_t type_token_id
		i32 1529; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x02000087, ; uint32_t type_token_id
		i32 729; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x02000088, ; uint32_t type_token_id
		i32 79; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 1399; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x02000099, ; uint32_t type_token_id
		i32 1728; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 140; uint32_t java_map_index
	} ; 40
], align 4

@module6_managed_to_java_duplicates = internal dso_local constant [21 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 474; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 1409; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000052, ; uint32_t type_token_id
		i32 1288; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000057, ; uint32_t type_token_id
		i32 724; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200005c, ; uint32_t type_token_id
		i32 961; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 616; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000060, ; uint32_t type_token_id
		i32 466; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000064, ; uint32_t type_token_id
		i32 506; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000066, ; uint32_t type_token_id
		i32 1180; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000068, ; uint32_t type_token_id
		i32 698; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 559; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 675; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 931; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000075, ; uint32_t type_token_id
		i32 1650; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000077, ; uint32_t type_token_id
		i32 393; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 148; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000081, ; uint32_t type_token_id
		i32 1170; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000086, ; uint32_t type_token_id
		i32 768; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000089, ; uint32_t type_token_id
		i32 79; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200008b, ; uint32_t type_token_id
		i32 1399; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 140; uint32_t java_map_index
	} ; 20
], align 4

@module7_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 1363; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 535; uint32_t java_map_index
	} ; 1
], align 4

@module8_managed_to_java = internal dso_local constant [13 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 1456; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 1010; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 968; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 1626; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 281; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 130; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 1540; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 619; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 1490; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 1119; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 1604; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 1741; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 632; uint32_t java_map_index
	} ; 12
], align 4

@module8_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 1626; uint32_t java_map_index
	} ; 0
], align 4

@module9_managed_to_java = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 28; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 532; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 197; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 353; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 2; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 1028; uint32_t java_map_index
	} ; 5
], align 4

@module9_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 2; uint32_t java_map_index
	} ; 0
], align 4

@module10_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000078, ; uint32_t type_token_id
		i32 1359; uint32_t java_map_index
	} ; 0
], align 4

@module11_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 1588; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 297; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 108; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 839; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 767; uint32_t java_map_index
	} ; 4
], align 4

@module11_managed_to_java_duplicates = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 1588; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 297; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 108; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 839; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 767; uint32_t java_map_index
	} ; 4
], align 4

@module12_managed_to_java = internal dso_local constant [39 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 1451; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 334; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 645; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 890; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000068, ; uint32_t type_token_id
		i32 1051; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 1499; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000071, ; uint32_t type_token_id
		i32 1312; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 387; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 220; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x020000a1, ; uint32_t type_token_id
		i32 1585; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x020000a5, ; uint32_t type_token_id
		i32 1360; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x020000a6, ; uint32_t type_token_id
		i32 160; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x020000a7, ; uint32_t type_token_id
		i32 1538; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x020000a8, ; uint32_t type_token_id
		i32 1629; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x020000a9, ; uint32_t type_token_id
		i32 874; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x020000ac, ; uint32_t type_token_id
		i32 1581; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x020000ae, ; uint32_t type_token_id
		i32 612; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x020000b2, ; uint32_t type_token_id
		i32 1349; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x020000c4, ; uint32_t type_token_id
		i32 450; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x020000c5, ; uint32_t type_token_id
		i32 194; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x020000e8, ; uint32_t type_token_id
		i32 379; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x020000e9, ; uint32_t type_token_id
		i32 1092; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x020000f5, ; uint32_t type_token_id
		i32 416; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x020000f9, ; uint32_t type_token_id
		i32 1633; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000106, ; uint32_t type_token_id
		i32 1556; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x0200010c, ; uint32_t type_token_id
		i32 199; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000115, ; uint32_t type_token_id
		i32 1089; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x0200011f, ; uint32_t type_token_id
		i32 151; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000120, ; uint32_t type_token_id
		i32 624; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000121, ; uint32_t type_token_id
		i32 483; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x02000122, ; uint32_t type_token_id
		i32 1107; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200012c, ; uint32_t type_token_id
		i32 1749; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x02000131, ; uint32_t type_token_id
		i32 893; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x02000132, ; uint32_t type_token_id
		i32 1494; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000133, ; uint32_t type_token_id
		i32 965; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000134, ; uint32_t type_token_id
		i32 300; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x02000138, ; uint32_t type_token_id
		i32 543; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x0200013b, ; uint32_t type_token_id
		i32 747; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x0200013c, ; uint32_t type_token_id
		i32 260; uint32_t java_map_index
	} ; 38
], align 4

@module13_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 797; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 52; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 1644; uint32_t java_map_index
	} ; 2
], align 4

@module14_managed_to_java = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 827; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 1632; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200002e, ; uint32_t type_token_id
		i32 1215; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000030, ; uint32_t type_token_id
		i32 473; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000062, ; uint32_t type_token_id
		i32 951; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000063, ; uint32_t type_token_id
		i32 1289; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 1610; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000079, ; uint32_t type_token_id
		i32 1149; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 1002; uint32_t java_map_index
	} ; 8
], align 4

@module15_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 776; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 278; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 1473; uint32_t java_map_index
	} ; 2
], align 4

@module15_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 278; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 1473; uint32_t java_map_index
	} ; 1
], align 4

@module16_managed_to_java = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 1034; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 1747; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 1615; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 1659; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 833; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 181; uint32_t java_map_index
	} ; 5
], align 4

@module16_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 833; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 181; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 1034; uint32_t java_map_index
	} ; 2
], align 4

@module17_managed_to_java = internal dso_local constant [25 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 1113; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 1210; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 333; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 147; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 1607; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 1344; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 1072; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 155; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 1278; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000021, ; uint32_t type_token_id
		i32 1350; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 814; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000025, ; uint32_t type_token_id
		i32 1477; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000027, ; uint32_t type_token_id
		i32 514; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 1557; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 1138; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 1021; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 1317; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 908; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200002e, ; uint32_t type_token_id
		i32 631; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000030, ; uint32_t type_token_id
		i32 1675; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000032, ; uint32_t type_token_id
		i32 456; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000034, ; uint32_t type_token_id
		i32 1750; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000036, ; uint32_t type_token_id
		i32 1573; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000038, ; uint32_t type_token_id
		i32 235; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 819; uint32_t java_map_index
	} ; 24
], align 4

@module17_managed_to_java_duplicates = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 1113; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 1210; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 333; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 147; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 1607; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 1344; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 1072; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 155; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000022, ; uint32_t type_token_id
		i32 1350; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 814; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000026, ; uint32_t type_token_id
		i32 1477; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 908; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200002f, ; uint32_t type_token_id
		i32 631; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000031, ; uint32_t type_token_id
		i32 1675; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000033, ; uint32_t type_token_id
		i32 456; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000035, ; uint32_t type_token_id
		i32 1750; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000037, ; uint32_t type_token_id
		i32 1573; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000039, ; uint32_t type_token_id
		i32 235; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 819; uint32_t java_map_index
	} ; 18
], align 4

@module18_managed_to_java = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 1025; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 1266; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 646; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 806; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 406; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 32; uint32_t java_map_index
	} ; 5
], align 4

@module18_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 646; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 806; uint32_t java_map_index
	} ; 1
], align 4

@module19_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 1050; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 1739; uint32_t java_map_index
	} ; 1
], align 4

@module19_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 1050; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 1739; uint32_t java_map_index
	} ; 1
], align 4

@module20_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 202; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 39; uint32_t java_map_index
	} ; 1
], align 4

@module20_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 202; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 39; uint32_t java_map_index
	} ; 1
], align 4

@module21_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 1228; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 636; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 1244; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 1459; uint32_t java_map_index
	} ; 3
], align 4

@module21_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 636; uint32_t java_map_index
	} ; 0
], align 4

@module22_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 65; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000021, ; uint32_t type_token_id
		i32 146; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000027, ; uint32_t type_token_id
		i32 1347; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 936; uint32_t java_map_index
	} ; 3
], align 4

@module23_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000003, ; uint32_t type_token_id
		i32 1413; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 1248; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 1030; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 1445; uint32_t java_map_index
	} ; 3
], align 4

@module23_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 1030; uint32_t java_map_index
	} ; 0
], align 4

@module24_managed_to_java = internal dso_local constant [93 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000044, ; uint32_t type_token_id
		i32 1441; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 1123; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 954; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 971; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 352; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 386; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 135; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 1488; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 591; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 1779; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 783; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000052, ; uint32_t type_token_id
		i32 448; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000053, ; uint32_t type_token_id
		i32 984; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000054, ; uint32_t type_token_id
		i32 242; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000055, ; uint32_t type_token_id
		i32 938; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000056, ; uint32_t type_token_id
		i32 1649; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000057, ; uint32_t type_token_id
		i32 1676; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000059, ; uint32_t type_token_id
		i32 165; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 887; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 492; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200005c, ; uint32_t type_token_id
		i32 1743; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 277; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x0200005f, ; uint32_t type_token_id
		i32 1640; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000060, ; uint32_t type_token_id
		i32 1380; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000061, ; uint32_t type_token_id
		i32 1320; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000062, ; uint32_t type_token_id
		i32 172; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000063, ; uint32_t type_token_id
		i32 733; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000064, ; uint32_t type_token_id
		i32 992; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000065, ; uint32_t type_token_id
		i32 1510; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000066, ; uint32_t type_token_id
		i32 36; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x02000068, ; uint32_t type_token_id
		i32 1457; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 1731; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 1108; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 525; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 1075; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 990; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 840; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 570; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x02000073, ; uint32_t type_token_id
		i32 1293; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x02000074, ; uint32_t type_token_id
		i32 1766; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x02000075, ; uint32_t type_token_id
		i32 355; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x02000078, ; uint32_t type_token_id
		i32 1024; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 395; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 537; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 1029; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 1722; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x02000080, ; uint32_t type_token_id
		i32 676; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x02000083, ; uint32_t type_token_id
		i32 1206; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x02000084, ; uint32_t type_token_id
		i32 759; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x02000087, ; uint32_t type_token_id
		i32 924; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 903; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 117; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x02000090, ; uint32_t type_token_id
		i32 687; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x02000091, ; uint32_t type_token_id
		i32 788; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x02000093, ; uint32_t type_token_id
		i32 981; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x02000095, ; uint32_t type_token_id
		i32 1744; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x02000097, ; uint32_t type_token_id
		i32 789; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x02000099, ; uint32_t type_token_id
		i32 505; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 1730; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x0200009d, ; uint32_t type_token_id
		i32 55; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 1696; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x020000a0, ; uint32_t type_token_id
		i32 594; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x020000a2, ; uint32_t type_token_id
		i32 810; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020000a3, ; uint32_t type_token_id
		i32 1533; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020000a4, ; uint32_t type_token_id
		i32 1247; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020000a5, ; uint32_t type_token_id
		i32 1097; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020000a6, ; uint32_t type_token_id
		i32 626; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020000a8, ; uint32_t type_token_id
		i32 1082; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x020000a9, ; uint32_t type_token_id
		i32 667; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x020000aa, ; uint32_t type_token_id
		i32 1589; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x020000ab, ; uint32_t type_token_id
		i32 855; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x020000ac, ; uint32_t type_token_id
		i32 826; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x020000ad, ; uint32_t type_token_id
		i32 1697; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x020000af, ; uint32_t type_token_id
		i32 736; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x020000b0, ; uint32_t type_token_id
		i32 224; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x020000b1, ; uint32_t type_token_id
		i32 254; uint32_t java_map_index
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 u0x020000b2, ; uint32_t type_token_id
		i32 360; uint32_t java_map_index
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 u0x020000b3, ; uint32_t type_token_id
		i32 883; uint32_t java_map_index
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 u0x020000b6, ; uint32_t type_token_id
		i32 215; uint32_t java_map_index
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 u0x020000ba, ; uint32_t type_token_id
		i32 911; uint32_t java_map_index
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 u0x020000bb, ; uint32_t type_token_id
		i32 4; uint32_t java_map_index
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 u0x020000bc, ; uint32_t type_token_id
		i32 101; uint32_t java_map_index
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 u0x020000bd, ; uint32_t type_token_id
		i32 1724; uint32_t java_map_index
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 u0x020000be, ; uint32_t type_token_id
		i32 491; uint32_t java_map_index
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 1290; uint32_t java_map_index
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 1472; uint32_t java_map_index
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 u0x020000c1, ; uint32_t type_token_id
		i32 357; uint32_t java_map_index
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 694; uint32_t java_map_index
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 u0x020000c3, ; uint32_t type_token_id
		i32 1315; uint32_t java_map_index
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 u0x020000c4, ; uint32_t type_token_id
		i32 1714; uint32_t java_map_index
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 u0x020000c6, ; uint32_t type_token_id
		i32 1218; uint32_t java_map_index
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 u0x020000c8, ; uint32_t type_token_id
		i32 713; uint32_t java_map_index
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 u0x020000c9, ; uint32_t type_token_id
		i32 1193; uint32_t java_map_index
	} ; 92
], align 4

@module24_managed_to_java_duplicates = internal dso_local constant [26 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 1441; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000047, ; uint32_t type_token_id
		i32 1123; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 352; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000058, ; uint32_t type_token_id
		i32 1676; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 1743; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000067, ; uint32_t type_token_id
		i32 36; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000069, ; uint32_t type_token_id
		i32 1457; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000071, ; uint32_t type_token_id
		i32 570; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000072, ; uint32_t type_token_id
		i32 840; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000076, ; uint32_t type_token_id
		i32 355; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000081, ; uint32_t type_token_id
		i32 676; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000085, ; uint32_t type_token_id
		i32 759; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 1722; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000092, ; uint32_t type_token_id
		i32 788; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000094, ; uint32_t type_token_id
		i32 981; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000096, ; uint32_t type_token_id
		i32 1744; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000098, ; uint32_t type_token_id
		i32 789; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 505; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200009c, ; uint32_t type_token_id
		i32 1730; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 55; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x020000a1, ; uint32_t type_token_id
		i32 594; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x020000a7, ; uint32_t type_token_id
		i32 626; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x020000ae, ; uint32_t type_token_id
		i32 1697; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x020000b4, ; uint32_t type_token_id
		i32 883; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x020000c5, ; uint32_t type_token_id
		i32 1714; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x020000c7, ; uint32_t type_token_id
		i32 1218; uint32_t java_map_index
	} ; 25
], align 4

@module25_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 1552; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 1060; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 1367; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 191; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 304; uint32_t java_map_index
	} ; 4
], align 4

@module26_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 1601; uint32_t java_map_index
	} ; 0
], align 4

@module27_managed_to_java = internal dso_local constant [10 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 63; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 1302; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 634; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 1292; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 494; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 888; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 1408; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 1400; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 152; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 682; uint32_t java_map_index
	} ; 9
], align 4

@module27_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 63; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 494; uint32_t java_map_index
	} ; 1
], align 4

@module28_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 663; uint32_t java_map_index
	} ; 0
], align 4

@module28_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 663; uint32_t java_map_index
	} ; 0
], align 4

@module29_managed_to_java = internal dso_local constant [20 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 565; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 709; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 1049; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 1478; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 865; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 1599; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 1098; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 837; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 1018; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 1316; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 1404; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 457; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 519; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 230; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 1070; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 76; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 1251; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 1602; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000021, ; uint32_t type_token_id
		i32 363; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000022, ; uint32_t type_token_id
		i32 1041; uint32_t java_map_index
	} ; 19
], align 4

@module29_managed_to_java_duplicates = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 565; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 1599; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 1018; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 1316; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 1251; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 363; uint32_t java_map_index
	} ; 5
], align 4

@module30_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000027, ; uint32_t type_token_id
		i32 617; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 1665; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 1168; uint32_t java_map_index
	} ; 2
], align 4

@module30_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 1665; uint32_t java_map_index
	} ; 0
], align 4

@module31_managed_to_java = internal dso_local constant [71 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000031, ; uint32_t type_token_id
		i32 1429; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000032, ; uint32_t type_token_id
		i32 92; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000033, ; uint32_t type_token_id
		i32 1769; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000034, ; uint32_t type_token_id
		i32 1641; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000035, ; uint32_t type_token_id
		i32 170; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000036, ; uint32_t type_token_id
		i32 369; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000037, ; uint32_t type_token_id
		i32 872; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000038, ; uint32_t type_token_id
		i32 891; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000039, ; uint32_t type_token_id
		i32 1710; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 1442; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 248; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 528; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 614; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 468; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200003f, ; uint32_t type_token_id
		i32 60; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000041, ; uint32_t type_token_id
		i32 1708; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000043, ; uint32_t type_token_id
		i32 932; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 909; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 417; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000047, ; uint32_t type_token_id
		i32 274; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 1111; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 1059; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 247; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 942; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 683; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 233; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 1407; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 1241; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000052, ; uint32_t type_token_id
		i32 798; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000053, ; uint32_t type_token_id
		i32 294; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x02000054, ; uint32_t type_token_id
		i32 351; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x02000055, ; uint32_t type_token_id
		i32 1100; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x02000056, ; uint32_t type_token_id
		i32 1694; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x02000057, ; uint32_t type_token_id
		i32 1532; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000058, ; uint32_t type_token_id
		i32 62; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000059, ; uint32_t type_token_id
		i32 390; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 544; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 371; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x0200005c, ; uint32_t type_token_id
		i32 824; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 1484; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 648; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x0200005f, ; uint32_t type_token_id
		i32 477; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x02000060, ; uint32_t type_token_id
		i32 991; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x02000061, ; uint32_t type_token_id
		i32 935; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x02000062, ; uint32_t type_token_id
		i32 1341; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x02000064, ; uint32_t type_token_id
		i32 327; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x02000065, ; uint32_t type_token_id
		i32 50; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x02000066, ; uint32_t type_token_id
		i32 1297; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x02000067, ; uint32_t type_token_id
		i32 1169; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x02000069, ; uint32_t type_token_id
		i32 677; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 928; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 388; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 78; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 345; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 1762; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 1300; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x02000071, ; uint32_t type_token_id
		i32 882; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x02000072, ; uint32_t type_token_id
		i32 509; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x02000073, ; uint32_t type_token_id
		i32 1279; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x02000074, ; uint32_t type_token_id
		i32 825; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x02000075, ; uint32_t type_token_id
		i32 493; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x02000076, ; uint32_t type_token_id
		i32 1592; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x02000077, ; uint32_t type_token_id
		i32 275; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x02000079, ; uint32_t type_token_id
		i32 185; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 915; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 225; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 1611; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x02000081, ; uint32_t type_token_id
		i32 983; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x02000082, ; uint32_t type_token_id
		i32 399; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x02000083, ; uint32_t type_token_id
		i32 385; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x02000084, ; uint32_t type_token_id
		i32 1419; uint32_t java_map_index
	} ; 70
], align 4

@module31_managed_to_java_duplicates = internal dso_local constant [13 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000040, ; uint32_t type_token_id
		i32 60; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000042, ; uint32_t type_token_id
		i32 1708; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000044, ; uint32_t type_token_id
		i32 932; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 1111; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 247; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000063, ; uint32_t type_token_id
		i32 1341; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000068, ; uint32_t type_token_id
		i32 1169; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 928; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000078, ; uint32_t type_token_id
		i32 275; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 185; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 915; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 225; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000080, ; uint32_t type_token_id
		i32 1611; uint32_t java_map_index
	} ; 12
], align 4

@module32_managed_to_java = internal dso_local constant [193 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 322; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 668; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 1628; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 340; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200003f, ; uint32_t type_token_id
		i32 420; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000040, ; uint32_t type_token_id
		i32 1003; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000041, ; uint32_t type_token_id
		i32 1712; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000042, ; uint32_t type_token_id
		i32 1450; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000044, ; uint32_t type_token_id
		i32 904; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 603; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000047, ; uint32_t type_token_id
		i32 1234; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 878; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 1088; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 1733; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 24; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 1667; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 1351; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 1026; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000053, ; uint32_t type_token_id
		i32 1754; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000054, ; uint32_t type_token_id
		i32 361; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000055, ; uint32_t type_token_id
		i32 280; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000056, ; uint32_t type_token_id
		i32 1723; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000057, ; uint32_t type_token_id
		i32 1678; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000058, ; uint32_t type_token_id
		i32 1155; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000059, ; uint32_t type_token_id
		i32 402; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 29; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 1230; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x0200005c, ; uint32_t type_token_id
		i32 1645; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 1366; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000060, ; uint32_t type_token_id
		i32 1055; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x02000066, ; uint32_t type_token_id
		i32 382; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x02000068, ; uint32_t type_token_id
		i32 1727; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 995; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 1651; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 957; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 1418; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x02000072, ; uint32_t type_token_id
		i32 1173; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x02000074, ; uint32_t type_token_id
		i32 801; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x02000076, ; uint32_t type_token_id
		i32 1703; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x02000078, ; uint32_t type_token_id
		i32 1691; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 263; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 1689; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 267; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x02000080, ; uint32_t type_token_id
		i32 1283; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x02000082, ; uint32_t type_token_id
		i32 927; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x02000084, ; uint32_t type_token_id
		i32 1704; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x02000086, ; uint32_t type_token_id
		i32 481; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x02000087, ; uint32_t type_token_id
		i32 1144; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x02000088, ; uint32_t type_token_id
		i32 342; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 175; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x0200008c, ; uint32_t type_token_id
		i32 1594; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 712; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 1617; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x02000091, ; uint32_t type_token_id
		i32 635; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x02000093, ; uint32_t type_token_id
		i32 1758; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x02000095, ; uint32_t type_token_id
		i32 1142; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x02000097, ; uint32_t type_token_id
		i32 618; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x02000098, ; uint32_t type_token_id
		i32 284; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 1147; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 1511; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x0200009c, ; uint32_t type_token_id
		i32 886; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x0200009d, ; uint32_t type_token_id
		i32 611; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 295; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020000a1, ; uint32_t type_token_id
		i32 871; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020000a2, ; uint32_t type_token_id
		i32 273; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020000a5, ; uint32_t type_token_id
		i32 14; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020000a6, ; uint32_t type_token_id
		i32 699; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020000a7, ; uint32_t type_token_id
		i32 489; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x020000a8, ; uint32_t type_token_id
		i32 1706; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x020000a9, ; uint32_t type_token_id
		i32 296; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x020000ab, ; uint32_t type_token_id
		i32 1374; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x020000ac, ; uint32_t type_token_id
		i32 323; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x020000ad, ; uint32_t type_token_id
		i32 107; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x020000ae, ; uint32_t type_token_id
		i32 970; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x020000b0, ; uint32_t type_token_id
		i32 293; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x020000b1, ; uint32_t type_token_id
		i32 500; uint32_t java_map_index
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 u0x020000b2, ; uint32_t type_token_id
		i32 1542; uint32_t java_map_index
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 u0x020000b3, ; uint32_t type_token_id
		i32 1564; uint32_t java_map_index
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 u0x020000b4, ; uint32_t type_token_id
		i32 1131; uint32_t java_map_index
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 u0x020000b6, ; uint32_t type_token_id
		i32 630; uint32_t java_map_index
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 u0x020000b7, ; uint32_t type_token_id
		i32 1306; uint32_t java_map_index
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 u0x020000b9, ; uint32_t type_token_id
		i32 42; uint32_t java_map_index
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 u0x020000bb, ; uint32_t type_token_id
		i32 765; uint32_t java_map_index
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 u0x020000bd, ; uint32_t type_token_id
		i32 555; uint32_t java_map_index
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 595; uint32_t java_map_index
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 754; uint32_t java_map_index
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 u0x020000c1, ; uint32_t type_token_id
		i32 1211; uint32_t java_map_index
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 u0x020000c3, ; uint32_t type_token_id
		i32 1522; uint32_t java_map_index
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 u0x020000c5, ; uint32_t type_token_id
		i32 745; uint32_t java_map_index
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 u0x020000c6, ; uint32_t type_token_id
		i32 1014; uint32_t java_map_index
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 u0x020000c7, ; uint32_t type_token_id
		i32 1487; uint32_t java_map_index
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 u0x020000c8, ; uint32_t type_token_id
		i32 270; uint32_t java_map_index
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 u0x020000c9, ; uint32_t type_token_id
		i32 432; uint32_t java_map_index
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 u0x020000ca, ; uint32_t type_token_id
		i32 860; uint32_t java_map_index
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 u0x020000cb, ; uint32_t type_token_id
		i32 1545; uint32_t java_map_index
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 u0x020000cc, ; uint32_t type_token_id
		i32 1298; uint32_t java_map_index
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 u0x020000cd, ; uint32_t type_token_id
		i32 1151; uint32_t java_map_index
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 u0x020000ce, ; uint32_t type_token_id
		i32 1178; uint32_t java_map_index
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 u0x020000cf, ; uint32_t type_token_id
		i32 1294; uint32_t java_map_index
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 u0x020000d0, ; uint32_t type_token_id
		i32 1593; uint32_t java_map_index
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 u0x020000d2, ; uint32_t type_token_id
		i32 188; uint32_t java_map_index
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 u0x020000d3, ; uint32_t type_token_id
		i32 1007; uint32_t java_map_index
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 u0x020000d4, ; uint32_t type_token_id
		i32 1238; uint32_t java_map_index
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 u0x020000d6, ; uint32_t type_token_id
		i32 666; uint32_t java_map_index
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 u0x020000d8, ; uint32_t type_token_id
		i32 1686; uint32_t java_map_index
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 u0x020000d9, ; uint32_t type_token_id
		i32 1600; uint32_t java_map_index
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 u0x020000db, ; uint32_t type_token_id
		i32 730; uint32_t java_map_index
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 u0x020000dd, ; uint32_t type_token_id
		i32 70; uint32_t java_map_index
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 u0x020000df, ; uint32_t type_token_id
		i32 301; uint32_t java_map_index
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 u0x020000e1, ; uint32_t type_token_id
		i32 298; uint32_t java_map_index
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 u0x020000e3, ; uint32_t type_token_id
		i32 1508; uint32_t java_map_index
	}, ; 110
	%struct.TypeMapModuleEntry {
		i32 u0x020000e5, ; uint32_t type_token_id
		i32 366; uint32_t java_map_index
	}, ; 111
	%struct.TypeMapModuleEntry {
		i32 u0x020000e7, ; uint32_t type_token_id
		i32 1426; uint32_t java_map_index
	}, ; 112
	%struct.TypeMapModuleEntry {
		i32 u0x020000e9, ; uint32_t type_token_id
		i32 376; uint32_t java_map_index
	}, ; 113
	%struct.TypeMapModuleEntry {
		i32 u0x020000eb, ; uint32_t type_token_id
		i32 1194; uint32_t java_map_index
	}, ; 114
	%struct.TypeMapModuleEntry {
		i32 u0x020000ed, ; uint32_t type_token_id
		i32 1340; uint32_t java_map_index
	}, ; 115
	%struct.TypeMapModuleEntry {
		i32 u0x020000ef, ; uint32_t type_token_id
		i32 1396; uint32_t java_map_index
	}, ; 116
	%struct.TypeMapModuleEntry {
		i32 u0x020000f1, ; uint32_t type_token_id
		i32 33; uint32_t java_map_index
	}, ; 117
	%struct.TypeMapModuleEntry {
		i32 u0x020000f3, ; uint32_t type_token_id
		i32 658; uint32_t java_map_index
	}, ; 118
	%struct.TypeMapModuleEntry {
		i32 u0x020000f5, ; uint32_t type_token_id
		i32 1512; uint32_t java_map_index
	}, ; 119
	%struct.TypeMapModuleEntry {
		i32 u0x020000f7, ; uint32_t type_token_id
		i32 1571; uint32_t java_map_index
	}, ; 120
	%struct.TypeMapModuleEntry {
		i32 u0x020000f8, ; uint32_t type_token_id
		i32 240; uint32_t java_map_index
	}, ; 121
	%struct.TypeMapModuleEntry {
		i32 u0x020000fa, ; uint32_t type_token_id
		i32 127; uint32_t java_map_index
	}, ; 122
	%struct.TypeMapModuleEntry {
		i32 u0x020000fc, ; uint32_t type_token_id
		i32 1620; uint32_t java_map_index
	}, ; 123
	%struct.TypeMapModuleEntry {
		i32 u0x020000fe, ; uint32_t type_token_id
		i32 926; uint32_t java_map_index
	}, ; 124
	%struct.TypeMapModuleEntry {
		i32 u0x02000100, ; uint32_t type_token_id
		i32 453; uint32_t java_map_index
	}, ; 125
	%struct.TypeMapModuleEntry {
		i32 u0x02000102, ; uint32_t type_token_id
		i32 1660; uint32_t java_map_index
	}, ; 126
	%struct.TypeMapModuleEntry {
		i32 u0x02000104, ; uint32_t type_token_id
		i32 800; uint32_t java_map_index
	}, ; 127
	%struct.TypeMapModuleEntry {
		i32 u0x02000106, ; uint32_t type_token_id
		i32 1486; uint32_t java_map_index
	}, ; 128
	%struct.TypeMapModuleEntry {
		i32 u0x02000108, ; uint32_t type_token_id
		i32 469; uint32_t java_map_index
	}, ; 129
	%struct.TypeMapModuleEntry {
		i32 u0x0200010a, ; uint32_t type_token_id
		i32 16; uint32_t java_map_index
	}, ; 130
	%struct.TypeMapModuleEntry {
		i32 u0x0200010c, ; uint32_t type_token_id
		i32 497; uint32_t java_map_index
	}, ; 131
	%struct.TypeMapModuleEntry {
		i32 u0x0200010e, ; uint32_t type_token_id
		i32 87; uint32_t java_map_index
	}, ; 132
	%struct.TypeMapModuleEntry {
		i32 u0x02000110, ; uint32_t type_token_id
		i32 1381; uint32_t java_map_index
	}, ; 133
	%struct.TypeMapModuleEntry {
		i32 u0x02000112, ; uint32_t type_token_id
		i32 1043; uint32_t java_map_index
	}, ; 134
	%struct.TypeMapModuleEntry {
		i32 u0x02000113, ; uint32_t type_token_id
		i32 44; uint32_t java_map_index
	}, ; 135
	%struct.TypeMapModuleEntry {
		i32 u0x02000114, ; uint32_t type_token_id
		i32 639; uint32_t java_map_index
	}, ; 136
	%struct.TypeMapModuleEntry {
		i32 u0x02000116, ; uint32_t type_token_id
		i32 513; uint32_t java_map_index
	}, ; 137
	%struct.TypeMapModuleEntry {
		i32 u0x02000118, ; uint32_t type_token_id
		i32 1356; uint32_t java_map_index
	}, ; 138
	%struct.TypeMapModuleEntry {
		i32 u0x0200011a, ; uint32_t type_token_id
		i32 1677; uint32_t java_map_index
	}, ; 139
	%struct.TypeMapModuleEntry {
		i32 u0x0200011c, ; uint32_t type_token_id
		i32 312; uint32_t java_map_index
	}, ; 140
	%struct.TypeMapModuleEntry {
		i32 u0x0200011e, ; uint32_t type_token_id
		i32 1514; uint32_t java_map_index
	}, ; 141
	%struct.TypeMapModuleEntry {
		i32 u0x02000120, ; uint32_t type_token_id
		i32 478; uint32_t java_map_index
	}, ; 142
	%struct.TypeMapModuleEntry {
		i32 u0x02000122, ; uint32_t type_token_id
		i32 808; uint32_t java_map_index
	}, ; 143
	%struct.TypeMapModuleEntry {
		i32 u0x02000124, ; uint32_t type_token_id
		i32 1335; uint32_t java_map_index
	}, ; 144
	%struct.TypeMapModuleEntry {
		i32 u0x02000126, ; uint32_t type_token_id
		i32 593; uint32_t java_map_index
	}, ; 145
	%struct.TypeMapModuleEntry {
		i32 u0x02000128, ; uint32_t type_token_id
		i32 1531; uint32_t java_map_index
	}, ; 146
	%struct.TypeMapModuleEntry {
		i32 u0x0200012a, ; uint32_t type_token_id
		i32 1436; uint32_t java_map_index
	}, ; 147
	%struct.TypeMapModuleEntry {
		i32 u0x0200012c, ; uint32_t type_token_id
		i32 997; uint32_t java_map_index
	}, ; 148
	%struct.TypeMapModuleEntry {
		i32 u0x0200012e, ; uint32_t type_token_id
		i32 98; uint32_t java_map_index
	}, ; 149
	%struct.TypeMapModuleEntry {
		i32 u0x0200012f, ; uint32_t type_token_id
		i32 1183; uint32_t java_map_index
	}, ; 150
	%struct.TypeMapModuleEntry {
		i32 u0x02000131, ; uint32_t type_token_id
		i32 1460; uint32_t java_map_index
	}, ; 151
	%struct.TypeMapModuleEntry {
		i32 u0x02000133, ; uint32_t type_token_id
		i32 461; uint32_t java_map_index
	}, ; 152
	%struct.TypeMapModuleEntry {
		i32 u0x02000134, ; uint32_t type_token_id
		i32 781; uint32_t java_map_index
	}, ; 153
	%struct.TypeMapModuleEntry {
		i32 u0x02000135, ; uint32_t type_token_id
		i32 835; uint32_t java_map_index
	}, ; 154
	%struct.TypeMapModuleEntry {
		i32 u0x02000137, ; uint32_t type_token_id
		i32 692; uint32_t java_map_index
	}, ; 155
	%struct.TypeMapModuleEntry {
		i32 u0x02000139, ; uint32_t type_token_id
		i32 1718; uint32_t java_map_index
	}, ; 156
	%struct.TypeMapModuleEntry {
		i32 u0x0200013a, ; uint32_t type_token_id
		i32 1339; uint32_t java_map_index
	}, ; 157
	%struct.TypeMapModuleEntry {
		i32 u0x0200013b, ; uint32_t type_token_id
		i32 1226; uint32_t java_map_index
	}, ; 158
	%struct.TypeMapModuleEntry {
		i32 u0x0200013c, ; uint32_t type_token_id
		i32 486; uint32_t java_map_index
	}, ; 159
	%struct.TypeMapModuleEntry {
		i32 u0x0200013d, ; uint32_t type_token_id
		i32 381; uint32_t java_map_index
	}, ; 160
	%struct.TypeMapModuleEntry {
		i32 u0x0200013e, ; uint32_t type_token_id
		i32 701; uint32_t java_map_index
	}, ; 161
	%struct.TypeMapModuleEntry {
		i32 u0x02000140, ; uint32_t type_token_id
		i32 95; uint32_t java_map_index
	}, ; 162
	%struct.TypeMapModuleEntry {
		i32 u0x02000142, ; uint32_t type_token_id
		i32 1337; uint32_t java_map_index
	}, ; 163
	%struct.TypeMapModuleEntry {
		i32 u0x02000143, ; uint32_t type_token_id
		i32 1554; uint32_t java_map_index
	}, ; 164
	%struct.TypeMapModuleEntry {
		i32 u0x02000146, ; uint32_t type_token_id
		i32 686; uint32_t java_map_index
	}, ; 165
	%struct.TypeMapModuleEntry {
		i32 u0x02000147, ; uint32_t type_token_id
		i32 1519; uint32_t java_map_index
	}, ; 166
	%struct.TypeMapModuleEntry {
		i32 u0x02000148, ; uint32_t type_token_id
		i32 472; uint32_t java_map_index
	}, ; 167
	%struct.TypeMapModuleEntry {
		i32 u0x0200014b, ; uint32_t type_token_id
		i32 389; uint32_t java_map_index
	}, ; 168
	%struct.TypeMapModuleEntry {
		i32 u0x0200014c, ; uint32_t type_token_id
		i32 858; uint32_t java_map_index
	}, ; 169
	%struct.TypeMapModuleEntry {
		i32 u0x0200014d, ; uint32_t type_token_id
		i32 787; uint32_t java_map_index
	}, ; 170
	%struct.TypeMapModuleEntry {
		i32 u0x0200014e, ; uint32_t type_token_id
		i32 644; uint32_t java_map_index
	}, ; 171
	%struct.TypeMapModuleEntry {
		i32 u0x0200014f, ; uint32_t type_token_id
		i32 1048; uint32_t java_map_index
	}, ; 172
	%struct.TypeMapModuleEntry {
		i32 u0x02000150, ; uint32_t type_token_id
		i32 138; uint32_t java_map_index
	}, ; 173
	%struct.TypeMapModuleEntry {
		i32 u0x02000152, ; uint32_t type_token_id
		i32 953; uint32_t java_map_index
	}, ; 174
	%struct.TypeMapModuleEntry {
		i32 u0x02000153, ; uint32_t type_token_id
		i32 1322; uint32_t java_map_index
	}, ; 175
	%struct.TypeMapModuleEntry {
		i32 u0x02000154, ; uint32_t type_token_id
		i32 1091; uint32_t java_map_index
	}, ; 176
	%struct.TypeMapModuleEntry {
		i32 u0x02000155, ; uint32_t type_token_id
		i32 796; uint32_t java_map_index
	}, ; 177
	%struct.TypeMapModuleEntry {
		i32 u0x02000156, ; uint32_t type_token_id
		i32 64; uint32_t java_map_index
	}, ; 178
	%struct.TypeMapModuleEntry {
		i32 u0x02000157, ; uint32_t type_token_id
		i32 1265; uint32_t java_map_index
	}, ; 179
	%struct.TypeMapModuleEntry {
		i32 u0x02000158, ; uint32_t type_token_id
		i32 716; uint32_t java_map_index
	}, ; 180
	%struct.TypeMapModuleEntry {
		i32 u0x0200015a, ; uint32_t type_token_id
		i32 465; uint32_t java_map_index
	}, ; 181
	%struct.TypeMapModuleEntry {
		i32 u0x0200015e, ; uint32_t type_token_id
		i32 1388; uint32_t java_map_index
	}, ; 182
	%struct.TypeMapModuleEntry {
		i32 u0x02000160, ; uint32_t type_token_id
		i32 601; uint32_t java_map_index
	}, ; 183
	%struct.TypeMapModuleEntry {
		i32 u0x02000162, ; uint32_t type_token_id
		i32 1096; uint32_t java_map_index
	}, ; 184
	%struct.TypeMapModuleEntry {
		i32 u0x02000164, ; uint32_t type_token_id
		i32 1603; uint32_t java_map_index
	}, ; 185
	%struct.TypeMapModuleEntry {
		i32 u0x02000165, ; uint32_t type_token_id
		i32 1277; uint32_t java_map_index
	}, ; 186
	%struct.TypeMapModuleEntry {
		i32 u0x02000167, ; uint32_t type_token_id
		i32 1561; uint32_t java_map_index
	}, ; 187
	%struct.TypeMapModuleEntry {
		i32 u0x02000169, ; uint32_t type_token_id
		i32 319; uint32_t java_map_index
	}, ; 188
	%struct.TypeMapModuleEntry {
		i32 u0x0200016a, ; uint32_t type_token_id
		i32 1746; uint32_t java_map_index
	}, ; 189
	%struct.TypeMapModuleEntry {
		i32 u0x0200016c, ; uint32_t type_token_id
		i32 223; uint32_t java_map_index
	}, ; 190
	%struct.TypeMapModuleEntry {
		i32 u0x0200016e, ; uint32_t type_token_id
		i32 205; uint32_t java_map_index
	}, ; 191
	%struct.TypeMapModuleEntry {
		i32 u0x02000170, ; uint32_t type_token_id
		i32 1424; uint32_t java_map_index
	} ; 192
], align 4

@module32_managed_to_java_duplicates = internal dso_local constant [111 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 668; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000043, ; uint32_t type_token_id
		i32 1450; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 904; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 878; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 1088; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 1351; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000052, ; uint32_t type_token_id
		i32 1026; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 1366; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000065, ; uint32_t type_token_id
		i32 1645; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000067, ; uint32_t type_token_id
		i32 382; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000069, ; uint32_t type_token_id
		i32 1727; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 995; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 1651; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 957; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000071, ; uint32_t type_token_id
		i32 1418; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000073, ; uint32_t type_token_id
		i32 1173; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000075, ; uint32_t type_token_id
		i32 801; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000077, ; uint32_t type_token_id
		i32 1703; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000079, ; uint32_t type_token_id
		i32 1691; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 263; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 1689; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 267; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000081, ; uint32_t type_token_id
		i32 1283; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000083, ; uint32_t type_token_id
		i32 927; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000085, ; uint32_t type_token_id
		i32 1704; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000089, ; uint32_t type_token_id
		i32 342; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x0200008b, ; uint32_t type_token_id
		i32 175; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 712; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000090, ; uint32_t type_token_id
		i32 1617; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000092, ; uint32_t type_token_id
		i32 635; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x02000094, ; uint32_t type_token_id
		i32 1758; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x02000096, ; uint32_t type_token_id
		i32 1142; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x02000099, ; uint32_t type_token_id
		i32 284; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 611; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x020000a0, ; uint32_t type_token_id
		i32 295; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x020000a3, ; uint32_t type_token_id
		i32 273; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x020000a4, ; uint32_t type_token_id
		i32 871; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x020000aa, ; uint32_t type_token_id
		i32 296; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x020000af, ; uint32_t type_token_id
		i32 970; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x020000b5, ; uint32_t type_token_id
		i32 1131; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x020000b8, ; uint32_t type_token_id
		i32 1306; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x020000ba, ; uint32_t type_token_id
		i32 42; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x020000bc, ; uint32_t type_token_id
		i32 765; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x020000be, ; uint32_t type_token_id
		i32 555; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 1211; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x020000c4, ; uint32_t type_token_id
		i32 1522; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x020000d1, ; uint32_t type_token_id
		i32 1593; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x020000d5, ; uint32_t type_token_id
		i32 1238; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x020000d7, ; uint32_t type_token_id
		i32 666; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x020000da, ; uint32_t type_token_id
		i32 1600; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x020000dc, ; uint32_t type_token_id
		i32 730; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x020000de, ; uint32_t type_token_id
		i32 70; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x020000e0, ; uint32_t type_token_id
		i32 301; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x020000e2, ; uint32_t type_token_id
		i32 298; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x020000e4, ; uint32_t type_token_id
		i32 1508; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x020000e6, ; uint32_t type_token_id
		i32 366; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x020000e8, ; uint32_t type_token_id
		i32 1426; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x020000ea, ; uint32_t type_token_id
		i32 376; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x020000ec, ; uint32_t type_token_id
		i32 1194; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x020000ee, ; uint32_t type_token_id
		i32 1340; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x020000f0, ; uint32_t type_token_id
		i32 1396; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x020000f2, ; uint32_t type_token_id
		i32 33; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x020000f4, ; uint32_t type_token_id
		i32 658; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020000f6, ; uint32_t type_token_id
		i32 1512; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020000f9, ; uint32_t type_token_id
		i32 240; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020000fb, ; uint32_t type_token_id
		i32 127; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020000fd, ; uint32_t type_token_id
		i32 1620; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020000ff, ; uint32_t type_token_id
		i32 926; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x02000101, ; uint32_t type_token_id
		i32 453; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x02000103, ; uint32_t type_token_id
		i32 1660; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x02000105, ; uint32_t type_token_id
		i32 800; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x02000107, ; uint32_t type_token_id
		i32 1486; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x02000109, ; uint32_t type_token_id
		i32 469; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x0200010b, ; uint32_t type_token_id
		i32 16; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x0200010d, ; uint32_t type_token_id
		i32 497; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x0200010f, ; uint32_t type_token_id
		i32 87; uint32_t java_map_index
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 u0x02000111, ; uint32_t type_token_id
		i32 1381; uint32_t java_map_index
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 u0x02000115, ; uint32_t type_token_id
		i32 639; uint32_t java_map_index
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 u0x02000117, ; uint32_t type_token_id
		i32 513; uint32_t java_map_index
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 u0x02000119, ; uint32_t type_token_id
		i32 1356; uint32_t java_map_index
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 u0x0200011b, ; uint32_t type_token_id
		i32 1677; uint32_t java_map_index
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 u0x0200011d, ; uint32_t type_token_id
		i32 312; uint32_t java_map_index
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 u0x0200011f, ; uint32_t type_token_id
		i32 1514; uint32_t java_map_index
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 u0x02000121, ; uint32_t type_token_id
		i32 478; uint32_t java_map_index
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 u0x02000123, ; uint32_t type_token_id
		i32 808; uint32_t java_map_index
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 u0x02000125, ; uint32_t type_token_id
		i32 1335; uint32_t java_map_index
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 u0x02000127, ; uint32_t type_token_id
		i32 593; uint32_t java_map_index
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 u0x02000129, ; uint32_t type_token_id
		i32 1531; uint32_t java_map_index
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 u0x0200012b, ; uint32_t type_token_id
		i32 1436; uint32_t java_map_index
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 u0x0200012d, ; uint32_t type_token_id
		i32 997; uint32_t java_map_index
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 u0x02000130, ; uint32_t type_token_id
		i32 1183; uint32_t java_map_index
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 u0x02000132, ; uint32_t type_token_id
		i32 1460; uint32_t java_map_index
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 u0x02000136, ; uint32_t type_token_id
		i32 835; uint32_t java_map_index
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 u0x02000138, ; uint32_t type_token_id
		i32 692; uint32_t java_map_index
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 u0x0200013f, ; uint32_t type_token_id
		i32 701; uint32_t java_map_index
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 u0x02000141, ; uint32_t type_token_id
		i32 95; uint32_t java_map_index
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 u0x02000144, ; uint32_t type_token_id
		i32 1554; uint32_t java_map_index
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 u0x02000145, ; uint32_t type_token_id
		i32 1337; uint32_t java_map_index
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 u0x02000149, ; uint32_t type_token_id
		i32 472; uint32_t java_map_index
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 u0x0200014a, ; uint32_t type_token_id
		i32 1519; uint32_t java_map_index
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 u0x02000151, ; uint32_t type_token_id
		i32 138; uint32_t java_map_index
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 u0x02000159, ; uint32_t type_token_id
		i32 716; uint32_t java_map_index
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 u0x0200015f, ; uint32_t type_token_id
		i32 1388; uint32_t java_map_index
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 u0x02000161, ; uint32_t type_token_id
		i32 601; uint32_t java_map_index
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 u0x02000163, ; uint32_t type_token_id
		i32 1096; uint32_t java_map_index
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 u0x02000166, ; uint32_t type_token_id
		i32 1277; uint32_t java_map_index
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 u0x02000168, ; uint32_t type_token_id
		i32 1561; uint32_t java_map_index
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 u0x0200016b, ; uint32_t type_token_id
		i32 1746; uint32_t java_map_index
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 u0x0200016d, ; uint32_t type_token_id
		i32 223; uint32_t java_map_index
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 u0x0200016f, ; uint32_t type_token_id
		i32 205; uint32_t java_map_index
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 u0x02000171, ; uint32_t type_token_id
		i32 1424; uint32_t java_map_index
	} ; 110
], align 4

@module33_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 615; uint32_t java_map_index
	} ; 0
], align 4

@module33_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 615; uint32_t java_map_index
	} ; 0
], align 4

@module34_managed_to_java = internal dso_local constant [17 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 763; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 1605; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 1319; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 413; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 1189; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 283; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 1052; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 579; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 1275; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 748; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 1153; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 1102; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 1062; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 1461; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 1216; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000022, ; uint32_t type_token_id
		i32 1453; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 311; uint32_t java_map_index
	} ; 16
], align 4

@module34_managed_to_java_duplicates = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 763; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 1605; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 1062; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 1102; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000021, ; uint32_t type_token_id
		i32 1216; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 311; uint32_t java_map_index
	} ; 5
], align 4

@module35_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000077, ; uint32_t type_token_id
		i32 1657; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000078, ; uint32_t type_token_id
		i32 1299; uint32_t java_map_index
	} ; 1
], align 4

@module36_managed_to_java = internal dso_local constant [10 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200002f, ; uint32_t type_token_id
		i32 1525; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000031, ; uint32_t type_token_id
		i32 179; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000033, ; uint32_t type_token_id
		i32 742; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000035, ; uint32_t type_token_id
		i32 975; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000036, ; uint32_t type_token_id
		i32 335; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000038, ; uint32_t type_token_id
		i32 1468; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 1619; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 316; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 941; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000040, ; uint32_t type_token_id
		i32 884; uint32_t java_map_index
	} ; 9
], align 4

@module36_managed_to_java_duplicates = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000030, ; uint32_t type_token_id
		i32 1525; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000032, ; uint32_t type_token_id
		i32 179; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000034, ; uint32_t type_token_id
		i32 742; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000037, ; uint32_t type_token_id
		i32 335; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000039, ; uint32_t type_token_id
		i32 1468; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 1619; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 316; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200003f, ; uint32_t type_token_id
		i32 941; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000041, ; uint32_t type_token_id
		i32 884; uint32_t java_map_index
	} ; 8
], align 4

@module37_managed_to_java = internal dso_local constant [55 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000036, ; uint32_t type_token_id
		i32 1505; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000037, ; uint32_t type_token_id
		i32 1192; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000038, ; uint32_t type_token_id
		i32 1698; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 1653; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 350; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 1475; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000042, ; uint32_t type_token_id
		i32 1127; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000043, ; uint32_t type_token_id
		i32 1517; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000044, ; uint32_t type_token_id
		i32 1353; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 1682; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 1383; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000047, ; uint32_t type_token_id
		i32 47; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 602; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 331; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 1756; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 1112; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 1575; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 598; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 829; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 1105; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 867; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000054, ; uint32_t type_token_id
		i32 37; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000055, ; uint32_t type_token_id
		i32 681; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000059, ; uint32_t type_token_id
		i32 1423; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 144; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 900; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 1377; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 740; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 641; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 1132; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 794; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 584; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 1616; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x02000071, ; uint32_t type_token_id
		i32 1181; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000072, ; uint32_t type_token_id
		i32 739; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000073, ; uint32_t type_token_id
		i32 851; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x02000076, ; uint32_t type_token_id
		i32 1713; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x02000077, ; uint32_t type_token_id
		i32 134; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x02000079, ; uint32_t type_token_id
		i32 592; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 1139; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x02000081, ; uint32_t type_token_id
		i32 949; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x02000082, ; uint32_t type_token_id
		i32 251; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x02000084, ; uint32_t type_token_id
		i32 1217; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x02000085, ; uint32_t type_token_id
		i32 863; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x02000087, ; uint32_t type_token_id
		i32 1200; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x02000088, ; uint32_t type_token_id
		i32 1536; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 1576; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x0200008b, ; uint32_t type_token_id
		i32 458; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 1448; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 964; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x02000091, ; uint32_t type_token_id
		i32 503; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x02000093, ; uint32_t type_token_id
		i32 187; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x02000095, ; uint32_t type_token_id
		i32 1114; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x02000097, ; uint32_t type_token_id
		i32 475; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x02000098, ; uint32_t type_token_id
		i32 49; uint32_t java_map_index
	} ; 54
], align 4

@module37_managed_to_java_duplicates = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 350; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 1756; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000052, ; uint32_t type_token_id
		i32 867; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000056, ; uint32_t type_token_id
		i32 681; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 144; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000074, ; uint32_t type_token_id
		i32 851; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000078, ; uint32_t type_token_id
		i32 134; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 592; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 1139; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000080, ; uint32_t type_token_id
		i32 1181; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000083, ; uint32_t type_token_id
		i32 251; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000086, ; uint32_t type_token_id
		i32 863; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000089, ; uint32_t type_token_id
		i32 1536; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200008c, ; uint32_t type_token_id
		i32 458; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 1576; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000090, ; uint32_t type_token_id
		i32 964; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000092, ; uint32_t type_token_id
		i32 503; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000094, ; uint32_t type_token_id
		i32 187; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000096, ; uint32_t type_token_id
		i32 1114; uint32_t java_map_index
	} ; 18
], align 4

@module38_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 1580; uint32_t java_map_index
	} ; 0
], align 4

@module38_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 1580; uint32_t java_map_index
	} ; 0
], align 4

@module39_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 320; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 1444; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 1449; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 1109; uint32_t java_map_index
	} ; 3
], align 4

@module39_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 320; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 1444; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 1109; uint32_t java_map_index
	} ; 2
], align 4

@module40_managed_to_java = internal dso_local constant [638 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x020000c5, ; uint32_t type_token_id
		i32 1231; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x020000c7, ; uint32_t type_token_id
		i32 691; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x020000c9, ; uint32_t type_token_id
		i32 1745; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x020000cb, ; uint32_t type_token_id
		i32 302; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x020000cd, ; uint32_t type_token_id
		i32 861; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x020000ce, ; uint32_t type_token_id
		i32 236; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x020000d0, ; uint32_t type_token_id
		i32 550; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x020000d2, ; uint32_t type_token_id
		i32 1630; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x020000d4, ; uint32_t type_token_id
		i32 947; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x020000d6, ; uint32_t type_token_id
		i32 1130; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x020000d8, ; uint32_t type_token_id
		i32 1504; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x020000da, ; uint32_t type_token_id
		i32 1273; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x020000dc, ; uint32_t type_token_id
		i32 7; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x020000dd, ; uint32_t type_token_id
		i32 27; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x020000de, ; uint32_t type_token_id
		i32 1165; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x020000e0, ; uint32_t type_token_id
		i32 154; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x020000e1, ; uint32_t type_token_id
		i32 1463; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x020000e3, ; uint32_t type_token_id
		i32 1137; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x020000e5, ; uint32_t type_token_id
		i32 1637; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x020000e6, ; uint32_t type_token_id
		i32 129; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x020000e9, ; uint32_t type_token_id
		i32 1780; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x020000eb, ; uint32_t type_token_id
		i32 573; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x020000ed, ; uint32_t type_token_id
		i32 561; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x020000ef, ; uint32_t type_token_id
		i32 377; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x020000f0, ; uint32_t type_token_id
		i32 346; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x020000f2, ; uint32_t type_token_id
		i32 1428; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x020000f3, ; uint32_t type_token_id
		i32 253; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x020000f4, ; uint32_t type_token_id
		i32 1243; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x020000f6, ; uint32_t type_token_id
		i32 1541; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x020000f8, ; uint32_t type_token_id
		i32 766; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x020000fa, ; uint32_t type_token_id
		i32 276; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x020000fc, ; uint32_t type_token_id
		i32 832; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x020000fe, ; uint32_t type_token_id
		i32 574; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x02000101, ; uint32_t type_token_id
		i32 195; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000103, ; uint32_t type_token_id
		i32 1524; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000105, ; uint32_t type_token_id
		i32 257; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x02000106, ; uint32_t type_token_id
		i32 538; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x02000108, ; uint32_t type_token_id
		i32 271; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x02000109, ; uint32_t type_token_id
		i32 1286; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x0200010b, ; uint32_t type_token_id
		i32 428; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x0200010c, ; uint32_t type_token_id
		i32 1437; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x0200010e, ; uint32_t type_token_id
		i32 846; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x0200010f, ; uint32_t type_token_id
		i32 1219; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x02000110, ; uint32_t type_token_id
		i32 515; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x02000112, ; uint32_t type_token_id
		i32 1084; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x02000117, ; uint32_t type_token_id
		i32 1443; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x02000118, ; uint32_t type_token_id
		i32 749; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x0200011a, ; uint32_t type_token_id
		i32 1609; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x0200011c, ; uint32_t type_token_id
		i32 757; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x0200011e, ; uint32_t type_token_id
		i32 292; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x0200011f, ; uint32_t type_token_id
		i32 1674; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x02000120, ; uint32_t type_token_id
		i32 1276; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x02000121, ; uint32_t type_token_id
		i32 974; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x02000122, ; uint32_t type_token_id
		i32 769; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x02000123, ; uint32_t type_token_id
		i32 17; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x02000124, ; uint32_t type_token_id
		i32 1565; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x02000125, ; uint32_t type_token_id
		i32 1310; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x02000126, ; uint32_t type_token_id
		i32 1166; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x02000127, ; uint32_t type_token_id
		i32 1134; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x02000128, ; uint32_t type_token_id
		i32 1661; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x02000129, ; uint32_t type_token_id
		i32 1569; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x0200012a, ; uint32_t type_token_id
		i32 325; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x0200012c, ; uint32_t type_token_id
		i32 455; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x0200012f, ; uint32_t type_token_id
		i32 1352; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x02000131, ; uint32_t type_token_id
		i32 1246; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x02000132, ; uint32_t type_token_id
		i32 0; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x02000136, ; uint32_t type_token_id
		i32 308; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x02000137, ; uint32_t type_token_id
		i32 1767; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x0200013a, ; uint32_t type_token_id
		i32 1371; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x0200013b, ; uint32_t type_token_id
		i32 1570; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x0200013d, ; uint32_t type_token_id
		i32 820; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x02000140, ; uint32_t type_token_id
		i32 8; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x02000144, ; uint32_t type_token_id
		i32 688; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x02000145, ; uint32_t type_token_id
		i32 1364; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x02000146, ; uint32_t type_token_id
		i32 621; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x02000147, ; uint32_t type_token_id
		i32 1148; uint32_t java_map_index
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 u0x02000148, ; uint32_t type_token_id
		i32 1778; uint32_t java_map_index
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 u0x0200014b, ; uint32_t type_token_id
		i32 1301; uint32_t java_map_index
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 u0x0200014f, ; uint32_t type_token_id
		i32 823; uint32_t java_map_index
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 u0x02000150, ; uint32_t type_token_id
		i32 317; uint32_t java_map_index
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 u0x02000155, ; uint32_t type_token_id
		i32 1280; uint32_t java_map_index
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 u0x02000156, ; uint32_t type_token_id
		i32 560; uint32_t java_map_index
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 u0x02000158, ; uint32_t type_token_id
		i32 1362; uint32_t java_map_index
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 u0x02000159, ; uint32_t type_token_id
		i32 1782; uint32_t java_map_index
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 u0x0200015c, ; uint32_t type_token_id
		i32 841; uint32_t java_map_index
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 u0x02000161, ; uint32_t type_token_id
		i32 1595; uint32_t java_map_index
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 u0x02000162, ; uint32_t type_token_id
		i32 291; uint32_t java_map_index
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 u0x02000163, ; uint32_t type_token_id
		i32 1000; uint32_t java_map_index
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 u0x02000164, ; uint32_t type_token_id
		i32 1455; uint32_t java_map_index
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 u0x02000166, ; uint32_t type_token_id
		i32 85; uint32_t java_map_index
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 u0x02000167, ; uint32_t type_token_id
		i32 671; uint32_t java_map_index
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 u0x02000168, ; uint32_t type_token_id
		i32 1618; uint32_t java_map_index
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 u0x02000169, ; uint32_t type_token_id
		i32 77; uint32_t java_map_index
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 u0x0200016b, ; uint32_t type_token_id
		i32 1537; uint32_t java_map_index
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 u0x0200016d, ; uint32_t type_token_id
		i32 1022; uint32_t java_map_index
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 u0x0200016f, ; uint32_t type_token_id
		i32 110; uint32_t java_map_index
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 u0x02000171, ; uint32_t type_token_id
		i32 955; uint32_t java_map_index
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 u0x02000172, ; uint32_t type_token_id
		i32 1562; uint32_t java_map_index
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 u0x02000173, ; uint32_t type_token_id
		i32 547; uint32_t java_map_index
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 u0x02000175, ; uint32_t type_token_id
		i32 1073; uint32_t java_map_index
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 u0x02000177, ; uint32_t type_token_id
		i32 1307; uint32_t java_map_index
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 u0x0200017a, ; uint32_t type_token_id
		i32 1647; uint32_t java_map_index
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 u0x0200017b, ; uint32_t type_token_id
		i32 1772; uint32_t java_map_index
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 u0x0200017c, ; uint32_t type_token_id
		i32 279; uint32_t java_map_index
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 u0x0200017e, ; uint32_t type_token_id
		i32 1435; uint32_t java_map_index
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 u0x0200017f, ; uint32_t type_token_id
		i32 435; uint32_t java_map_index
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 u0x02000180, ; uint32_t type_token_id
		i32 895; uint32_t java_map_index
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 u0x02000182, ; uint32_t type_token_id
		i32 423; uint32_t java_map_index
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 u0x02000188, ; uint32_t type_token_id
		i32 1103; uint32_t java_map_index
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 u0x02000189, ; uint32_t type_token_id
		i32 1116; uint32_t java_map_index
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 u0x0200018a, ; uint32_t type_token_id
		i32 261; uint32_t java_map_index
	}, ; 110
	%struct.TypeMapModuleEntry {
		i32 u0x0200018b, ; uint32_t type_token_id
		i32 217; uint32_t java_map_index
	}, ; 111
	%struct.TypeMapModuleEntry {
		i32 u0x0200018c, ; uint32_t type_token_id
		i32 161; uint32_t java_map_index
	}, ; 112
	%struct.TypeMapModuleEntry {
		i32 u0x0200018e, ; uint32_t type_token_id
		i32 527; uint32_t java_map_index
	}, ; 113
	%struct.TypeMapModuleEntry {
		i32 u0x0200018f, ; uint32_t type_token_id
		i32 290; uint32_t java_map_index
	}, ; 114
	%struct.TypeMapModuleEntry {
		i32 u0x02000190, ; uint32_t type_token_id
		i32 1328; uint32_t java_map_index
	}, ; 115
	%struct.TypeMapModuleEntry {
		i32 u0x02000191, ; uint32_t type_token_id
		i32 830; uint32_t java_map_index
	}, ; 116
	%struct.TypeMapModuleEntry {
		i32 u0x02000193, ; uint32_t type_token_id
		i32 1734; uint32_t java_map_index
	}, ; 117
	%struct.TypeMapModuleEntry {
		i32 u0x02000194, ; uint32_t type_token_id
		i32 1285; uint32_t java_map_index
	}, ; 118
	%struct.TypeMapModuleEntry {
		i32 u0x02000195, ; uint32_t type_token_id
		i32 1386; uint32_t java_map_index
	}, ; 119
	%struct.TypeMapModuleEntry {
		i32 u0x02000198, ; uint32_t type_token_id
		i32 1465; uint32_t java_map_index
	}, ; 120
	%struct.TypeMapModuleEntry {
		i32 u0x02000199, ; uint32_t type_token_id
		i32 210; uint32_t java_map_index
	}, ; 121
	%struct.TypeMapModuleEntry {
		i32 u0x0200019b, ; uint32_t type_token_id
		i32 372; uint32_t java_map_index
	}, ; 122
	%struct.TypeMapModuleEntry {
		i32 u0x0200019c, ; uint32_t type_token_id
		i32 452; uint32_t java_map_index
	}, ; 123
	%struct.TypeMapModuleEntry {
		i32 u0x0200019d, ; uint32_t type_token_id
		i32 1544; uint32_t java_map_index
	}, ; 124
	%struct.TypeMapModuleEntry {
		i32 u0x0200019e, ; uint32_t type_token_id
		i32 1118; uint32_t java_map_index
	}, ; 125
	%struct.TypeMapModuleEntry {
		i32 u0x0200019f, ; uint32_t type_token_id
		i32 1223; uint32_t java_map_index
	}, ; 126
	%struct.TypeMapModuleEntry {
		i32 u0x020001a0, ; uint32_t type_token_id
		i32 1549; uint32_t java_map_index
	}, ; 127
	%struct.TypeMapModuleEntry {
		i32 u0x020001a1, ; uint32_t type_token_id
		i32 868; uint32_t java_map_index
	}, ; 128
	%struct.TypeMapModuleEntry {
		i32 u0x020001a2, ; uint32_t type_token_id
		i32 914; uint32_t java_map_index
	}, ; 129
	%struct.TypeMapModuleEntry {
		i32 u0x020001a3, ; uint32_t type_token_id
		i32 54; uint32_t java_map_index
	}, ; 130
	%struct.TypeMapModuleEntry {
		i32 u0x020001a6, ; uint32_t type_token_id
		i32 1681; uint32_t java_map_index
	}, ; 131
	%struct.TypeMapModuleEntry {
		i32 u0x020001a9, ; uint32_t type_token_id
		i32 1692; uint32_t java_map_index
	}, ; 132
	%struct.TypeMapModuleEntry {
		i32 u0x020001aa, ; uint32_t type_token_id
		i32 1668; uint32_t java_map_index
	}, ; 133
	%struct.TypeMapModuleEntry {
		i32 u0x020001ad, ; uint32_t type_token_id
		i32 1071; uint32_t java_map_index
	}, ; 134
	%struct.TypeMapModuleEntry {
		i32 u0x020001b0, ; uint32_t type_token_id
		i32 362; uint32_t java_map_index
	}, ; 135
	%struct.TypeMapModuleEntry {
		i32 u0x020001b1, ; uint32_t type_token_id
		i32 89; uint32_t java_map_index
	}, ; 136
	%struct.TypeMapModuleEntry {
		i32 u0x020001b3, ; uint32_t type_token_id
		i32 1563; uint32_t java_map_index
	}, ; 137
	%struct.TypeMapModuleEntry {
		i32 u0x020001b6, ; uint32_t type_token_id
		i32 1064; uint32_t java_map_index
	}, ; 138
	%struct.TypeMapModuleEntry {
		i32 u0x020001b9, ; uint32_t type_token_id
		i32 977; uint32_t java_map_index
	}, ; 139
	%struct.TypeMapModuleEntry {
		i32 u0x020001bc, ; uint32_t type_token_id
		i32 542; uint32_t java_map_index
	}, ; 140
	%struct.TypeMapModuleEntry {
		i32 u0x020001be, ; uint32_t type_token_id
		i32 1159; uint32_t java_map_index
	}, ; 141
	%struct.TypeMapModuleEntry {
		i32 u0x020001c1, ; uint32_t type_token_id
		i32 862; uint32_t java_map_index
	}, ; 142
	%struct.TypeMapModuleEntry {
		i32 u0x020001c2, ; uint32_t type_token_id
		i32 700; uint32_t java_map_index
	}, ; 143
	%struct.TypeMapModuleEntry {
		i32 u0x020001c4, ; uint32_t type_token_id
		i32 1282; uint32_t java_map_index
	}, ; 144
	%struct.TypeMapModuleEntry {
		i32 u0x020001c6, ; uint32_t type_token_id
		i32 504; uint32_t java_map_index
	}, ; 145
	%struct.TypeMapModuleEntry {
		i32 u0x020001c8, ; uint32_t type_token_id
		i32 106; uint32_t java_map_index
	}, ; 146
	%struct.TypeMapModuleEntry {
		i32 u0x020001cb, ; uint32_t type_token_id
		i32 451; uint32_t java_map_index
	}, ; 147
	%struct.TypeMapModuleEntry {
		i32 u0x020001cc, ; uint32_t type_token_id
		i32 410; uint32_t java_map_index
	}, ; 148
	%struct.TypeMapModuleEntry {
		i32 u0x020001cd, ; uint32_t type_token_id
		i32 314; uint32_t java_map_index
	}, ; 149
	%struct.TypeMapModuleEntry {
		i32 u0x020001ce, ; uint32_t type_token_id
		i32 734; uint32_t java_map_index
	}, ; 150
	%struct.TypeMapModuleEntry {
		i32 u0x020001cf, ; uint32_t type_token_id
		i32 1250; uint32_t java_map_index
	}, ; 151
	%struct.TypeMapModuleEntry {
		i32 u0x020001d0, ; uint32_t type_token_id
		i32 321; uint32_t java_map_index
	}, ; 152
	%struct.TypeMapModuleEntry {
		i32 u0x020001d1, ; uint32_t type_token_id
		i32 988; uint32_t java_map_index
	}, ; 153
	%struct.TypeMapModuleEntry {
		i32 u0x020001d2, ; uint32_t type_token_id
		i32 31; uint32_t java_map_index
	}, ; 154
	%struct.TypeMapModuleEntry {
		i32 u0x020001d4, ; uint32_t type_token_id
		i32 906; uint32_t java_map_index
	}, ; 155
	%struct.TypeMapModuleEntry {
		i32 u0x020001d6, ; uint32_t type_token_id
		i32 1774; uint32_t java_map_index
	}, ; 156
	%struct.TypeMapModuleEntry {
		i32 u0x020001d7, ; uint32_t type_token_id
		i32 922; uint32_t java_map_index
	}, ; 157
	%struct.TypeMapModuleEntry {
		i32 u0x020001d9, ; uint32_t type_token_id
		i32 1035; uint32_t java_map_index
	}, ; 158
	%struct.TypeMapModuleEntry {
		i32 u0x020001db, ; uint32_t type_token_id
		i32 324; uint32_t java_map_index
	}, ; 159
	%struct.TypeMapModuleEntry {
		i32 u0x020001dd, ; uint32_t type_token_id
		i32 139; uint32_t java_map_index
	}, ; 160
	%struct.TypeMapModuleEntry {
		i32 u0x020001df, ; uint32_t type_token_id
		i32 1008; uint32_t java_map_index
	}, ; 161
	%struct.TypeMapModuleEntry {
		i32 u0x020001e0, ; uint32_t type_token_id
		i32 834; uint32_t java_map_index
	}, ; 162
	%struct.TypeMapModuleEntry {
		i32 u0x020001e1, ; uint32_t type_token_id
		i32 764; uint32_t java_map_index
	}, ; 163
	%struct.TypeMapModuleEntry {
		i32 u0x020001e2, ; uint32_t type_token_id
		i32 1717; uint32_t java_map_index
	}, ; 164
	%struct.TypeMapModuleEntry {
		i32 u0x020001e3, ; uint32_t type_token_id
		i32 520; uint32_t java_map_index
	}, ; 165
	%struct.TypeMapModuleEntry {
		i32 u0x020001e4, ; uint32_t type_token_id
		i32 566; uint32_t java_map_index
	}, ; 166
	%struct.TypeMapModuleEntry {
		i32 u0x020001e5, ; uint32_t type_token_id
		i32 1555; uint32_t java_map_index
	}, ; 167
	%struct.TypeMapModuleEntry {
		i32 u0x020001e7, ; uint32_t type_token_id
		i32 405; uint32_t java_map_index
	}, ; 168
	%struct.TypeMapModuleEntry {
		i32 u0x020001e8, ; uint32_t type_token_id
		i32 384; uint32_t java_map_index
	}, ; 169
	%struct.TypeMapModuleEntry {
		i32 u0x020001ea, ; uint32_t type_token_id
		i32 349; uint32_t java_map_index
	}, ; 170
	%struct.TypeMapModuleEntry {
		i32 u0x020001ec, ; uint32_t type_token_id
		i32 200; uint32_t java_map_index
	}, ; 171
	%struct.TypeMapModuleEntry {
		i32 u0x020001ee, ; uint32_t type_token_id
		i32 431; uint32_t java_map_index
	}, ; 172
	%struct.TypeMapModuleEntry {
		i32 u0x020001f0, ; uint32_t type_token_id
		i32 845; uint32_t java_map_index
	}, ; 173
	%struct.TypeMapModuleEntry {
		i32 u0x020001f1, ; uint32_t type_token_id
		i32 1438; uint32_t java_map_index
	}, ; 174
	%struct.TypeMapModuleEntry {
		i32 u0x020001f2, ; uint32_t type_token_id
		i32 158; uint32_t java_map_index
	}, ; 175
	%struct.TypeMapModuleEntry {
		i32 u0x020001f3, ; uint32_t type_token_id
		i32 227; uint32_t java_map_index
	}, ; 176
	%struct.TypeMapModuleEntry {
		i32 u0x020001f6, ; uint32_t type_token_id
		i32 1759; uint32_t java_map_index
	}, ; 177
	%struct.TypeMapModuleEntry {
		i32 u0x020001f7, ; uint32_t type_token_id
		i32 1036; uint32_t java_map_index
	}, ; 178
	%struct.TypeMapModuleEntry {
		i32 u0x020001f8, ; uint32_t type_token_id
		i32 5; uint32_t java_map_index
	}, ; 179
	%struct.TypeMapModuleEntry {
		i32 u0x020001f9, ; uint32_t type_token_id
		i32 1125; uint32_t java_map_index
	}, ; 180
	%struct.TypeMapModuleEntry {
		i32 u0x020001fb, ; uint32_t type_token_id
		i32 214; uint32_t java_map_index
	}, ; 181
	%struct.TypeMapModuleEntry {
		i32 u0x020001fc, ; uint32_t type_token_id
		i32 164; uint32_t java_map_index
	}, ; 182
	%struct.TypeMapModuleEntry {
		i32 u0x020001fe, ; uint32_t type_token_id
		i32 802; uint32_t java_map_index
	}, ; 183
	%struct.TypeMapModuleEntry {
		i32 u0x020001ff, ; uint32_t type_token_id
		i32 167; uint32_t java_map_index
	}, ; 184
	%struct.TypeMapModuleEntry {
		i32 u0x02000200, ; uint32_t type_token_id
		i32 82; uint32_t java_map_index
	}, ; 185
	%struct.TypeMapModuleEntry {
		i32 u0x02000201, ; uint32_t type_token_id
		i32 1385; uint32_t java_map_index
	}, ; 186
	%struct.TypeMapModuleEntry {
		i32 u0x02000202, ; uint32_t type_token_id
		i32 1454; uint32_t java_map_index
	}, ; 187
	%struct.TypeMapModuleEntry {
		i32 u0x02000203, ; uint32_t type_token_id
		i32 590; uint32_t java_map_index
	}, ; 188
	%struct.TypeMapModuleEntry {
		i32 u0x02000205, ; uint32_t type_token_id
		i32 608; uint32_t java_map_index
	}, ; 189
	%struct.TypeMapModuleEntry {
		i32 u0x02000206, ; uint32_t type_token_id
		i32 72; uint32_t java_map_index
	}, ; 190
	%struct.TypeMapModuleEntry {
		i32 u0x02000207, ; uint32_t type_token_id
		i32 620; uint32_t java_map_index
	}, ; 191
	%struct.TypeMapModuleEntry {
		i32 u0x02000208, ; uint32_t type_token_id
		i32 1763; uint32_t java_map_index
	}, ; 192
	%struct.TypeMapModuleEntry {
		i32 u0x0200020a, ; uint32_t type_token_id
		i32 526; uint32_t java_map_index
	}, ; 193
	%struct.TypeMapModuleEntry {
		i32 u0x0200020c, ; uint32_t type_token_id
		i32 221; uint32_t java_map_index
	}, ; 194
	%struct.TypeMapModuleEntry {
		i32 u0x0200020e, ; uint32_t type_token_id
		i32 1046; uint32_t java_map_index
	}, ; 195
	%struct.TypeMapModuleEntry {
		i32 u0x02000210, ; uint32_t type_token_id
		i32 1527; uint32_t java_map_index
	}, ; 196
	%struct.TypeMapModuleEntry {
		i32 u0x02000212, ; uint32_t type_token_id
		i32 209; uint32_t java_map_index
	}, ; 197
	%struct.TypeMapModuleEntry {
		i32 u0x02000213, ; uint32_t type_token_id
		i32 1281; uint32_t java_map_index
	}, ; 198
	%struct.TypeMapModuleEntry {
		i32 u0x02000214, ; uint32_t type_token_id
		i32 869; uint32_t java_map_index
	}, ; 199
	%struct.TypeMapModuleEntry {
		i32 u0x02000216, ; uint32_t type_token_id
		i32 150; uint32_t java_map_index
	}, ; 200
	%struct.TypeMapModuleEntry {
		i32 u0x02000217, ; uint32_t type_token_id
		i32 120; uint32_t java_map_index
	}, ; 201
	%struct.TypeMapModuleEntry {
		i32 u0x02000218, ; uint32_t type_token_id
		i32 905; uint32_t java_map_index
	}, ; 202
	%struct.TypeMapModuleEntry {
		i32 u0x0200021a, ; uint32_t type_token_id
		i32 737; uint32_t java_map_index
	}, ; 203
	%struct.TypeMapModuleEntry {
		i32 u0x0200021b, ; uint32_t type_token_id
		i32 956; uint32_t java_map_index
	}, ; 204
	%struct.TypeMapModuleEntry {
		i32 u0x0200021c, ; uint32_t type_token_id
		i32 899; uint32_t java_map_index
	}, ; 205
	%struct.TypeMapModuleEntry {
		i32 u0x0200021d, ; uint32_t type_token_id
		i32 192; uint32_t java_map_index
	}, ; 206
	%struct.TypeMapModuleEntry {
		i32 u0x0200021e, ; uint32_t type_token_id
		i32 1128; uint32_t java_map_index
	}, ; 207
	%struct.TypeMapModuleEntry {
		i32 u0x0200021f, ; uint32_t type_token_id
		i32 1203; uint32_t java_map_index
	}, ; 208
	%struct.TypeMapModuleEntry {
		i32 u0x02000222, ; uint32_t type_token_id
		i32 508; uint32_t java_map_index
	}, ; 209
	%struct.TypeMapModuleEntry {
		i32 u0x02000223, ; uint32_t type_token_id
		i32 59; uint32_t java_map_index
	}, ; 210
	%struct.TypeMapModuleEntry {
		i32 u0x02000224, ; uint32_t type_token_id
		i32 1016; uint32_t java_map_index
	}, ; 211
	%struct.TypeMapModuleEntry {
		i32 u0x02000227, ; uint32_t type_token_id
		i32 1156; uint32_t java_map_index
	}, ; 212
	%struct.TypeMapModuleEntry {
		i32 u0x02000228, ; uint32_t type_token_id
		i32 1295; uint32_t java_map_index
	}, ; 213
	%struct.TypeMapModuleEntry {
		i32 u0x02000229, ; uint32_t type_token_id
		i32 434; uint32_t java_map_index
	}, ; 214
	%struct.TypeMapModuleEntry {
		i32 u0x0200022a, ; uint32_t type_token_id
		i32 896; uint32_t java_map_index
	}, ; 215
	%struct.TypeMapModuleEntry {
		i32 u0x0200022b, ; uint32_t type_token_id
		i32 1683; uint32_t java_map_index
	}, ; 216
	%struct.TypeMapModuleEntry {
		i32 u0x0200022c, ; uint32_t type_token_id
		i32 1687; uint32_t java_map_index
	}, ; 217
	%struct.TypeMapModuleEntry {
		i32 u0x0200022d, ; uint32_t type_token_id
		i32 523; uint32_t java_map_index
	}, ; 218
	%struct.TypeMapModuleEntry {
		i32 u0x0200022e, ; uint32_t type_token_id
		i32 156; uint32_t java_map_index
	}, ; 219
	%struct.TypeMapModuleEntry {
		i32 u0x02000230, ; uint32_t type_token_id
		i32 282; uint32_t java_map_index
	}, ; 220
	%struct.TypeMapModuleEntry {
		i32 u0x02000231, ; uint32_t type_token_id
		i32 1101; uint32_t java_map_index
	}, ; 221
	%struct.TypeMapModuleEntry {
		i32 u0x02000232, ; uint32_t type_token_id
		i32 454; uint32_t java_map_index
	}, ; 222
	%struct.TypeMapModuleEntry {
		i32 u0x02000235, ; uint32_t type_token_id
		i32 71; uint32_t java_map_index
	}, ; 223
	%struct.TypeMapModuleEntry {
		i32 u0x02000236, ; uint32_t type_token_id
		i32 211; uint32_t java_map_index
	}, ; 224
	%struct.TypeMapModuleEntry {
		i32 u0x0200023c, ; uint32_t type_token_id
		i32 383; uint32_t java_map_index
	}, ; 225
	%struct.TypeMapModuleEntry {
		i32 u0x0200023e, ; uint32_t type_token_id
		i32 1104; uint32_t java_map_index
	}, ; 226
	%struct.TypeMapModuleEntry {
		i32 u0x02000240, ; uint32_t type_token_id
		i32 1221; uint32_t java_map_index
	}, ; 227
	%struct.TypeMapModuleEntry {
		i32 u0x02000241, ; uint32_t type_token_id
		i32 1268; uint32_t java_map_index
	}, ; 228
	%struct.TypeMapModuleEntry {
		i32 u0x02000242, ; uint32_t type_token_id
		i32 1474; uint32_t java_map_index
	}, ; 229
	%struct.TypeMapModuleEntry {
		i32 u0x02000243, ; uint32_t type_token_id
		i32 398; uint32_t java_map_index
	}, ; 230
	%struct.TypeMapModuleEntry {
		i32 u0x02000244, ; uint32_t type_token_id
		i32 1411; uint32_t java_map_index
	}, ; 231
	%struct.TypeMapModuleEntry {
		i32 u0x02000245, ; uint32_t type_token_id
		i32 1124; uint32_t java_map_index
	}, ; 232
	%struct.TypeMapModuleEntry {
		i32 u0x02000249, ; uint32_t type_token_id
		i32 1264; uint32_t java_map_index
	}, ; 233
	%struct.TypeMapModuleEntry {
		i32 u0x0200024a, ; uint32_t type_token_id
		i32 1392; uint32_t java_map_index
	}, ; 234
	%struct.TypeMapModuleEntry {
		i32 u0x0200024c, ; uint32_t type_token_id
		i32 567; uint32_t java_map_index
	}, ; 235
	%struct.TypeMapModuleEntry {
		i32 u0x0200024d, ; uint32_t type_token_id
		i32 1584; uint32_t java_map_index
	}, ; 236
	%struct.TypeMapModuleEntry {
		i32 u0x0200024f, ; uint32_t type_token_id
		i32 38; uint32_t java_map_index
	}, ; 237
	%struct.TypeMapModuleEntry {
		i32 u0x02000252, ; uint32_t type_token_id
		i32 1642; uint32_t java_map_index
	}, ; 238
	%struct.TypeMapModuleEntry {
		i32 u0x02000253, ; uint32_t type_token_id
		i32 1669; uint32_t java_map_index
	}, ; 239
	%struct.TypeMapModuleEntry {
		i32 u0x02000255, ; uint32_t type_token_id
		i32 498; uint32_t java_map_index
	}, ; 240
	%struct.TypeMapModuleEntry {
		i32 u0x02000258, ; uint32_t type_token_id
		i32 1253; uint32_t java_map_index
	}, ; 241
	%struct.TypeMapModuleEntry {
		i32 u0x02000259, ; uint32_t type_token_id
		i32 137; uint32_t java_map_index
	}, ; 242
	%struct.TypeMapModuleEntry {
		i32 u0x0200025c, ; uint32_t type_token_id
		i32 1425; uint32_t java_map_index
	}, ; 243
	%struct.TypeMapModuleEntry {
		i32 u0x0200025d, ; uint32_t type_token_id
		i32 441; uint32_t java_map_index
	}, ; 244
	%struct.TypeMapModuleEntry {
		i32 u0x02000260, ; uint32_t type_token_id
		i32 1083; uint32_t java_map_index
	}, ; 245
	%struct.TypeMapModuleEntry {
		i32 u0x02000261, ; uint32_t type_token_id
		i32 1591; uint32_t java_map_index
	}, ; 246
	%struct.TypeMapModuleEntry {
		i32 u0x02000264, ; uint32_t type_token_id
		i32 1233; uint32_t java_map_index
	}, ; 247
	%struct.TypeMapModuleEntry {
		i32 u0x02000276, ; uint32_t type_token_id
		i32 637; uint32_t java_map_index
	}, ; 248
	%struct.TypeMapModuleEntry {
		i32 u0x02000277, ; uint32_t type_token_id
		i32 375; uint32_t java_map_index
	}, ; 249
	%struct.TypeMapModuleEntry {
		i32 u0x02000278, ; uint32_t type_token_id
		i32 752; uint32_t java_map_index
	}, ; 250
	%struct.TypeMapModuleEntry {
		i32 u0x02000279, ; uint32_t type_token_id
		i32 889; uint32_t java_map_index
	}, ; 251
	%struct.TypeMapModuleEntry {
		i32 u0x0200027a, ; uint32_t type_token_id
		i32 1608; uint32_t java_map_index
	}, ; 252
	%struct.TypeMapModuleEntry {
		i32 u0x0200027c, ; uint32_t type_token_id
		i32 1263; uint32_t java_map_index
	}, ; 253
	%struct.TypeMapModuleEntry {
		i32 u0x0200027d, ; uint32_t type_token_id
		i32 1574; uint32_t java_map_index
	}, ; 254
	%struct.TypeMapModuleEntry {
		i32 u0x0200027f, ; uint32_t type_token_id
		i32 973; uint32_t java_map_index
	}, ; 255
	%struct.TypeMapModuleEntry {
		i32 u0x02000280, ; uint32_t type_token_id
		i32 815; uint32_t java_map_index
	}, ; 256
	%struct.TypeMapModuleEntry {
		i32 u0x02000284, ; uint32_t type_token_id
		i32 629; uint32_t java_map_index
	}, ; 257
	%struct.TypeMapModuleEntry {
		i32 u0x02000287, ; uint32_t type_token_id
		i32 625; uint32_t java_map_index
	}, ; 258
	%struct.TypeMapModuleEntry {
		i32 u0x02000288, ; uint32_t type_token_id
		i32 136; uint32_t java_map_index
	}, ; 259
	%struct.TypeMapModuleEntry {
		i32 u0x02000289, ; uint32_t type_token_id
		i32 1074; uint32_t java_map_index
	}, ; 260
	%struct.TypeMapModuleEntry {
		i32 u0x0200028b, ; uint32_t type_token_id
		i32 857; uint32_t java_map_index
	}, ; 261
	%struct.TypeMapModuleEntry {
		i32 u0x0200028d, ; uint32_t type_token_id
		i32 141; uint32_t java_map_index
	}, ; 262
	%struct.TypeMapModuleEntry {
		i32 u0x02000291, ; uint32_t type_token_id
		i32 599; uint32_t java_map_index
	}, ; 263
	%struct.TypeMapModuleEntry {
		i32 u0x02000292, ; uint32_t type_token_id
		i32 1742; uint32_t java_map_index
	}, ; 264
	%struct.TypeMapModuleEntry {
		i32 u0x02000294, ; uint32_t type_token_id
		i32 436; uint32_t java_map_index
	}, ; 265
	%struct.TypeMapModuleEntry {
		i32 u0x02000296, ; uint32_t type_token_id
		i32 1507; uint32_t java_map_index
	}, ; 266
	%struct.TypeMapModuleEntry {
		i32 u0x02000298, ; uint32_t type_token_id
		i32 332; uint32_t java_map_index
	}, ; 267
	%struct.TypeMapModuleEntry {
		i32 u0x0200029a, ; uint32_t type_token_id
		i32 1518; uint32_t java_map_index
	}, ; 268
	%struct.TypeMapModuleEntry {
		i32 u0x0200029c, ; uint32_t type_token_id
		i32 348; uint32_t java_map_index
	}, ; 269
	%struct.TypeMapModuleEntry {
		i32 u0x0200029f, ; uint32_t type_token_id
		i32 445; uint32_t java_map_index
	}, ; 270
	%struct.TypeMapModuleEntry {
		i32 u0x020002a1, ; uint32_t type_token_id
		i32 706; uint32_t java_map_index
	}, ; 271
	%struct.TypeMapModuleEntry {
		i32 u0x020002a3, ; uint32_t type_token_id
		i32 1410; uint32_t java_map_index
	}, ; 272
	%struct.TypeMapModuleEntry {
		i32 u0x020002a7, ; uint32_t type_token_id
		i32 241; uint32_t java_map_index
	}, ; 273
	%struct.TypeMapModuleEntry {
		i32 u0x020002a9, ; uint32_t type_token_id
		i32 1330; uint32_t java_map_index
	}, ; 274
	%struct.TypeMapModuleEntry {
		i32 u0x020002ab, ; uint32_t type_token_id
		i32 659; uint32_t java_map_index
	}, ; 275
	%struct.TypeMapModuleEntry {
		i32 u0x020002ad, ; uint32_t type_token_id
		i32 518; uint32_t java_map_index
	}, ; 276
	%struct.TypeMapModuleEntry {
		i32 u0x020002af, ; uint32_t type_token_id
		i32 1393; uint32_t java_map_index
	}, ; 277
	%struct.TypeMapModuleEntry {
		i32 u0x020002b1, ; uint32_t type_token_id
		i32 989; uint32_t java_map_index
	}, ; 278
	%struct.TypeMapModuleEntry {
		i32 u0x020002b3, ; uint32_t type_token_id
		i32 430; uint32_t java_map_index
	}, ; 279
	%struct.TypeMapModuleEntry {
		i32 u0x020002b5, ; uint32_t type_token_id
		i32 1332; uint32_t java_map_index
	}, ; 280
	%struct.TypeMapModuleEntry {
		i32 u0x020002b7, ; uint32_t type_token_id
		i32 189; uint32_t java_map_index
	}, ; 281
	%struct.TypeMapModuleEntry {
		i32 u0x020002b9, ; uint32_t type_token_id
		i32 126; uint32_t java_map_index
	}, ; 282
	%struct.TypeMapModuleEntry {
		i32 u0x020002ba, ; uint32_t type_token_id
		i32 166; uint32_t java_map_index
	}, ; 283
	%struct.TypeMapModuleEntry {
		i32 u0x020002bd, ; uint32_t type_token_id
		i32 600; uint32_t java_map_index
	}, ; 284
	%struct.TypeMapModuleEntry {
		i32 u0x020002bf, ; uint32_t type_token_id
		i32 1198; uint32_t java_map_index
	}, ; 285
	%struct.TypeMapModuleEntry {
		i32 u0x020002c0, ; uint32_t type_token_id
		i32 725; uint32_t java_map_index
	}, ; 286
	%struct.TypeMapModuleEntry {
		i32 u0x020002c8, ; uint32_t type_token_id
		i32 976; uint32_t java_map_index
	}, ; 287
	%struct.TypeMapModuleEntry {
		i32 u0x020002ce, ; uint32_t type_token_id
		i32 53; uint32_t java_map_index
	}, ; 288
	%struct.TypeMapModuleEntry {
		i32 u0x020002d1, ; uint32_t type_token_id
		i32 610; uint32_t java_map_index
	}, ; 289
	%struct.TypeMapModuleEntry {
		i32 u0x020002d2, ; uint32_t type_token_id
		i32 811; uint32_t java_map_index
	}, ; 290
	%struct.TypeMapModuleEntry {
		i32 u0x020002d4, ; uint32_t type_token_id
		i32 1382; uint32_t java_map_index
	}, ; 291
	%struct.TypeMapModuleEntry {
		i32 u0x020002d6, ; uint32_t type_token_id
		i32 285; uint32_t java_map_index
	}, ; 292
	%struct.TypeMapModuleEntry {
		i32 u0x020002da, ; uint32_t type_token_id
		i32 533; uint32_t java_map_index
	}, ; 293
	%struct.TypeMapModuleEntry {
		i32 u0x020002db, ; uint32_t type_token_id
		i32 944; uint32_t java_map_index
	}, ; 294
	%struct.TypeMapModuleEntry {
		i32 u0x020002de, ; uint32_t type_token_id
		i32 1129; uint32_t java_map_index
	}, ; 295
	%struct.TypeMapModuleEntry {
		i32 u0x020002e2, ; uint32_t type_token_id
		i32 877; uint32_t java_map_index
	}, ; 296
	%struct.TypeMapModuleEntry {
		i32 u0x020002e3, ; uint32_t type_token_id
		i32 86; uint32_t java_map_index
	}, ; 297
	%struct.TypeMapModuleEntry {
		i32 u0x020002e5, ; uint32_t type_token_id
		i32 1685; uint32_t java_map_index
	}, ; 298
	%struct.TypeMapModuleEntry {
		i32 u0x020002e6, ; uint32_t type_token_id
		i32 437; uint32_t java_map_index
	}, ; 299
	%struct.TypeMapModuleEntry {
		i32 u0x020002e7, ; uint32_t type_token_id
		i32 919; uint32_t java_map_index
	}, ; 300
	%struct.TypeMapModuleEntry {
		i32 u0x020002e8, ; uint32_t type_token_id
		i32 19; uint32_t java_map_index
	}, ; 301
	%struct.TypeMapModuleEntry {
		i32 u0x020002e9, ; uint32_t type_token_id
		i32 898; uint32_t java_map_index
	}, ; 302
	%struct.TypeMapModuleEntry {
		i32 u0x020002ed, ; uint32_t type_token_id
		i32 1063; uint32_t java_map_index
	}, ; 303
	%struct.TypeMapModuleEntry {
		i32 u0x020002f4, ; uint32_t type_token_id
		i32 1402; uint32_t java_map_index
	}, ; 304
	%struct.TypeMapModuleEntry {
		i32 u0x020002f6, ; uint32_t type_token_id
		i32 1530; uint32_t java_map_index
	}, ; 305
	%struct.TypeMapModuleEntry {
		i32 u0x020002f9, ; uint32_t type_token_id
		i32 1242; uint32_t java_map_index
	}, ; 306
	%struct.TypeMapModuleEntry {
		i32 u0x020002fa, ; uint32_t type_token_id
		i32 480; uint32_t java_map_index
	}, ; 307
	%struct.TypeMapModuleEntry {
		i32 u0x020002fb, ; uint32_t type_token_id
		i32 1466; uint32_t java_map_index
	}, ; 308
	%struct.TypeMapModuleEntry {
		i32 u0x020002fc, ; uint32_t type_token_id
		i32 916; uint32_t java_map_index
	}, ; 309
	%struct.TypeMapModuleEntry {
		i32 u0x020002fe, ; uint32_t type_token_id
		i32 1768; uint32_t java_map_index
	}, ; 310
	%struct.TypeMapModuleEntry {
		i32 u0x020002ff, ; uint32_t type_token_id
		i32 422; uint32_t java_map_index
	}, ; 311
	%struct.TypeMapModuleEntry {
		i32 u0x02000301, ; uint32_t type_token_id
		i32 1737; uint32_t java_map_index
	}, ; 312
	%struct.TypeMapModuleEntry {
		i32 u0x02000302, ; uint32_t type_token_id
		i32 171; uint32_t java_map_index
	}, ; 313
	%struct.TypeMapModuleEntry {
		i32 u0x02000303, ; uint32_t type_token_id
		i32 391; uint32_t java_map_index
	}, ; 314
	%struct.TypeMapModuleEntry {
		i32 u0x02000308, ; uint32_t type_token_id
		i32 66; uint32_t java_map_index
	}, ; 315
	%struct.TypeMapModuleEntry {
		i32 u0x0200030d, ; uint32_t type_token_id
		i32 1325; uint32_t java_map_index
	}, ; 316
	%struct.TypeMapModuleEntry {
		i32 u0x0200030e, ; uint32_t type_token_id
		i32 396; uint32_t java_map_index
	}, ; 317
	%struct.TypeMapModuleEntry {
		i32 u0x0200030f, ; uint32_t type_token_id
		i32 471; uint32_t java_map_index
	}, ; 318
	%struct.TypeMapModuleEntry {
		i32 u0x02000311, ; uint32_t type_token_id
		i32 1515; uint32_t java_map_index
	}, ; 319
	%struct.TypeMapModuleEntry {
		i32 u0x02000312, ; uint32_t type_token_id
		i32 1205; uint32_t java_map_index
	}, ; 320
	%struct.TypeMapModuleEntry {
		i32 u0x02000314, ; uint32_t type_token_id
		i32 359; uint32_t java_map_index
	}, ; 321
	%struct.TypeMapModuleEntry {
		i32 u0x02000315, ; uint32_t type_token_id
		i32 1606; uint32_t java_map_index
	}, ; 322
	%struct.TypeMapModuleEntry {
		i32 u0x02000316, ; uint32_t type_token_id
		i32 168; uint32_t java_map_index
	}, ; 323
	%struct.TypeMapModuleEntry {
		i32 u0x02000317, ; uint32_t type_token_id
		i32 1735; uint32_t java_map_index
	}, ; 324
	%struct.TypeMapModuleEntry {
		i32 u0x02000318, ; uint32_t type_token_id
		i32 577; uint32_t java_map_index
	}, ; 325
	%struct.TypeMapModuleEntry {
		i32 u0x02000319, ; uint32_t type_token_id
		i32 1039; uint32_t java_map_index
	}, ; 326
	%struct.TypeMapModuleEntry {
		i32 u0x0200031a, ; uint32_t type_token_id
		i32 564; uint32_t java_map_index
	}, ; 327
	%struct.TypeMapModuleEntry {
		i32 u0x0200031b, ; uint32_t type_token_id
		i32 299; uint32_t java_map_index
	}, ; 328
	%struct.TypeMapModuleEntry {
		i32 u0x0200031c, ; uint32_t type_token_id
		i32 1201; uint32_t java_map_index
	}, ; 329
	%struct.TypeMapModuleEntry {
		i32 u0x0200031e, ; uint32_t type_token_id
		i32 1568; uint32_t java_map_index
	}, ; 330
	%struct.TypeMapModuleEntry {
		i32 u0x02000321, ; uint32_t type_token_id
		i32 408; uint32_t java_map_index
	}, ; 331
	%struct.TypeMapModuleEntry {
		i32 u0x02000326, ; uint32_t type_token_id
		i32 1422; uint32_t java_map_index
	}, ; 332
	%struct.TypeMapModuleEntry {
		i32 u0x02000327, ; uint32_t type_token_id
		i32 1019; uint32_t java_map_index
	}, ; 333
	%struct.TypeMapModuleEntry {
		i32 u0x0200032a, ; uint32_t type_token_id
		i32 1726; uint32_t java_map_index
	}, ; 334
	%struct.TypeMapModuleEntry {
		i32 u0x0200032b, ; uint32_t type_token_id
		i32 1375; uint32_t java_map_index
	}, ; 335
	%struct.TypeMapModuleEntry {
		i32 u0x0200032c, ; uint32_t type_token_id
		i32 1489; uint32_t java_map_index
	}, ; 336
	%struct.TypeMapModuleEntry {
		i32 u0x0200032d, ; uint32_t type_token_id
		i32 1688; uint32_t java_map_index
	}, ; 337
	%struct.TypeMapModuleEntry {
		i32 u0x0200032e, ; uint32_t type_token_id
		i32 770; uint32_t java_map_index
	}, ; 338
	%struct.TypeMapModuleEntry {
		i32 u0x0200032f, ; uint32_t type_token_id
		i32 400; uint32_t java_map_index
	}, ; 339
	%struct.TypeMapModuleEntry {
		i32 u0x02000331, ; uint32_t type_token_id
		i32 409; uint32_t java_map_index
	}, ; 340
	%struct.TypeMapModuleEntry {
		i32 u0x02000332, ; uint32_t type_token_id
		i32 183; uint32_t java_map_index
	}, ; 341
	%struct.TypeMapModuleEntry {
		i32 u0x02000333, ; uint32_t type_token_id
		i32 585; uint32_t java_map_index
	}, ; 342
	%struct.TypeMapModuleEntry {
		i32 u0x02000334, ; uint32_t type_token_id
		i32 1376; uint32_t java_map_index
	}, ; 343
	%struct.TypeMapModuleEntry {
		i32 u0x02000336, ; uint32_t type_token_id
		i32 1257; uint32_t java_map_index
	}, ; 344
	%struct.TypeMapModuleEntry {
		i32 u0x02000337, ; uint32_t type_token_id
		i32 218; uint32_t java_map_index
	}, ; 345
	%struct.TypeMapModuleEntry {
		i32 u0x0200034f, ; uint32_t type_token_id
		i32 1042; uint32_t java_map_index
	}, ; 346
	%struct.TypeMapModuleEntry {
		i32 u0x02000352, ; uint32_t type_token_id
		i32 1679; uint32_t java_map_index
	}, ; 347
	%struct.TypeMapModuleEntry {
		i32 u0x02000354, ; uint32_t type_token_id
		i32 1389; uint32_t java_map_index
	}, ; 348
	%struct.TypeMapModuleEntry {
		i32 u0x02000356, ; uint32_t type_token_id
		i32 93; uint32_t java_map_index
	}, ; 349
	%struct.TypeMapModuleEntry {
		i32 u0x0200035f, ; uint32_t type_token_id
		i32 856; uint32_t java_map_index
	}, ; 350
	%struct.TypeMapModuleEntry {
		i32 u0x02000361, ; uint32_t type_token_id
		i32 88; uint32_t java_map_index
	}, ; 351
	%struct.TypeMapModuleEntry {
		i32 u0x02000362, ; uint32_t type_token_id
		i32 433; uint32_t java_map_index
	}, ; 352
	%struct.TypeMapModuleEntry {
		i32 u0x02000363, ; uint32_t type_token_id
		i32 1748; uint32_t java_map_index
	}, ; 353
	%struct.TypeMapModuleEntry {
		i32 u0x0200036f, ; uint32_t type_token_id
		i32 986; uint32_t java_map_index
	}, ; 354
	%struct.TypeMapModuleEntry {
		i32 u0x0200037a, ; uint32_t type_token_id
		i32 744; uint32_t java_map_index
	}, ; 355
	%struct.TypeMapModuleEntry {
		i32 u0x0200037b, ; uint32_t type_token_id
		i32 1176; uint32_t java_map_index
	}, ; 356
	%struct.TypeMapModuleEntry {
		i32 u0x0200037c, ; uint32_t type_token_id
		i32 540; uint32_t java_map_index
	}, ; 357
	%struct.TypeMapModuleEntry {
		i32 u0x0200037e, ; uint32_t type_token_id
		i32 1197; uint32_t java_map_index
	}, ; 358
	%struct.TypeMapModuleEntry {
		i32 u0x0200037f, ; uint32_t type_token_id
		i32 1284; uint32_t java_map_index
	}, ; 359
	%struct.TypeMapModuleEntry {
		i32 u0x02000382, ; uint32_t type_token_id
		i32 246; uint32_t java_map_index
	}, ; 360
	%struct.TypeMapModuleEntry {
		i32 u0x02000383, ; uint32_t type_token_id
		i32 234; uint32_t java_map_index
	}, ; 361
	%struct.TypeMapModuleEntry {
		i32 u0x02000384, ; uint32_t type_token_id
		i32 674; uint32_t java_map_index
	}, ; 362
	%struct.TypeMapModuleEntry {
		i32 u0x02000385, ; uint32_t type_token_id
		i32 1623; uint32_t java_map_index
	}, ; 363
	%struct.TypeMapModuleEntry {
		i32 u0x02000388, ; uint32_t type_token_id
		i32 640; uint32_t java_map_index
	}, ; 364
	%struct.TypeMapModuleEntry {
		i32 u0x02000389, ; uint32_t type_token_id
		i32 1001; uint32_t java_map_index
	}, ; 365
	%struct.TypeMapModuleEntry {
		i32 u0x0200038b, ; uint32_t type_token_id
		i32 1207; uint32_t java_map_index
	}, ; 366
	%struct.TypeMapModuleEntry {
		i32 u0x0200038d, ; uint32_t type_token_id
		i32 25; uint32_t java_map_index
	}, ; 367
	%struct.TypeMapModuleEntry {
		i32 u0x0200038e, ; uint32_t type_token_id
		i32 660; uint32_t java_map_index
	}, ; 368
	%struct.TypeMapModuleEntry {
		i32 u0x0200038f, ; uint32_t type_token_id
		i32 678; uint32_t java_map_index
	}, ; 369
	%struct.TypeMapModuleEntry {
		i32 u0x02000390, ; uint32_t type_token_id
		i32 1327; uint32_t java_map_index
	}, ; 370
	%struct.TypeMapModuleEntry {
		i32 u0x02000392, ; uint32_t type_token_id
		i32 708; uint32_t java_map_index
	}, ; 371
	%struct.TypeMapModuleEntry {
		i32 u0x02000393, ; uint32_t type_token_id
		i32 1032; uint32_t java_map_index
	}, ; 372
	%struct.TypeMapModuleEntry {
		i32 u0x02000395, ; uint32_t type_token_id
		i32 753; uint32_t java_map_index
	}, ; 373
	%struct.TypeMapModuleEntry {
		i32 u0x02000398, ; uint32_t type_token_id
		i32 1179; uint32_t java_map_index
	}, ; 374
	%struct.TypeMapModuleEntry {
		i32 u0x02000399, ; uint32_t type_token_id
		i32 1061; uint32_t java_map_index
	}, ; 375
	%struct.TypeMapModuleEntry {
		i32 u0x0200039a, ; uint32_t type_token_id
		i32 157; uint32_t java_map_index
	}, ; 376
	%struct.TypeMapModuleEntry {
		i32 u0x0200039b, ; uint32_t type_token_id
		i32 303; uint32_t java_map_index
	}, ; 377
	%struct.TypeMapModuleEntry {
		i32 u0x0200039c, ; uint32_t type_token_id
		i32 336; uint32_t java_map_index
	}, ; 378
	%struct.TypeMapModuleEntry {
		i32 u0x0200039d, ; uint32_t type_token_id
		i32 812; uint32_t java_map_index
	}, ; 379
	%struct.TypeMapModuleEntry {
		i32 u0x0200039e, ; uint32_t type_token_id
		i32 587; uint32_t java_map_index
	}, ; 380
	%struct.TypeMapModuleEntry {
		i32 u0x0200039f, ; uint32_t type_token_id
		i32 1738; uint32_t java_map_index
	}, ; 381
	%struct.TypeMapModuleEntry {
		i32 u0x020003a0, ; uint32_t type_token_id
		i32 427; uint32_t java_map_index
	}, ; 382
	%struct.TypeMapModuleEntry {
		i32 u0x020003a2, ; uint32_t type_token_id
		i32 1304; uint32_t java_map_index
	}, ; 383
	%struct.TypeMapModuleEntry {
		i32 u0x020003a3, ; uint32_t type_token_id
		i32 654; uint32_t java_map_index
	}, ; 384
	%struct.TypeMapModuleEntry {
		i32 u0x020003a4, ; uint32_t type_token_id
		i32 785; uint32_t java_map_index
	}, ; 385
	%struct.TypeMapModuleEntry {
		i32 u0x020003a5, ; uint32_t type_token_id
		i32 404; uint32_t java_map_index
	}, ; 386
	%struct.TypeMapModuleEntry {
		i32 u0x020003a6, ; uint32_t type_token_id
		i32 1237; uint32_t java_map_index
	}, ; 387
	%struct.TypeMapModuleEntry {
		i32 u0x020003a7, ; uint32_t type_token_id
		i32 1012; uint32_t java_map_index
	}, ; 388
	%struct.TypeMapModuleEntry {
		i32 u0x020003a8, ; uint32_t type_token_id
		i32 1513; uint32_t java_map_index
	}, ; 389
	%struct.TypeMapModuleEntry {
		i32 u0x020003a9, ; uint32_t type_token_id
		i32 689; uint32_t java_map_index
	}, ; 390
	%struct.TypeMapModuleEntry {
		i32 u0x020003aa, ; uint32_t type_token_id
		i32 1157; uint32_t java_map_index
	}, ; 391
	%struct.TypeMapModuleEntry {
		i32 u0x020003ab, ; uint32_t type_token_id
		i32 1117; uint32_t java_map_index
	}, ; 392
	%struct.TypeMapModuleEntry {
		i32 u0x020003ad, ; uint32_t type_token_id
		i32 115; uint32_t java_map_index
	}, ; 393
	%struct.TypeMapModuleEntry {
		i32 u0x020003ae, ; uint32_t type_token_id
		i32 511; uint32_t java_map_index
	}, ; 394
	%struct.TypeMapModuleEntry {
		i32 u0x020003af, ; uint32_t type_token_id
		i32 103; uint32_t java_map_index
	}, ; 395
	%struct.TypeMapModuleEntry {
		i32 u0x020003b0, ; uint32_t type_token_id
		i32 425; uint32_t java_map_index
	}, ; 396
	%struct.TypeMapModuleEntry {
		i32 u0x020003b1, ; uint32_t type_token_id
		i32 287; uint32_t java_map_index
	}, ; 397
	%struct.TypeMapModuleEntry {
		i32 u0x020003b2, ; uint32_t type_token_id
		i32 580; uint32_t java_map_index
	}, ; 398
	%struct.TypeMapModuleEntry {
		i32 u0x020003b3, ; uint32_t type_token_id
		i32 524; uint32_t java_map_index
	}, ; 399
	%struct.TypeMapModuleEntry {
		i32 u0x020003b4, ; uint32_t type_token_id
		i32 1078; uint32_t java_map_index
	}, ; 400
	%struct.TypeMapModuleEntry {
		i32 u0x020003b5, ; uint32_t type_token_id
		i32 775; uint32_t java_map_index
	}, ; 401
	%struct.TypeMapModuleEntry {
		i32 u0x020003b6, ; uint32_t type_token_id
		i32 1177; uint32_t java_map_index
	}, ; 402
	%struct.TypeMapModuleEntry {
		i32 u0x020003b7, ; uint32_t type_token_id
		i32 502; uint32_t java_map_index
	}, ; 403
	%struct.TypeMapModuleEntry {
		i32 u0x020003b8, ; uint32_t type_token_id
		i32 638; uint32_t java_map_index
	}, ; 404
	%struct.TypeMapModuleEntry {
		i32 u0x020003b9, ; uint32_t type_token_id
		i32 1224; uint32_t java_map_index
	}, ; 405
	%struct.TypeMapModuleEntry {
		i32 u0x020003ba, ; uint32_t type_token_id
		i32 222; uint32_t java_map_index
	}, ; 406
	%struct.TypeMapModuleEntry {
		i32 u0x020003bb, ; uint32_t type_token_id
		i32 102; uint32_t java_map_index
	}, ; 407
	%struct.TypeMapModuleEntry {
		i32 u0x020003bc, ; uint32_t type_token_id
		i32 695; uint32_t java_map_index
	}, ; 408
	%struct.TypeMapModuleEntry {
		i32 u0x020003bd, ; uint32_t type_token_id
		i32 1664; uint32_t java_map_index
	}, ; 409
	%struct.TypeMapModuleEntry {
		i32 u0x020003be, ; uint32_t type_token_id
		i32 1023; uint32_t java_map_index
	}, ; 410
	%struct.TypeMapModuleEntry {
		i32 u0x020003bf, ; uint32_t type_token_id
		i32 1427; uint32_t java_map_index
	}, ; 411
	%struct.TypeMapModuleEntry {
		i32 u0x020003c1, ; uint32_t type_token_id
		i32 1416; uint32_t java_map_index
	}, ; 412
	%struct.TypeMapModuleEntry {
		i32 u0x020003c2, ; uint32_t type_token_id
		i32 818; uint32_t java_map_index
	}, ; 413
	%struct.TypeMapModuleEntry {
		i32 u0x020003c3, ; uint32_t type_token_id
		i32 112; uint32_t java_map_index
	}, ; 414
	%struct.TypeMapModuleEntry {
		i32 u0x020003c5, ; uint32_t type_token_id
		i32 125; uint32_t java_map_index
	}, ; 415
	%struct.TypeMapModuleEntry {
		i32 u0x020003c6, ; uint32_t type_token_id
		i32 1110; uint32_t java_map_index
	}, ; 416
	%struct.TypeMapModuleEntry {
		i32 u0x020003c7, ; uint32_t type_token_id
		i32 1346; uint32_t java_map_index
	}, ; 417
	%struct.TypeMapModuleEntry {
		i32 u0x020003c8, ; uint32_t type_token_id
		i32 894; uint32_t java_map_index
	}, ; 418
	%struct.TypeMapModuleEntry {
		i32 u0x020003c9, ; uint32_t type_token_id
		i32 243; uint32_t java_map_index
	}, ; 419
	%struct.TypeMapModuleEntry {
		i32 u0x020003ca, ; uint32_t type_token_id
		i32 623; uint32_t java_map_index
	}, ; 420
	%struct.TypeMapModuleEntry {
		i32 u0x020003cc, ; uint32_t type_token_id
		i32 773; uint32_t java_map_index
	}, ; 421
	%struct.TypeMapModuleEntry {
		i32 u0x020003ce, ; uint32_t type_token_id
		i32 133; uint32_t java_map_index
	}, ; 422
	%struct.TypeMapModuleEntry {
		i32 u0x020003cf, ; uint32_t type_token_id
		i32 100; uint32_t java_map_index
	}, ; 423
	%struct.TypeMapModuleEntry {
		i32 u0x020003d1, ; uint32_t type_token_id
		i32 912; uint32_t java_map_index
	}, ; 424
	%struct.TypeMapModuleEntry {
		i32 u0x020003d3, ; uint32_t type_token_id
		i32 1462; uint32_t java_map_index
	}, ; 425
	%struct.TypeMapModuleEntry {
		i32 u0x020003d4, ; uint32_t type_token_id
		i32 551; uint32_t java_map_index
	}, ; 426
	%struct.TypeMapModuleEntry {
		i32 u0x020003d5, ; uint32_t type_token_id
		i32 1446; uint32_t java_map_index
	}, ; 427
	%struct.TypeMapModuleEntry {
		i32 u0x020003d6, ; uint32_t type_token_id
		i32 1702; uint32_t java_map_index
	}, ; 428
	%struct.TypeMapModuleEntry {
		i32 u0x020003d7, ; uint32_t type_token_id
		i32 696; uint32_t java_map_index
	}, ; 429
	%struct.TypeMapModuleEntry {
		i32 u0x020003da, ; uint32_t type_token_id
		i32 232; uint32_t java_map_index
	}, ; 430
	%struct.TypeMapModuleEntry {
		i32 u0x020003db, ; uint32_t type_token_id
		i32 539; uint32_t java_map_index
	}, ; 431
	%struct.TypeMapModuleEntry {
		i32 u0x020003dc, ; uint32_t type_token_id
		i32 426; uint32_t java_map_index
	}, ; 432
	%struct.TypeMapModuleEntry {
		i32 u0x020003dd, ; uint32_t type_token_id
		i32 1479; uint32_t java_map_index
	}, ; 433
	%struct.TypeMapModuleEntry {
		i32 u0x020003e1, ; uint32_t type_token_id
		i32 864; uint32_t java_map_index
	}, ; 434
	%struct.TypeMapModuleEntry {
		i32 u0x020003e2, ; uint32_t type_token_id
		i32 918; uint32_t java_map_index
	}, ; 435
	%struct.TypeMapModuleEntry {
		i32 u0x020003e3, ; uint32_t type_token_id
		i32 822; uint32_t java_map_index
	}, ; 436
	%struct.TypeMapModuleEntry {
		i32 u0x020003e4, ; uint32_t type_token_id
		i32 341; uint32_t java_map_index
	}, ; 437
	%struct.TypeMapModuleEntry {
		i32 u0x020003e7, ; uint32_t type_token_id
		i32 670; uint32_t java_map_index
	}, ; 438
	%struct.TypeMapModuleEntry {
		i32 u0x020003e9, ; uint32_t type_token_id
		i32 1038; uint32_t java_map_index
	}, ; 439
	%struct.TypeMapModuleEntry {
		i32 u0x020003ea, ; uint32_t type_token_id
		i32 1326; uint32_t java_map_index
	}, ; 440
	%struct.TypeMapModuleEntry {
		i32 u0x020003eb, ; uint32_t type_token_id
		i32 343; uint32_t java_map_index
	}, ; 441
	%struct.TypeMapModuleEntry {
		i32 u0x020003ec, ; uint32_t type_token_id
		i32 123; uint32_t java_map_index
	}, ; 442
	%struct.TypeMapModuleEntry {
		i32 u0x020003ee, ; uint32_t type_token_id
		i32 1485; uint32_t java_map_index
	}, ; 443
	%struct.TypeMapModuleEntry {
		i32 u0x020003f1, ; uint32_t type_token_id
		i32 642; uint32_t java_map_index
	}, ; 444
	%struct.TypeMapModuleEntry {
		i32 u0x020003f3, ; uint32_t type_token_id
		i32 84; uint32_t java_map_index
	}, ; 445
	%struct.TypeMapModuleEntry {
		i32 u0x020003f5, ; uint32_t type_token_id
		i32 1546; uint32_t java_map_index
	}, ; 446
	%struct.TypeMapModuleEntry {
		i32 u0x020003f6, ; uint32_t type_token_id
		i32 365; uint32_t java_map_index
	}, ; 447
	%struct.TypeMapModuleEntry {
		i32 u0x020003f9, ; uint32_t type_token_id
		i32 536; uint32_t java_map_index
	}, ; 448
	%struct.TypeMapModuleEntry {
		i32 u0x020003fa, ; uint32_t type_token_id
		i32 99; uint32_t java_map_index
	}, ; 449
	%struct.TypeMapModuleEntry {
		i32 u0x020003fc, ; uint32_t type_token_id
		i32 1017; uint32_t java_map_index
	}, ; 450
	%struct.TypeMapModuleEntry {
		i32 u0x020003fd, ; uint32_t type_token_id
		i32 1503; uint32_t java_map_index
	}, ; 451
	%struct.TypeMapModuleEntry {
		i32 u0x020003ff, ; uint32_t type_token_id
		i32 1586; uint32_t java_map_index
	}, ; 452
	%struct.TypeMapModuleEntry {
		i32 u0x02000402, ; uint32_t type_token_id
		i32 1225; uint32_t java_map_index
	}, ; 453
	%struct.TypeMapModuleEntry {
		i32 u0x02000404, ; uint32_t type_token_id
		i32 58; uint32_t java_map_index
	}, ; 454
	%struct.TypeMapModuleEntry {
		i32 u0x02000405, ; uint32_t type_token_id
		i32 517; uint32_t java_map_index
	}, ; 455
	%struct.TypeMapModuleEntry {
		i32 u0x02000407, ; uint32_t type_token_id
		i32 238; uint32_t java_map_index
	}, ; 456
	%struct.TypeMapModuleEntry {
		i32 u0x02000408, ; uint32_t type_token_id
		i32 337; uint32_t java_map_index
	}, ; 457
	%struct.TypeMapModuleEntry {
		i32 u0x02000409, ; uint32_t type_token_id
		i32 557; uint32_t java_map_index
	}, ; 458
	%struct.TypeMapModuleEntry {
		i32 u0x0200040b, ; uint32_t type_token_id
		i32 368; uint32_t java_map_index
	}, ; 459
	%struct.TypeMapModuleEntry {
		i32 u0x0200040d, ; uint32_t type_token_id
		i32 1624; uint32_t java_map_index
	}, ; 460
	%struct.TypeMapModuleEntry {
		i32 u0x0200040f, ; uint32_t type_token_id
		i32 1145; uint32_t java_map_index
	}, ; 461
	%struct.TypeMapModuleEntry {
		i32 u0x02000411, ; uint32_t type_token_id
		i32 1214; uint32_t java_map_index
	}, ; 462
	%struct.TypeMapModuleEntry {
		i32 u0x02000414, ; uint32_t type_token_id
		i32 490; uint32_t java_map_index
	}, ; 463
	%struct.TypeMapModuleEntry {
		i32 u0x02000415, ; uint32_t type_token_id
		i32 1582; uint32_t java_map_index
	}, ; 464
	%struct.TypeMapModuleEntry {
		i32 u0x02000416, ; uint32_t type_token_id
		i32 1596; uint32_t java_map_index
	}, ; 465
	%struct.TypeMapModuleEntry {
		i32 u0x02000417, ; uint32_t type_token_id
		i32 216; uint32_t java_map_index
	}, ; 466
	%struct.TypeMapModuleEntry {
		i32 u0x02000418, ; uint32_t type_token_id
		i32 1254; uint32_t java_map_index
	}, ; 467
	%struct.TypeMapModuleEntry {
		i32 u0x0200041b, ; uint32_t type_token_id
		i32 338; uint32_t java_map_index
	}, ; 468
	%struct.TypeMapModuleEntry {
		i32 u0x0200041c, ; uint32_t type_token_id
		i32 558; uint32_t java_map_index
	}, ; 469
	%struct.TypeMapModuleEntry {
		i32 u0x0200041d, ; uint32_t type_token_id
		i32 45; uint32_t java_map_index
	}, ; 470
	%struct.TypeMapModuleEntry {
		i32 u0x0200041f, ; uint32_t type_token_id
		i32 1040; uint32_t java_map_index
	}, ; 471
	%struct.TypeMapModuleEntry {
		i32 u0x02000420, ; uint32_t type_token_id
		i32 960; uint32_t java_map_index
	}, ; 472
	%struct.TypeMapModuleEntry {
		i32 u0x02000423, ; uint32_t type_token_id
		i32 1695; uint32_t java_map_index
	}, ; 473
	%struct.TypeMapModuleEntry {
		i32 u0x02000426, ; uint32_t type_token_id
		i32 1579; uint32_t java_map_index
	}, ; 474
	%struct.TypeMapModuleEntry {
		i32 u0x02000428, ; uint32_t type_token_id
		i32 174; uint32_t java_map_index
	}, ; 475
	%struct.TypeMapModuleEntry {
		i32 u0x0200042b, ; uint32_t type_token_id
		i32 1058; uint32_t java_map_index
	}, ; 476
	%struct.TypeMapModuleEntry {
		i32 u0x0200042c, ; uint32_t type_token_id
		i32 1776; uint32_t java_map_index
	}, ; 477
	%struct.TypeMapModuleEntry {
		i32 u0x0200042d, ; uint32_t type_token_id
		i32 1403; uint32_t java_map_index
	}, ; 478
	%struct.TypeMapModuleEntry {
		i32 u0x0200042e, ; uint32_t type_token_id
		i32 596; uint32_t java_map_index
	}, ; 479
	%struct.TypeMapModuleEntry {
		i32 u0x02000435, ; uint32_t type_token_id
		i32 73; uint32_t java_map_index
	}, ; 480
	%struct.TypeMapModuleEntry {
		i32 u0x02000436, ; uint32_t type_token_id
		i32 429; uint32_t java_map_index
	}, ; 481
	%struct.TypeMapModuleEntry {
		i32 u0x02000437, ; uint32_t type_token_id
		i32 622; uint32_t java_map_index
	}, ; 482
	%struct.TypeMapModuleEntry {
		i32 u0x02000438, ; uint32_t type_token_id
		i32 201; uint32_t java_map_index
	}, ; 483
	%struct.TypeMapModuleEntry {
		i32 u0x02000439, ; uint32_t type_token_id
		i32 1447; uint32_t java_map_index
	}, ; 484
	%struct.TypeMapModuleEntry {
		i32 u0x0200043a, ; uint32_t type_token_id
		i32 685; uint32_t java_map_index
	}, ; 485
	%struct.TypeMapModuleEntry {
		i32 u0x0200043b, ; uint32_t type_token_id
		i32 1401; uint32_t java_map_index
	}, ; 486
	%struct.TypeMapModuleEntry {
		i32 u0x0200043c, ; uint32_t type_token_id
		i32 782; uint32_t java_map_index
	}, ; 487
	%struct.TypeMapModuleEntry {
		i32 u0x0200043e, ; uint32_t type_token_id
		i32 711; uint32_t java_map_index
	}, ; 488
	%struct.TypeMapModuleEntry {
		i32 u0x02000440, ; uint32_t type_token_id
		i32 370; uint32_t java_map_index
	}, ; 489
	%struct.TypeMapModuleEntry {
		i32 u0x02000442, ; uint32_t type_token_id
		i32 1439; uint32_t java_map_index
	}, ; 490
	%struct.TypeMapModuleEntry {
		i32 u0x02000443, ; uint32_t type_token_id
		i32 1005; uint32_t java_map_index
	}, ; 491
	%struct.TypeMapModuleEntry {
		i32 u0x0200044b, ; uint32_t type_token_id
		i32 562; uint32_t java_map_index
	}, ; 492
	%struct.TypeMapModuleEntry {
		i32 u0x0200044c, ; uint32_t type_token_id
		i32 1006; uint32_t java_map_index
	}, ; 493
	%struct.TypeMapModuleEntry {
		i32 u0x0200044d, ; uint32_t type_token_id
		i32 487; uint32_t java_map_index
	}, ; 494
	%struct.TypeMapModuleEntry {
		i32 u0x0200044e, ; uint32_t type_token_id
		i32 1391; uint32_t java_map_index
	}, ; 495
	%struct.TypeMapModuleEntry {
		i32 u0x02000452, ; uint32_t type_token_id
		i32 288; uint32_t java_map_index
	}, ; 496
	%struct.TypeMapModuleEntry {
		i32 u0x02000453, ; uint32_t type_token_id
		i32 950; uint32_t java_map_index
	}, ; 497
	%struct.TypeMapModuleEntry {
		i32 u0x02000456, ; uint32_t type_token_id
		i32 756; uint32_t java_map_index
	}, ; 498
	%struct.TypeMapModuleEntry {
		i32 u0x02000457, ; uint32_t type_token_id
		i32 655; uint32_t java_map_index
	}, ; 499
	%struct.TypeMapModuleEntry {
		i32 u0x02000459, ; uint32_t type_token_id
		i32 589; uint32_t java_map_index
	}, ; 500
	%struct.TypeMapModuleEntry {
		i32 u0x0200045a, ; uint32_t type_token_id
		i32 1164; uint32_t java_map_index
	}, ; 501
	%struct.TypeMapModuleEntry {
		i32 u0x0200045c, ; uint32_t type_token_id
		i32 1431; uint32_t java_map_index
	}, ; 502
	%struct.TypeMapModuleEntry {
		i32 u0x0200045d, ; uint32_t type_token_id
		i32 149; uint32_t java_map_index
	}, ; 503
	%struct.TypeMapModuleEntry {
		i32 u0x0200045f, ; uint32_t type_token_id
		i32 1493; uint32_t java_map_index
	}, ; 504
	%struct.TypeMapModuleEntry {
		i32 u0x02000460, ; uint32_t type_token_id
		i32 1260; uint32_t java_map_index
	}, ; 505
	%struct.TypeMapModuleEntry {
		i32 u0x02000464, ; uint32_t type_token_id
		i32 1452; uint32_t java_map_index
	}, ; 506
	%struct.TypeMapModuleEntry {
		i32 u0x02000465, ; uint32_t type_token_id
		i32 1673; uint32_t java_map_index
	}, ; 507
	%struct.TypeMapModuleEntry {
		i32 u0x02000466, ; uint32_t type_token_id
		i32 219; uint32_t java_map_index
	}, ; 508
	%struct.TypeMapModuleEntry {
		i32 u0x02000468, ; uint32_t type_token_id
		i32 309; uint32_t java_map_index
	}, ; 509
	%struct.TypeMapModuleEntry {
		i32 u0x0200046a, ; uint32_t type_token_id
		i32 496; uint32_t java_map_index
	}, ; 510
	%struct.TypeMapModuleEntry {
		i32 u0x0200046c, ; uint32_t type_token_id
		i32 1184; uint32_t java_map_index
	}, ; 511
	%struct.TypeMapModuleEntry {
		i32 u0x0200046e, ; uint32_t type_token_id
		i32 46; uint32_t java_map_index
	}, ; 512
	%struct.TypeMapModuleEntry {
		i32 u0x0200046f, ; uint32_t type_token_id
		i32 449; uint32_t java_map_index
	}, ; 513
	%struct.TypeMapModuleEntry {
		i32 u0x02000470, ; uint32_t type_token_id
		i32 1090; uint32_t java_map_index
	}, ; 514
	%struct.TypeMapModuleEntry {
		i32 u0x02000471, ; uint32_t type_token_id
		i32 119; uint32_t java_map_index
	}, ; 515
	%struct.TypeMapModuleEntry {
		i32 u0x02000472, ; uint32_t type_token_id
		i32 1154; uint32_t java_map_index
	}, ; 516
	%struct.TypeMapModuleEntry {
		i32 u0x02000474, ; uint32_t type_token_id
		i32 1077; uint32_t java_map_index
	}, ; 517
	%struct.TypeMapModuleEntry {
		i32 u0x02000475, ; uint32_t type_token_id
		i32 719; uint32_t java_map_index
	}, ; 518
	%struct.TypeMapModuleEntry {
		i32 u0x02000476, ; uint32_t type_token_id
		i32 1680; uint32_t java_map_index
	}, ; 519
	%struct.TypeMapModuleEntry {
		i32 u0x02000477, ; uint32_t type_token_id
		i32 881; uint32_t java_map_index
	}, ; 520
	%struct.TypeMapModuleEntry {
		i32 u0x02000478, ; uint32_t type_token_id
		i32 447; uint32_t java_map_index
	}, ; 521
	%struct.TypeMapModuleEntry {
		i32 u0x0200047a, ; uint32_t type_token_id
		i32 879; uint32_t java_map_index
	}, ; 522
	%struct.TypeMapModuleEntry {
		i32 u0x0200047c, ; uint32_t type_token_id
		i32 356; uint32_t java_map_index
	}, ; 523
	%struct.TypeMapModuleEntry {
		i32 u0x0200047e, ; uint32_t type_token_id
		i32 1777; uint32_t java_map_index
	}, ; 524
	%struct.TypeMapModuleEntry {
		i32 u0x02000480, ; uint32_t type_token_id
		i32 771; uint32_t java_map_index
	}, ; 525
	%struct.TypeMapModuleEntry {
		i32 u0x02000481, ; uint32_t type_token_id
		i32 1543; uint32_t java_map_index
	}, ; 526
	%struct.TypeMapModuleEntry {
		i32 u0x02000482, ; uint32_t type_token_id
		i32 1566; uint32_t java_map_index
	}, ; 527
	%struct.TypeMapModuleEntry {
		i32 u0x02000483, ; uint32_t type_token_id
		i32 1719; uint32_t java_map_index
	}, ; 528
	%struct.TypeMapModuleEntry {
		i32 u0x02000485, ; uint32_t type_token_id
		i32 131; uint32_t java_map_index
	}, ; 529
	%struct.TypeMapModuleEntry {
		i32 u0x02000487, ; uint32_t type_token_id
		i32 850; uint32_t java_map_index
	}, ; 530
	%struct.TypeMapModuleEntry {
		i32 u0x02000488, ; uint32_t type_token_id
		i32 124; uint32_t java_map_index
	}, ; 531
	%struct.TypeMapModuleEntry {
		i32 u0x0200048a, ; uint32_t type_token_id
		i32 1160; uint32_t java_map_index
	}, ; 532
	%struct.TypeMapModuleEntry {
		i32 u0x0200048c, ; uint32_t type_token_id
		i32 569; uint32_t java_map_index
	}, ; 533
	%struct.TypeMapModuleEntry {
		i32 u0x0200048e, ; uint32_t type_token_id
		i32 1171; uint32_t java_map_index
	}, ; 534
	%struct.TypeMapModuleEntry {
		i32 u0x0200048f, ; uint32_t type_token_id
		i32 176; uint32_t java_map_index
	}, ; 535
	%struct.TypeMapModuleEntry {
		i32 u0x02000491, ; uint32_t type_token_id
		i32 1240; uint32_t java_map_index
	}, ; 536
	%struct.TypeMapModuleEntry {
		i32 u0x02000493, ; uint32_t type_token_id
		i32 1535; uint32_t java_map_index
	}, ; 537
	%struct.TypeMapModuleEntry {
		i32 u0x02000495, ; uint32_t type_token_id
		i32 1627; uint32_t java_map_index
	}, ; 538
	%struct.TypeMapModuleEntry {
		i32 u0x02000497, ; uint32_t type_token_id
		i32 1044; uint32_t java_map_index
	}, ; 539
	%struct.TypeMapModuleEntry {
		i32 u0x02000498, ; uint32_t type_token_id
		i32 1047; uint32_t java_map_index
	}, ; 540
	%struct.TypeMapModuleEntry {
		i32 u0x02000499, ; uint32_t type_token_id
		i32 1639; uint32_t java_map_index
	}, ; 541
	%struct.TypeMapModuleEntry {
		i32 u0x0200049a, ; uint32_t type_token_id
		i32 1081; uint32_t java_map_index
	}, ; 542
	%struct.TypeMapModuleEntry {
		i32 u0x0200049b, ; uint32_t type_token_id
		i32 1652; uint32_t java_map_index
	}, ; 543
	%struct.TypeMapModuleEntry {
		i32 u0x0200049d, ; uint32_t type_token_id
		i32 937; uint32_t java_map_index
	}, ; 544
	%struct.TypeMapModuleEntry {
		i32 u0x0200049f, ; uint32_t type_token_id
		i32 213; uint32_t java_map_index
	}, ; 545
	%struct.TypeMapModuleEntry {
		i32 u0x020004a0, ; uint32_t type_token_id
		i32 693; uint32_t java_map_index
	}, ; 546
	%struct.TypeMapModuleEntry {
		i32 u0x020004a1, ; uint32_t type_token_id
		i32 664; uint32_t java_map_index
	}, ; 547
	%struct.TypeMapModuleEntry {
		i32 u0x020004a3, ; uint32_t type_token_id
		i32 1143; uint32_t java_map_index
	}, ; 548
	%struct.TypeMapModuleEntry {
		i32 u0x020004a5, ; uint32_t type_token_id
		i32 1646; uint32_t java_map_index
	}, ; 549
	%struct.TypeMapModuleEntry {
		i32 u0x020004a6, ; uint32_t type_token_id
		i32 159; uint32_t java_map_index
	}, ; 550
	%struct.TypeMapModuleEntry {
		i32 u0x020004a7, ; uint32_t type_token_id
		i32 1458; uint32_t java_map_index
	}, ; 551
	%struct.TypeMapModuleEntry {
		i32 u0x020004a9, ; uint32_t type_token_id
		i32 1387; uint32_t java_map_index
	}, ; 552
	%struct.TypeMapModuleEntry {
		i32 u0x020004aa, ; uint32_t type_token_id
		i32 484; uint32_t java_map_index
	}, ; 553
	%struct.TypeMapModuleEntry {
		i32 u0x020004ac, ; uint32_t type_token_id
		i32 162; uint32_t java_map_index
	}, ; 554
	%struct.TypeMapModuleEntry {
		i32 u0x020004ad, ; uint32_t type_token_id
		i32 1725; uint32_t java_map_index
	}, ; 555
	%struct.TypeMapModuleEntry {
		i32 u0x020004af, ; uint32_t type_token_id
		i32 534; uint32_t java_map_index
	}, ; 556
	%struct.TypeMapModuleEntry {
		i32 u0x020004b1, ; uint32_t type_token_id
		i32 203; uint32_t java_map_index
	}, ; 557
	%struct.TypeMapModuleEntry {
		i32 u0x020004b6, ; uint32_t type_token_id
		i32 661; uint32_t java_map_index
	}, ; 558
	%struct.TypeMapModuleEntry {
		i32 u0x020004b8, ; uint32_t type_token_id
		i32 1631; uint32_t java_map_index
	}, ; 559
	%struct.TypeMapModuleEntry {
		i32 u0x020004ba, ; uint32_t type_token_id
		i32 778; uint32_t java_map_index
	}, ; 560
	%struct.TypeMapModuleEntry {
		i32 u0x020004bd, ; uint32_t type_token_id
		i32 11; uint32_t java_map_index
	}, ; 561
	%struct.TypeMapModuleEntry {
		i32 u0x020004bf, ; uint32_t type_token_id
		i32 791; uint32_t java_map_index
	}, ; 562
	%struct.TypeMapModuleEntry {
		i32 u0x020004c1, ; uint32_t type_token_id
		i32 582; uint32_t java_map_index
	}, ; 563
	%struct.TypeMapModuleEntry {
		i32 u0x020004c3, ; uint32_t type_token_id
		i32 985; uint32_t java_map_index
	}, ; 564
	%struct.TypeMapModuleEntry {
		i32 u0x020004c5, ; uint32_t type_token_id
		i32 1370; uint32_t java_map_index
	}, ; 565
	%struct.TypeMapModuleEntry {
		i32 u0x020004c7, ; uint32_t type_token_id
		i32 1469; uint32_t java_map_index
	}, ; 566
	%struct.TypeMapModuleEntry {
		i32 u0x020004c8, ; uint32_t type_token_id
		i32 875; uint32_t java_map_index
	}, ; 567
	%struct.TypeMapModuleEntry {
		i32 u0x020004c9, ; uint32_t type_token_id
		i32 51; uint32_t java_map_index
	}, ; 568
	%struct.TypeMapModuleEntry {
		i32 u0x020004cb, ; uint32_t type_token_id
		i32 1343; uint32_t java_map_index
	}, ; 569
	%struct.TypeMapModuleEntry {
		i32 u0x020004cc, ; uint32_t type_token_id
		i32 26; uint32_t java_map_index
	}, ; 570
	%struct.TypeMapModuleEntry {
		i32 u0x020004ce, ; uint32_t type_token_id
		i32 1655; uint32_t java_map_index
	}, ; 571
	%struct.TypeMapModuleEntry {
		i32 u0x020004cf, ; uint32_t type_token_id
		i32 499; uint32_t java_map_index
	}, ; 572
	%struct.TypeMapModuleEntry {
		i32 u0x020004d0, ; uint32_t type_token_id
		i32 1520; uint32_t java_map_index
	}, ; 573
	%struct.TypeMapModuleEntry {
		i32 u0x020004d2, ; uint32_t type_token_id
		i32 958; uint32_t java_map_index
	}, ; 574
	%struct.TypeMapModuleEntry {
		i32 u0x020004d4, ; uint32_t type_token_id
		i32 1551; uint32_t java_map_index
	}, ; 575
	%struct.TypeMapModuleEntry {
		i32 u0x020004d6, ; uint32_t type_token_id
		i32 69; uint32_t java_map_index
	}, ; 576
	%struct.TypeMapModuleEntry {
		i32 u0x020004d8, ; uint32_t type_token_id
		i32 1069; uint32_t java_map_index
	}, ; 577
	%struct.TypeMapModuleEntry {
		i32 u0x020004da, ; uint32_t type_token_id
		i32 1004; uint32_t java_map_index
	}, ; 578
	%struct.TypeMapModuleEntry {
		i32 u0x020004dc, ; uint32_t type_token_id
		i32 229; uint32_t java_map_index
	}, ; 579
	%struct.TypeMapModuleEntry {
		i32 u0x020004de, ; uint32_t type_token_id
		i32 1711; uint32_t java_map_index
	}, ; 580
	%struct.TypeMapModuleEntry {
		i32 u0x020004e0, ; uint32_t type_token_id
		i32 1470; uint32_t java_map_index
	}, ; 581
	%struct.TypeMapModuleEntry {
		i32 u0x020004e2, ; uint32_t type_token_id
		i32 1323; uint32_t java_map_index
	}, ; 582
	%struct.TypeMapModuleEntry {
		i32 u0x020004e3, ; uint32_t type_token_id
		i32 1368; uint32_t java_map_index
	}, ; 583
	%struct.TypeMapModuleEntry {
		i32 u0x020004e5, ; uint32_t type_token_id
		i32 1550; uint32_t java_map_index
	}, ; 584
	%struct.TypeMapModuleEntry {
		i32 u0x020004e7, ; uint32_t type_token_id
		i32 1684; uint32_t java_map_index
	}, ; 585
	%struct.TypeMapModuleEntry {
		i32 u0x020004e9, ; uint32_t type_token_id
		i32 446; uint32_t java_map_index
	}, ; 586
	%struct.TypeMapModuleEntry {
		i32 u0x020004eb, ; uint32_t type_token_id
		i32 705; uint32_t java_map_index
	}, ; 587
	%struct.TypeMapModuleEntry {
		i32 u0x020004ec, ; uint32_t type_token_id
		i32 344; uint32_t java_map_index
	}, ; 588
	%struct.TypeMapModuleEntry {
		i32 u0x020004ed, ; uint32_t type_token_id
		i32 12; uint32_t java_map_index
	}, ; 589
	%struct.TypeMapModuleEntry {
		i32 u0x020004ee, ; uint32_t type_token_id
		i32 948; uint32_t java_map_index
	}, ; 590
	%struct.TypeMapModuleEntry {
		i32 u0x020004ef, ; uint32_t type_token_id
		i32 541; uint32_t java_map_index
	}, ; 591
	%struct.TypeMapModuleEntry {
		i32 u0x020004f0, ; uint32_t type_token_id
		i32 1308; uint32_t java_map_index
	}, ; 592
	%struct.TypeMapModuleEntry {
		i32 u0x020004f1, ; uint32_t type_token_id
		i32 1430; uint32_t java_map_index
	}, ; 593
	%struct.TypeMapModuleEntry {
		i32 u0x020004f2, ; uint32_t type_token_id
		i32 1204; uint32_t java_map_index
	}, ; 594
	%struct.TypeMapModuleEntry {
		i32 u0x020004f3, ; uint32_t type_token_id
		i32 1031; uint32_t java_map_index
	}, ; 595
	%struct.TypeMapModuleEntry {
		i32 u0x020004f4, ; uint32_t type_token_id
		i32 917; uint32_t java_map_index
	}, ; 596
	%struct.TypeMapModuleEntry {
		i32 u0x020004f5, ; uint32_t type_token_id
		i32 978; uint32_t java_map_index
	}, ; 597
	%struct.TypeMapModuleEntry {
		i32 u0x020004f6, ; uint32_t type_token_id
		i32 1199; uint32_t java_map_index
	}, ; 598
	%struct.TypeMapModuleEntry {
		i32 u0x020004f7, ; uint32_t type_token_id
		i32 1613; uint32_t java_map_index
	}, ; 599
	%struct.TypeMapModuleEntry {
		i32 u0x020004f8, ; uint32_t type_token_id
		i32 779; uint32_t java_map_index
	}, ; 600
	%struct.TypeMapModuleEntry {
		i32 u0x020004f9, ; uint32_t type_token_id
		i32 1303; uint32_t java_map_index
	}, ; 601
	%struct.TypeMapModuleEntry {
		i32 u0x020004fa, ; uint32_t type_token_id
		i32 1729; uint32_t java_map_index
	}, ; 602
	%struct.TypeMapModuleEntry {
		i32 u0x020004fb, ; uint32_t type_token_id
		i32 933; uint32_t java_map_index
	}, ; 603
	%struct.TypeMapModuleEntry {
		i32 u0x020004fc, ; uint32_t type_token_id
		i32 643; uint32_t java_map_index
	}, ; 604
	%struct.TypeMapModuleEntry {
		i32 u0x020004fd, ; uint32_t type_token_id
		i32 1175; uint32_t java_map_index
	}, ; 605
	%struct.TypeMapModuleEntry {
		i32 u0x020004ff, ; uint32_t type_token_id
		i32 885; uint32_t java_map_index
	}, ; 606
	%struct.TypeMapModuleEntry {
		i32 u0x02000501, ; uint32_t type_token_id
		i32 996; uint32_t java_map_index
	}, ; 607
	%struct.TypeMapModuleEntry {
		i32 u0x02000502, ; uint32_t type_token_id
		i32 1331; uint32_t java_map_index
	}, ; 608
	%struct.TypeMapModuleEntry {
		i32 u0x02000503, ; uint32_t type_token_id
		i32 993; uint32_t java_map_index
	}, ; 609
	%struct.TypeMapModuleEntry {
		i32 u0x02000504, ; uint32_t type_token_id
		i32 718; uint32_t java_map_index
	}, ; 610
	%struct.TypeMapModuleEntry {
		i32 u0x02000505, ; uint32_t type_token_id
		i32 795; uint32_t java_map_index
	}, ; 611
	%struct.TypeMapModuleEntry {
		i32 u0x02000508, ; uint32_t type_token_id
		i32 546; uint32_t java_map_index
	}, ; 612
	%struct.TypeMapModuleEntry {
		i32 u0x02000509, ; uint32_t type_token_id
		i32 374; uint32_t java_map_index
	}, ; 613
	%struct.TypeMapModuleEntry {
		i32 u0x0200050b, ; uint32_t type_token_id
		i32 1342; uint32_t java_map_index
	}, ; 614
	%struct.TypeMapModuleEntry {
		i32 u0x0200050d, ; uint32_t type_token_id
		i32 239; uint32_t java_map_index
	}, ; 615
	%struct.TypeMapModuleEntry {
		i32 u0x0200050e, ; uint32_t type_token_id
		i32 790; uint32_t java_map_index
	}, ; 616
	%struct.TypeMapModuleEntry {
		i32 u0x02000510, ; uint32_t type_token_id
		i32 1358; uint32_t java_map_index
	}, ; 617
	%struct.TypeMapModuleEntry {
		i32 u0x02000514, ; uint32_t type_token_id
		i32 690; uint32_t java_map_index
	}, ; 618
	%struct.TypeMapModuleEntry {
		i32 u0x02000516, ; uint32_t type_token_id
		i32 1182; uint32_t java_map_index
	}, ; 619
	%struct.TypeMapModuleEntry {
		i32 u0x02000517, ; uint32_t type_token_id
		i32 367; uint32_t java_map_index
	}, ; 620
	%struct.TypeMapModuleEntry {
		i32 u0x02000518, ; uint32_t type_token_id
		i32 190; uint32_t java_map_index
	}, ; 621
	%struct.TypeMapModuleEntry {
		i32 u0x02000519, ; uint32_t type_token_id
		i32 1658; uint32_t java_map_index
	}, ; 622
	%struct.TypeMapModuleEntry {
		i32 u0x0200051a, ; uint32_t type_token_id
		i32 1761; uint32_t java_map_index
	}, ; 623
	%struct.TypeMapModuleEntry {
		i32 u0x0200051c, ; uint32_t type_token_id
		i32 575; uint32_t java_map_index
	}, ; 624
	%struct.TypeMapModuleEntry {
		i32 u0x0200051d, ; uint32_t type_token_id
		i32 921; uint32_t java_map_index
	}, ; 625
	%struct.TypeMapModuleEntry {
		i32 u0x0200051e, ; uint32_t type_token_id
		i32 1521; uint32_t java_map_index
	}, ; 626
	%struct.TypeMapModuleEntry {
		i32 u0x0200051f, ; uint32_t type_token_id
		i32 1086; uint32_t java_map_index
	}, ; 627
	%struct.TypeMapModuleEntry {
		i32 u0x02000520, ; uint32_t type_token_id
		i32 571; uint32_t java_map_index
	}, ; 628
	%struct.TypeMapModuleEntry {
		i32 u0x02000522, ; uint32_t type_token_id
		i32 1015; uint32_t java_map_index
	}, ; 629
	%struct.TypeMapModuleEntry {
		i32 u0x02000523, ; uint32_t type_token_id
		i32 328; uint32_t java_map_index
	}, ; 630
	%struct.TypeMapModuleEntry {
		i32 u0x02000524, ; uint32_t type_token_id
		i32 743; uint32_t java_map_index
	}, ; 631
	%struct.TypeMapModuleEntry {
		i32 u0x02000525, ; uint32_t type_token_id
		i32 1500; uint32_t java_map_index
	}, ; 632
	%struct.TypeMapModuleEntry {
		i32 u0x02000526, ; uint32_t type_token_id
		i32 679; uint32_t java_map_index
	}, ; 633
	%struct.TypeMapModuleEntry {
		i32 u0x02000527, ; uint32_t type_token_id
		i32 1662; uint32_t java_map_index
	}, ; 634
	%struct.TypeMapModuleEntry {
		i32 u0x02000529, ; uint32_t type_token_id
		i32 35; uint32_t java_map_index
	}, ; 635
	%struct.TypeMapModuleEntry {
		i32 u0x0200052a, ; uint32_t type_token_id
		i32 1227; uint32_t java_map_index
	}, ; 636
	%struct.TypeMapModuleEntry {
		i32 u0x02000539, ; uint32_t type_token_id
		i32 807; uint32_t java_map_index
	} ; 637
], align 4

@module40_managed_to_java_duplicates = internal dso_local constant [245 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x020000c6, ; uint32_t type_token_id
		i32 1231; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x020000ca, ; uint32_t type_token_id
		i32 1745; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x020000cc, ; uint32_t type_token_id
		i32 302; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x020000cf, ; uint32_t type_token_id
		i32 236; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x020000d1, ; uint32_t type_token_id
		i32 550; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x020000d3, ; uint32_t type_token_id
		i32 1630; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x020000d5, ; uint32_t type_token_id
		i32 947; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x020000d7, ; uint32_t type_token_id
		i32 1130; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x020000d9, ; uint32_t type_token_id
		i32 1504; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x020000db, ; uint32_t type_token_id
		i32 1273; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x020000df, ; uint32_t type_token_id
		i32 1165; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x020000e2, ; uint32_t type_token_id
		i32 1463; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x020000e4, ; uint32_t type_token_id
		i32 1137; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x020000e7, ; uint32_t type_token_id
		i32 129; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x020000e8, ; uint32_t type_token_id
		i32 1637; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x020000ea, ; uint32_t type_token_id
		i32 1780; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x020000ec, ; uint32_t type_token_id
		i32 573; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x020000ee, ; uint32_t type_token_id
		i32 561; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x020000f1, ; uint32_t type_token_id
		i32 346; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x020000f5, ; uint32_t type_token_id
		i32 1243; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x020000f7, ; uint32_t type_token_id
		i32 1541; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x020000fb, ; uint32_t type_token_id
		i32 276; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x020000fd, ; uint32_t type_token_id
		i32 832; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x020000ff, ; uint32_t type_token_id
		i32 574; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000104, ; uint32_t type_token_id
		i32 1524; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000107, ; uint32_t type_token_id
		i32 538; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x0200010a, ; uint32_t type_token_id
		i32 1286; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x0200010d, ; uint32_t type_token_id
		i32 1437; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000111, ; uint32_t type_token_id
		i32 515; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000119, ; uint32_t type_token_id
		i32 749; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x0200011b, ; uint32_t type_token_id
		i32 1609; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200012b, ; uint32_t type_token_id
		i32 325; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x0200012d, ; uint32_t type_token_id
		i32 455; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x02000130, ; uint32_t type_token_id
		i32 1352; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000133, ; uint32_t type_token_id
		i32 0; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000135, ; uint32_t type_token_id
		i32 1246; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x02000138, ; uint32_t type_token_id
		i32 1767; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x0200013c, ; uint32_t type_token_id
		i32 1570; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x0200013e, ; uint32_t type_token_id
		i32 820; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x0200013f, ; uint32_t type_token_id
		i32 308; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x02000149, ; uint32_t type_token_id
		i32 1778; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x02000151, ; uint32_t type_token_id
		i32 317; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x02000152, ; uint32_t type_token_id
		i32 308; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x02000153, ; uint32_t type_token_id
		i32 688; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x02000154, ; uint32_t type_token_id
		i32 688; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x0200015a, ; uint32_t type_token_id
		i32 1782; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x02000160, ; uint32_t type_token_id
		i32 1362; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x02000165, ; uint32_t type_token_id
		i32 1000; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x0200016a, ; uint32_t type_token_id
		i32 77; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x0200016c, ; uint32_t type_token_id
		i32 1537; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x0200016e, ; uint32_t type_token_id
		i32 1022; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x02000170, ; uint32_t type_token_id
		i32 110; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x02000176, ; uint32_t type_token_id
		i32 1073; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x02000178, ; uint32_t type_token_id
		i32 1307; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x02000181, ; uint32_t type_token_id
		i32 895; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x02000192, ; uint32_t type_token_id
		i32 830; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x0200019a, ; uint32_t type_token_id
		i32 210; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x020001ab, ; uint32_t type_token_id
		i32 1668; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x020001ae, ; uint32_t type_token_id
		i32 1071; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x020001b2, ; uint32_t type_token_id
		i32 89; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x020001b4, ; uint32_t type_token_id
		i32 1563; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x020001b7, ; uint32_t type_token_id
		i32 1064; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x020001ba, ; uint32_t type_token_id
		i32 977; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020001bd, ; uint32_t type_token_id
		i32 542; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020001bf, ; uint32_t type_token_id
		i32 1159; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020001c3, ; uint32_t type_token_id
		i32 862; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020001c9, ; uint32_t type_token_id
		i32 106; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020001d3, ; uint32_t type_token_id
		i32 31; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x020001d5, ; uint32_t type_token_id
		i32 906; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x020001d8, ; uint32_t type_token_id
		i32 922; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x020001da, ; uint32_t type_token_id
		i32 1035; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x020001dc, ; uint32_t type_token_id
		i32 324; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x020001de, ; uint32_t type_token_id
		i32 139; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x020001e6, ; uint32_t type_token_id
		i32 1555; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x020001e9, ; uint32_t type_token_id
		i32 384; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x020001eb, ; uint32_t type_token_id
		i32 349; uint32_t java_map_index
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 u0x020001ed, ; uint32_t type_token_id
		i32 200; uint32_t java_map_index
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 u0x020001ef, ; uint32_t type_token_id
		i32 431; uint32_t java_map_index
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 u0x020001f4, ; uint32_t type_token_id
		i32 227; uint32_t java_map_index
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 u0x020001fd, ; uint32_t type_token_id
		i32 164; uint32_t java_map_index
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 u0x02000209, ; uint32_t type_token_id
		i32 1763; uint32_t java_map_index
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 u0x0200020b, ; uint32_t type_token_id
		i32 526; uint32_t java_map_index
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 u0x0200020d, ; uint32_t type_token_id
		i32 221; uint32_t java_map_index
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 u0x0200020f, ; uint32_t type_token_id
		i32 1046; uint32_t java_map_index
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 u0x02000211, ; uint32_t type_token_id
		i32 1527; uint32_t java_map_index
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 u0x02000220, ; uint32_t type_token_id
		i32 1203; uint32_t java_map_index
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 u0x02000221, ; uint32_t type_token_id
		i32 1128; uint32_t java_map_index
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 u0x0200022f, ; uint32_t type_token_id
		i32 156; uint32_t java_map_index
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 u0x02000233, ; uint32_t type_token_id
		i32 454; uint32_t java_map_index
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 u0x02000237, ; uint32_t type_token_id
		i32 211; uint32_t java_map_index
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 u0x0200023b, ; uint32_t type_token_id
		i32 523; uint32_t java_map_index
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 u0x0200023d, ; uint32_t type_token_id
		i32 383; uint32_t java_map_index
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 u0x0200023f, ; uint32_t type_token_id
		i32 1104; uint32_t java_map_index
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 u0x02000246, ; uint32_t type_token_id
		i32 1124; uint32_t java_map_index
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 u0x0200024b, ; uint32_t type_token_id
		i32 1392; uint32_t java_map_index
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 u0x0200024e, ; uint32_t type_token_id
		i32 1584; uint32_t java_map_index
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 u0x02000250, ; uint32_t type_token_id
		i32 38; uint32_t java_map_index
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 u0x02000254, ; uint32_t type_token_id
		i32 1669; uint32_t java_map_index
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 u0x02000256, ; uint32_t type_token_id
		i32 498; uint32_t java_map_index
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 u0x0200025a, ; uint32_t type_token_id
		i32 137; uint32_t java_map_index
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 u0x0200025e, ; uint32_t type_token_id
		i32 441; uint32_t java_map_index
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 u0x02000262, ; uint32_t type_token_id
		i32 1591; uint32_t java_map_index
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 u0x0200027b, ; uint32_t type_token_id
		i32 1608; uint32_t java_map_index
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 u0x0200027e, ; uint32_t type_token_id
		i32 1574; uint32_t java_map_index
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 u0x02000281, ; uint32_t type_token_id
		i32 815; uint32_t java_map_index
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 u0x02000282, ; uint32_t type_token_id
		i32 973; uint32_t java_map_index
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 u0x02000285, ; uint32_t type_token_id
		i32 629; uint32_t java_map_index
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 u0x02000293, ; uint32_t type_token_id
		i32 1742; uint32_t java_map_index
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 u0x02000295, ; uint32_t type_token_id
		i32 436; uint32_t java_map_index
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 u0x02000299, ; uint32_t type_token_id
		i32 332; uint32_t java_map_index
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 u0x0200029b, ; uint32_t type_token_id
		i32 1518; uint32_t java_map_index
	}, ; 110
	%struct.TypeMapModuleEntry {
		i32 u0x0200029e, ; uint32_t type_token_id
		i32 348; uint32_t java_map_index
	}, ; 111
	%struct.TypeMapModuleEntry {
		i32 u0x020002a0, ; uint32_t type_token_id
		i32 445; uint32_t java_map_index
	}, ; 112
	%struct.TypeMapModuleEntry {
		i32 u0x020002a2, ; uint32_t type_token_id
		i32 706; uint32_t java_map_index
	}, ; 113
	%struct.TypeMapModuleEntry {
		i32 u0x020002a5, ; uint32_t type_token_id
		i32 1410; uint32_t java_map_index
	}, ; 114
	%struct.TypeMapModuleEntry {
		i32 u0x020002a8, ; uint32_t type_token_id
		i32 241; uint32_t java_map_index
	}, ; 115
	%struct.TypeMapModuleEntry {
		i32 u0x020002aa, ; uint32_t type_token_id
		i32 1330; uint32_t java_map_index
	}, ; 116
	%struct.TypeMapModuleEntry {
		i32 u0x020002ac, ; uint32_t type_token_id
		i32 659; uint32_t java_map_index
	}, ; 117
	%struct.TypeMapModuleEntry {
		i32 u0x020002ae, ; uint32_t type_token_id
		i32 518; uint32_t java_map_index
	}, ; 118
	%struct.TypeMapModuleEntry {
		i32 u0x020002b0, ; uint32_t type_token_id
		i32 1393; uint32_t java_map_index
	}, ; 119
	%struct.TypeMapModuleEntry {
		i32 u0x020002b2, ; uint32_t type_token_id
		i32 989; uint32_t java_map_index
	}, ; 120
	%struct.TypeMapModuleEntry {
		i32 u0x020002b4, ; uint32_t type_token_id
		i32 430; uint32_t java_map_index
	}, ; 121
	%struct.TypeMapModuleEntry {
		i32 u0x020002b6, ; uint32_t type_token_id
		i32 1332; uint32_t java_map_index
	}, ; 122
	%struct.TypeMapModuleEntry {
		i32 u0x020002b8, ; uint32_t type_token_id
		i32 189; uint32_t java_map_index
	}, ; 123
	%struct.TypeMapModuleEntry {
		i32 u0x020002bb, ; uint32_t type_token_id
		i32 166; uint32_t java_map_index
	}, ; 124
	%struct.TypeMapModuleEntry {
		i32 u0x020002bc, ; uint32_t type_token_id
		i32 126; uint32_t java_map_index
	}, ; 125
	%struct.TypeMapModuleEntry {
		i32 u0x020002be, ; uint32_t type_token_id
		i32 600; uint32_t java_map_index
	}, ; 126
	%struct.TypeMapModuleEntry {
		i32 u0x020002c5, ; uint32_t type_token_id
		i32 375; uint32_t java_map_index
	}, ; 127
	%struct.TypeMapModuleEntry {
		i32 u0x020002cf, ; uint32_t type_token_id
		i32 53; uint32_t java_map_index
	}, ; 128
	%struct.TypeMapModuleEntry {
		i32 u0x020002d3, ; uint32_t type_token_id
		i32 811; uint32_t java_map_index
	}, ; 129
	%struct.TypeMapModuleEntry {
		i32 u0x020002e4, ; uint32_t type_token_id
		i32 86; uint32_t java_map_index
	}, ; 130
	%struct.TypeMapModuleEntry {
		i32 u0x020002ea, ; uint32_t type_token_id
		i32 898; uint32_t java_map_index
	}, ; 131
	%struct.TypeMapModuleEntry {
		i32 u0x020002f3, ; uint32_t type_token_id
		i32 437; uint32_t java_map_index
	}, ; 132
	%struct.TypeMapModuleEntry {
		i32 u0x020002f7, ; uint32_t type_token_id
		i32 1530; uint32_t java_map_index
	}, ; 133
	%struct.TypeMapModuleEntry {
		i32 u0x020002f8, ; uint32_t type_token_id
		i32 1263; uint32_t java_map_index
	}, ; 134
	%struct.TypeMapModuleEntry {
		i32 u0x02000300, ; uint32_t type_token_id
		i32 422; uint32_t java_map_index
	}, ; 135
	%struct.TypeMapModuleEntry {
		i32 u0x02000304, ; uint32_t type_token_id
		i32 391; uint32_t java_map_index
	}, ; 136
	%struct.TypeMapModuleEntry {
		i32 u0x0200030c, ; uint32_t type_token_id
		i32 171; uint32_t java_map_index
	}, ; 137
	%struct.TypeMapModuleEntry {
		i32 u0x02000310, ; uint32_t type_token_id
		i32 471; uint32_t java_map_index
	}, ; 138
	%struct.TypeMapModuleEntry {
		i32 u0x02000313, ; uint32_t type_token_id
		i32 1205; uint32_t java_map_index
	}, ; 139
	%struct.TypeMapModuleEntry {
		i32 u0x0200031f, ; uint32_t type_token_id
		i32 1568; uint32_t java_map_index
	}, ; 140
	%struct.TypeMapModuleEntry {
		i32 u0x02000322, ; uint32_t type_token_id
		i32 408; uint32_t java_map_index
	}, ; 141
	%struct.TypeMapModuleEntry {
		i32 u0x02000328, ; uint32_t type_token_id
		i32 1019; uint32_t java_map_index
	}, ; 142
	%struct.TypeMapModuleEntry {
		i32 u0x02000330, ; uint32_t type_token_id
		i32 400; uint32_t java_map_index
	}, ; 143
	%struct.TypeMapModuleEntry {
		i32 u0x02000355, ; uint32_t type_token_id
		i32 1389; uint32_t java_map_index
	}, ; 144
	%struct.TypeMapModuleEntry {
		i32 u0x0200035b, ; uint32_t type_token_id
		i32 93; uint32_t java_map_index
	}, ; 145
	%struct.TypeMapModuleEntry {
		i32 u0x02000360, ; uint32_t type_token_id
		i32 856; uint32_t java_map_index
	}, ; 146
	%struct.TypeMapModuleEntry {
		i32 u0x02000364, ; uint32_t type_token_id
		i32 1748; uint32_t java_map_index
	}, ; 147
	%struct.TypeMapModuleEntry {
		i32 u0x0200037d, ; uint32_t type_token_id
		i32 540; uint32_t java_map_index
	}, ; 148
	%struct.TypeMapModuleEntry {
		i32 u0x02000380, ; uint32_t type_token_id
		i32 1284; uint32_t java_map_index
	}, ; 149
	%struct.TypeMapModuleEntry {
		i32 u0x02000381, ; uint32_t type_token_id
		i32 1197; uint32_t java_map_index
	}, ; 150
	%struct.TypeMapModuleEntry {
		i32 u0x02000386, ; uint32_t type_token_id
		i32 1623; uint32_t java_map_index
	}, ; 151
	%struct.TypeMapModuleEntry {
		i32 u0x02000387, ; uint32_t type_token_id
		i32 674; uint32_t java_map_index
	}, ; 152
	%struct.TypeMapModuleEntry {
		i32 u0x0200038a, ; uint32_t type_token_id
		i32 1001; uint32_t java_map_index
	}, ; 153
	%struct.TypeMapModuleEntry {
		i32 u0x0200038c, ; uint32_t type_token_id
		i32 1207; uint32_t java_map_index
	}, ; 154
	%struct.TypeMapModuleEntry {
		i32 u0x020003c4, ; uint32_t type_token_id
		i32 112; uint32_t java_map_index
	}, ; 155
	%struct.TypeMapModuleEntry {
		i32 u0x020003cb, ; uint32_t type_token_id
		i32 818; uint32_t java_map_index
	}, ; 156
	%struct.TypeMapModuleEntry {
		i32 u0x020003cd, ; uint32_t type_token_id
		i32 773; uint32_t java_map_index
	}, ; 157
	%struct.TypeMapModuleEntry {
		i32 u0x020003d2, ; uint32_t type_token_id
		i32 912; uint32_t java_map_index
	}, ; 158
	%struct.TypeMapModuleEntry {
		i32 u0x020003d8, ; uint32_t type_token_id
		i32 696; uint32_t java_map_index
	}, ; 159
	%struct.TypeMapModuleEntry {
		i32 u0x020003de, ; uint32_t type_token_id
		i32 1479; uint32_t java_map_index
	}, ; 160
	%struct.TypeMapModuleEntry {
		i32 u0x020003e8, ; uint32_t type_token_id
		i32 670; uint32_t java_map_index
	}, ; 161
	%struct.TypeMapModuleEntry {
		i32 u0x020003ed, ; uint32_t type_token_id
		i32 864; uint32_t java_map_index
	}, ; 162
	%struct.TypeMapModuleEntry {
		i32 u0x020003ef, ; uint32_t type_token_id
		i32 1485; uint32_t java_map_index
	}, ; 163
	%struct.TypeMapModuleEntry {
		i32 u0x020003f0, ; uint32_t type_token_id
		i32 822; uint32_t java_map_index
	}, ; 164
	%struct.TypeMapModuleEntry {
		i32 u0x020003f4, ; uint32_t type_token_id
		i32 84; uint32_t java_map_index
	}, ; 165
	%struct.TypeMapModuleEntry {
		i32 u0x020003f7, ; uint32_t type_token_id
		i32 365; uint32_t java_map_index
	}, ; 166
	%struct.TypeMapModuleEntry {
		i32 u0x020003fb, ; uint32_t type_token_id
		i32 99; uint32_t java_map_index
	}, ; 167
	%struct.TypeMapModuleEntry {
		i32 u0x020003fe, ; uint32_t type_token_id
		i32 1503; uint32_t java_map_index
	}, ; 168
	%struct.TypeMapModuleEntry {
		i32 u0x02000400, ; uint32_t type_token_id
		i32 1586; uint32_t java_map_index
	}, ; 169
	%struct.TypeMapModuleEntry {
		i32 u0x02000403, ; uint32_t type_token_id
		i32 1225; uint32_t java_map_index
	}, ; 170
	%struct.TypeMapModuleEntry {
		i32 u0x02000406, ; uint32_t type_token_id
		i32 517; uint32_t java_map_index
	}, ; 171
	%struct.TypeMapModuleEntry {
		i32 u0x0200040a, ; uint32_t type_token_id
		i32 557; uint32_t java_map_index
	}, ; 172
	%struct.TypeMapModuleEntry {
		i32 u0x0200040c, ; uint32_t type_token_id
		i32 368; uint32_t java_map_index
	}, ; 173
	%struct.TypeMapModuleEntry {
		i32 u0x0200040e, ; uint32_t type_token_id
		i32 1624; uint32_t java_map_index
	}, ; 174
	%struct.TypeMapModuleEntry {
		i32 u0x02000410, ; uint32_t type_token_id
		i32 1145; uint32_t java_map_index
	}, ; 175
	%struct.TypeMapModuleEntry {
		i32 u0x02000419, ; uint32_t type_token_id
		i32 490; uint32_t java_map_index
	}, ; 176
	%struct.TypeMapModuleEntry {
		i32 u0x02000429, ; uint32_t type_token_id
		i32 1040; uint32_t java_map_index
	}, ; 177
	%struct.TypeMapModuleEntry {
		i32 u0x0200043d, ; uint32_t type_token_id
		i32 782; uint32_t java_map_index
	}, ; 178
	%struct.TypeMapModuleEntry {
		i32 u0x02000441, ; uint32_t type_token_id
		i32 370; uint32_t java_map_index
	}, ; 179
	%struct.TypeMapModuleEntry {
		i32 u0x02000454, ; uint32_t type_token_id
		i32 950; uint32_t java_map_index
	}, ; 180
	%struct.TypeMapModuleEntry {
		i32 u0x02000458, ; uint32_t type_token_id
		i32 73; uint32_t java_map_index
	}, ; 181
	%struct.TypeMapModuleEntry {
		i32 u0x02000461, ; uint32_t type_token_id
		i32 1260; uint32_t java_map_index
	}, ; 182
	%struct.TypeMapModuleEntry {
		i32 u0x02000467, ; uint32_t type_token_id
		i32 219; uint32_t java_map_index
	}, ; 183
	%struct.TypeMapModuleEntry {
		i32 u0x02000469, ; uint32_t type_token_id
		i32 309; uint32_t java_map_index
	}, ; 184
	%struct.TypeMapModuleEntry {
		i32 u0x0200046d, ; uint32_t type_token_id
		i32 1184; uint32_t java_map_index
	}, ; 185
	%struct.TypeMapModuleEntry {
		i32 u0x02000473, ; uint32_t type_token_id
		i32 1154; uint32_t java_map_index
	}, ; 186
	%struct.TypeMapModuleEntry {
		i32 u0x02000479, ; uint32_t type_token_id
		i32 447; uint32_t java_map_index
	}, ; 187
	%struct.TypeMapModuleEntry {
		i32 u0x0200047b, ; uint32_t type_token_id
		i32 879; uint32_t java_map_index
	}, ; 188
	%struct.TypeMapModuleEntry {
		i32 u0x0200047d, ; uint32_t type_token_id
		i32 356; uint32_t java_map_index
	}, ; 189
	%struct.TypeMapModuleEntry {
		i32 u0x0200047f, ; uint32_t type_token_id
		i32 1777; uint32_t java_map_index
	}, ; 190
	%struct.TypeMapModuleEntry {
		i32 u0x02000484, ; uint32_t type_token_id
		i32 1719; uint32_t java_map_index
	}, ; 191
	%struct.TypeMapModuleEntry {
		i32 u0x02000486, ; uint32_t type_token_id
		i32 131; uint32_t java_map_index
	}, ; 192
	%struct.TypeMapModuleEntry {
		i32 u0x02000489, ; uint32_t type_token_id
		i32 124; uint32_t java_map_index
	}, ; 193
	%struct.TypeMapModuleEntry {
		i32 u0x0200048b, ; uint32_t type_token_id
		i32 1160; uint32_t java_map_index
	}, ; 194
	%struct.TypeMapModuleEntry {
		i32 u0x0200048d, ; uint32_t type_token_id
		i32 569; uint32_t java_map_index
	}, ; 195
	%struct.TypeMapModuleEntry {
		i32 u0x02000490, ; uint32_t type_token_id
		i32 176; uint32_t java_map_index
	}, ; 196
	%struct.TypeMapModuleEntry {
		i32 u0x02000492, ; uint32_t type_token_id
		i32 1240; uint32_t java_map_index
	}, ; 197
	%struct.TypeMapModuleEntry {
		i32 u0x02000494, ; uint32_t type_token_id
		i32 1535; uint32_t java_map_index
	}, ; 198
	%struct.TypeMapModuleEntry {
		i32 u0x02000496, ; uint32_t type_token_id
		i32 1627; uint32_t java_map_index
	}, ; 199
	%struct.TypeMapModuleEntry {
		i32 u0x0200049c, ; uint32_t type_token_id
		i32 1652; uint32_t java_map_index
	}, ; 200
	%struct.TypeMapModuleEntry {
		i32 u0x0200049e, ; uint32_t type_token_id
		i32 937; uint32_t java_map_index
	}, ; 201
	%struct.TypeMapModuleEntry {
		i32 u0x020004a2, ; uint32_t type_token_id
		i32 664; uint32_t java_map_index
	}, ; 202
	%struct.TypeMapModuleEntry {
		i32 u0x020004a4, ; uint32_t type_token_id
		i32 1143; uint32_t java_map_index
	}, ; 203
	%struct.TypeMapModuleEntry {
		i32 u0x020004a8, ; uint32_t type_token_id
		i32 1458; uint32_t java_map_index
	}, ; 204
	%struct.TypeMapModuleEntry {
		i32 u0x020004ab, ; uint32_t type_token_id
		i32 484; uint32_t java_map_index
	}, ; 205
	%struct.TypeMapModuleEntry {
		i32 u0x020004ae, ; uint32_t type_token_id
		i32 1725; uint32_t java_map_index
	}, ; 206
	%struct.TypeMapModuleEntry {
		i32 u0x020004b0, ; uint32_t type_token_id
		i32 534; uint32_t java_map_index
	}, ; 207
	%struct.TypeMapModuleEntry {
		i32 u0x020004b2, ; uint32_t type_token_id
		i32 203; uint32_t java_map_index
	}, ; 208
	%struct.TypeMapModuleEntry {
		i32 u0x020004b3, ; uint32_t type_token_id
		i32 1748; uint32_t java_map_index
	}, ; 209
	%struct.TypeMapModuleEntry {
		i32 u0x020004b4, ; uint32_t type_token_id
		i32 1389; uint32_t java_map_index
	}, ; 210
	%struct.TypeMapModuleEntry {
		i32 u0x020004b5, ; uint32_t type_token_id
		i32 1389; uint32_t java_map_index
	}, ; 211
	%struct.TypeMapModuleEntry {
		i32 u0x020004b7, ; uint32_t type_token_id
		i32 661; uint32_t java_map_index
	}, ; 212
	%struct.TypeMapModuleEntry {
		i32 u0x020004b9, ; uint32_t type_token_id
		i32 1631; uint32_t java_map_index
	}, ; 213
	%struct.TypeMapModuleEntry {
		i32 u0x020004bb, ; uint32_t type_token_id
		i32 778; uint32_t java_map_index
	}, ; 214
	%struct.TypeMapModuleEntry {
		i32 u0x020004bc, ; uint32_t type_token_id
		i32 162; uint32_t java_map_index
	}, ; 215
	%struct.TypeMapModuleEntry {
		i32 u0x020004be, ; uint32_t type_token_id
		i32 11; uint32_t java_map_index
	}, ; 216
	%struct.TypeMapModuleEntry {
		i32 u0x020004c0, ; uint32_t type_token_id
		i32 791; uint32_t java_map_index
	}, ; 217
	%struct.TypeMapModuleEntry {
		i32 u0x020004c2, ; uint32_t type_token_id
		i32 582; uint32_t java_map_index
	}, ; 218
	%struct.TypeMapModuleEntry {
		i32 u0x020004c4, ; uint32_t type_token_id
		i32 985; uint32_t java_map_index
	}, ; 219
	%struct.TypeMapModuleEntry {
		i32 u0x020004c6, ; uint32_t type_token_id
		i32 1370; uint32_t java_map_index
	}, ; 220
	%struct.TypeMapModuleEntry {
		i32 u0x020004cd, ; uint32_t type_token_id
		i32 26; uint32_t java_map_index
	}, ; 221
	%struct.TypeMapModuleEntry {
		i32 u0x020004d1, ; uint32_t type_token_id
		i32 1520; uint32_t java_map_index
	}, ; 222
	%struct.TypeMapModuleEntry {
		i32 u0x020004d3, ; uint32_t type_token_id
		i32 958; uint32_t java_map_index
	}, ; 223
	%struct.TypeMapModuleEntry {
		i32 u0x020004d5, ; uint32_t type_token_id
		i32 1551; uint32_t java_map_index
	}, ; 224
	%struct.TypeMapModuleEntry {
		i32 u0x020004d7, ; uint32_t type_token_id
		i32 69; uint32_t java_map_index
	}, ; 225
	%struct.TypeMapModuleEntry {
		i32 u0x020004d9, ; uint32_t type_token_id
		i32 1069; uint32_t java_map_index
	}, ; 226
	%struct.TypeMapModuleEntry {
		i32 u0x020004db, ; uint32_t type_token_id
		i32 1004; uint32_t java_map_index
	}, ; 227
	%struct.TypeMapModuleEntry {
		i32 u0x020004dd, ; uint32_t type_token_id
		i32 229; uint32_t java_map_index
	}, ; 228
	%struct.TypeMapModuleEntry {
		i32 u0x020004df, ; uint32_t type_token_id
		i32 1711; uint32_t java_map_index
	}, ; 229
	%struct.TypeMapModuleEntry {
		i32 u0x020004e1, ; uint32_t type_token_id
		i32 1470; uint32_t java_map_index
	}, ; 230
	%struct.TypeMapModuleEntry {
		i32 u0x020004e4, ; uint32_t type_token_id
		i32 1368; uint32_t java_map_index
	}, ; 231
	%struct.TypeMapModuleEntry {
		i32 u0x020004e6, ; uint32_t type_token_id
		i32 1550; uint32_t java_map_index
	}, ; 232
	%struct.TypeMapModuleEntry {
		i32 u0x020004e8, ; uint32_t type_token_id
		i32 1684; uint32_t java_map_index
	}, ; 233
	%struct.TypeMapModuleEntry {
		i32 u0x020004ea, ; uint32_t type_token_id
		i32 446; uint32_t java_map_index
	}, ; 234
	%struct.TypeMapModuleEntry {
		i32 u0x02000507, ; uint32_t type_token_id
		i32 795; uint32_t java_map_index
	}, ; 235
	%struct.TypeMapModuleEntry {
		i32 u0x0200050a, ; uint32_t type_token_id
		i32 374; uint32_t java_map_index
	}, ; 236
	%struct.TypeMapModuleEntry {
		i32 u0x0200050c, ; uint32_t type_token_id
		i32 1342; uint32_t java_map_index
	}, ; 237
	%struct.TypeMapModuleEntry {
		i32 u0x0200050f, ; uint32_t type_token_id
		i32 790; uint32_t java_map_index
	}, ; 238
	%struct.TypeMapModuleEntry {
		i32 u0x02000511, ; uint32_t type_token_id
		i32 1358; uint32_t java_map_index
	}, ; 239
	%struct.TypeMapModuleEntry {
		i32 u0x02000512, ; uint32_t type_token_id
		i32 917; uint32_t java_map_index
	}, ; 240
	%struct.TypeMapModuleEntry {
		i32 u0x02000515, ; uint32_t type_token_id
		i32 690; uint32_t java_map_index
	}, ; 241
	%struct.TypeMapModuleEntry {
		i32 u0x0200051b, ; uint32_t type_token_id
		i32 1761; uint32_t java_map_index
	}, ; 242
	%struct.TypeMapModuleEntry {
		i32 u0x02000521, ; uint32_t type_token_id
		i32 571; uint32_t java_map_index
	}, ; 243
	%struct.TypeMapModuleEntry {
		i32 u0x02000528, ; uint32_t type_token_id
		i32 1662; uint32_t java_map_index
	} ; 244
], align 4

@module41_managed_to_java = internal dso_local constant [85 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000055, ; uint32_t type_token_id
		i32 1267; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000057, ; uint32_t type_token_id
		i32 772; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000058, ; uint32_t type_token_id
		i32 403; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000059, ; uint32_t type_token_id
		i32 67; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 836; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 813; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 226; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200005f, ; uint32_t type_token_id
		i32 40; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000060, ; uint32_t type_token_id
		i32 786; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000062, ; uint32_t type_token_id
		i32 1208; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000063, ; uint32_t type_token_id
		i32 268; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000065, ; uint32_t type_token_id
		i32 805; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000068, ; uint32_t type_token_id
		i32 1755; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 1094; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 847; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 1202; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 1249; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000071, ; uint32_t type_token_id
		i32 923; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000073, ; uint32_t type_token_id
		i32 237; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000075, ; uint32_t type_token_id
		i32 1464; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000077, ; uint32_t type_token_id
		i32 1412; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000079, ; uint32_t type_token_id
		i32 1311; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 901; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 1432; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 966; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 96; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 1152; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000081, ; uint32_t type_token_id
		i32 755; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000083, ; uint32_t type_token_id
		i32 1321; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000084, ; uint32_t type_token_id
		i32 442; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x02000085, ; uint32_t type_token_id
		i32 424; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x02000087, ; uint32_t type_token_id
		i32 762; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x02000089, ; uint32_t type_token_id
		i32 726; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x0200008b, ; uint32_t type_token_id
		i32 1406; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x0200008c, ; uint32_t type_token_id
		i32 485; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 180; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 1066; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x02000091, ; uint32_t type_token_id
		i32 467; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x02000093, ; uint32_t type_token_id
		i32 866; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x02000095, ; uint32_t type_token_id
		i32 1314; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x02000097, ; uint32_t type_token_id
		i32 1099; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x02000099, ; uint32_t type_token_id
		i32 1222; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 1262; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 702; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x0200009c, ; uint32_t type_token_id
		i32 1773; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 440; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x020000a0, ; uint32_t type_token_id
		i32 80; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x020000a2, ; uint32_t type_token_id
		i32 662; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x020000a3, ; uint32_t type_token_id
		i32 1670; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x020000a4, ; uint32_t type_token_id
		i32 501; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x020000a7, ; uint32_t type_token_id
		i32 1196; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x020000a8, ; uint32_t type_token_id
		i32 897; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x020000aa, ; uint32_t type_token_id
		i32 1185; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x020000ac, ; uint32_t type_token_id
		i32 651; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x020000ae, ; uint32_t type_token_id
		i32 1068; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x020000b0, ; uint32_t type_token_id
		i32 1333; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x020000b1, ; uint32_t type_token_id
		i32 1701; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x020000b3, ; uint32_t type_token_id
		i32 18; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x020000b5, ; uint32_t type_token_id
		i32 1054; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x020000b7, ; uint32_t type_token_id
		i32 1013; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x020000b9, ; uint32_t type_token_id
		i32 1572; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x020000bb, ; uint32_t type_token_id
		i32 1612; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x020000bd, ; uint32_t type_token_id
		i32 212; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 1559; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 250; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020000c1, ; uint32_t type_token_id
		i32 269; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 1516; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020000c4, ; uint32_t type_token_id
		i32 680; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x020000c6, ; uint32_t type_token_id
		i32 1361; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x020000c8, ; uint32_t type_token_id
		i32 1405; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x020000ca, ; uint32_t type_token_id
		i32 1492; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x020000cc, ; uint32_t type_token_id
		i32 1172; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x020000cd, ; uint32_t type_token_id
		i32 607; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x020000cf, ; uint32_t type_token_id
		i32 1491; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x020000d0, ; uint32_t type_token_id
		i32 1740; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x020000d2, ; uint32_t type_token_id
		i32 228; uint32_t java_map_index
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 u0x020000d4, ; uint32_t type_token_id
		i32 41; uint32_t java_map_index
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 u0x020000d6, ; uint32_t type_token_id
		i32 330; uint32_t java_map_index
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 u0x020000d8, ; uint32_t type_token_id
		i32 1274; uint32_t java_map_index
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 u0x020000da, ; uint32_t type_token_id
		i32 1523; uint32_t java_map_index
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 u0x020000db, ; uint32_t type_token_id
		i32 554; uint32_t java_map_index
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 u0x020000dd, ; uint32_t type_token_id
		i32 1324; uint32_t java_map_index
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 u0x020000de, ; uint32_t type_token_id
		i32 1357; uint32_t java_map_index
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 u0x020000df, ; uint32_t type_token_id
		i32 930; uint32_t java_map_index
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 u0x020000e1, ; uint32_t type_token_id
		i32 704; uint32_t java_map_index
	} ; 84
], align 4

@module41_managed_to_java_duplicates = internal dso_local constant [55 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200005c, ; uint32_t type_token_id
		i32 813; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 226; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000061, ; uint32_t type_token_id
		i32 786; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000064, ; uint32_t type_token_id
		i32 268; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000066, ; uint32_t type_token_id
		i32 805; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000067, ; uint32_t type_token_id
		i32 1267; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000069, ; uint32_t type_token_id
		i32 1755; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 847; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 1202; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 1249; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000072, ; uint32_t type_token_id
		i32 923; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000074, ; uint32_t type_token_id
		i32 237; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000076, ; uint32_t type_token_id
		i32 1464; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000078, ; uint32_t type_token_id
		i32 1412; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 1311; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000080, ; uint32_t type_token_id
		i32 1152; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000082, ; uint32_t type_token_id
		i32 755; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000086, ; uint32_t type_token_id
		i32 424; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000088, ; uint32_t type_token_id
		i32 762; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 726; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 180; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000090, ; uint32_t type_token_id
		i32 1066; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000092, ; uint32_t type_token_id
		i32 467; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000094, ; uint32_t type_token_id
		i32 866; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000096, ; uint32_t type_token_id
		i32 1314; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000098, ; uint32_t type_token_id
		i32 1099; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x0200009d, ; uint32_t type_token_id
		i32 1773; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 440; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x020000a1, ; uint32_t type_token_id
		i32 80; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x020000a5, ; uint32_t type_token_id
		i32 501; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x020000a6, ; uint32_t type_token_id
		i32 1670; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x020000a9, ; uint32_t type_token_id
		i32 897; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x020000ab, ; uint32_t type_token_id
		i32 1185; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x020000ad, ; uint32_t type_token_id
		i32 651; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x020000af, ; uint32_t type_token_id
		i32 1068; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x020000b2, ; uint32_t type_token_id
		i32 1701; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x020000b4, ; uint32_t type_token_id
		i32 18; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x020000b6, ; uint32_t type_token_id
		i32 1054; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x020000b8, ; uint32_t type_token_id
		i32 1013; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x020000ba, ; uint32_t type_token_id
		i32 1572; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x020000bc, ; uint32_t type_token_id
		i32 1612; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x020000be, ; uint32_t type_token_id
		i32 212; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x020000c3, ; uint32_t type_token_id
		i32 1516; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x020000c5, ; uint32_t type_token_id
		i32 680; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x020000c7, ; uint32_t type_token_id
		i32 1361; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x020000c9, ; uint32_t type_token_id
		i32 1405; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x020000cb, ; uint32_t type_token_id
		i32 1492; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x020000ce, ; uint32_t type_token_id
		i32 607; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x020000d1, ; uint32_t type_token_id
		i32 1740; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x020000d3, ; uint32_t type_token_id
		i32 228; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x020000d5, ; uint32_t type_token_id
		i32 41; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x020000d7, ; uint32_t type_token_id
		i32 330; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x020000d9, ; uint32_t type_token_id
		i32 1274; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x020000dc, ; uint32_t type_token_id
		i32 554; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x020000e0, ; uint32_t type_token_id
		i32 930; uint32_t java_map_index
	} ; 54
], align 4

@module42_managed_to_java = internal dso_local constant [76 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x020000a2, ; uint32_t type_token_id
		i32 586; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x020000a3, ; uint32_t type_token_id
		i32 994; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x020000a4, ; uint32_t type_token_id
		i32 1255; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x020000be, ; uint32_t type_token_id
		i32 1699; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 999; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200011f, ; uint32_t type_token_id
		i32 1417; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000121, ; uint32_t type_token_id
		i32 1648; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000123, ; uint32_t type_token_id
		i32 870; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000125, ; uint32_t type_token_id
		i32 1496; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000126, ; uint32_t type_token_id
		i32 653; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000127, ; uint32_t type_token_id
		i32 488; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000129, ; uint32_t type_token_id
		i32 1355; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200012a, ; uint32_t type_token_id
		i32 578; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200012b, ; uint32_t type_token_id
		i32 1752; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200012c, ; uint32_t type_token_id
		i32 1482; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200012d, ; uint32_t type_token_id
		i32 1560; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x0200012e, ; uint32_t type_token_id
		i32 1079; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200012f, ; uint32_t type_token_id
		i32 1009; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000130, ; uint32_t type_token_id
		i32 1256; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000135, ; uint32_t type_token_id
		i32 264; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200013c, ; uint32_t type_token_id
		i32 831; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000141, ; uint32_t type_token_id
		i32 792; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000142, ; uint32_t type_token_id
		i32 1163; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000153, ; uint32_t type_token_id
		i32 208; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000155, ; uint32_t type_token_id
		i32 1053; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000156, ; uint32_t type_token_id
		i32 259; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000157, ; uint32_t type_token_id
		i32 1085; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000158, ; uint32_t type_token_id
		i32 939; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x0200015a, ; uint32_t type_token_id
		i32 1045; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x0200015b, ; uint32_t type_token_id
		i32 286; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x0200015c, ; uint32_t type_token_id
		i32 703; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200015d, ; uint32_t type_token_id
		i32 495; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x0200015e, ; uint32_t type_token_id
		i32 945; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x0200015f, ; uint32_t type_token_id
		i32 1236; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000160, ; uint32_t type_token_id
		i32 1348; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000161, ; uint32_t type_token_id
		i32 401; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x02000163, ; uint32_t type_token_id
		i32 75; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x02000164, ; uint32_t type_token_id
		i32 1440; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x02000166, ; uint32_t type_token_id
		i32 1775; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x02000167, ; uint32_t type_token_id
		i32 1709; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x02000168, ; uint32_t type_token_id
		i32 952; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x02000169, ; uint32_t type_token_id
		i32 873; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x0200016a, ; uint32_t type_token_id
		i32 583; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x0200016b, ; uint32_t type_token_id
		i32 118; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x0200016c, ; uint32_t type_token_id
		i32 780; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x0200016e, ; uint32_t type_token_id
		i32 934; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x0200016f, ; uint32_t type_token_id
		i32 1415; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x02000170, ; uint32_t type_token_id
		i32 721; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x02000171, ; uint32_t type_token_id
		i32 1753; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x02000174, ; uint32_t type_token_id
		i32 803; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x02000176, ; uint32_t type_token_id
		i32 746; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x02000177, ; uint32_t type_token_id
		i32 684; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x02000179, ; uint32_t type_token_id
		i32 1187; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x0200017c, ; uint32_t type_token_id
		i32 1212; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x02000188, ; uint32_t type_token_id
		i32 717; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x0200018b, ; uint32_t type_token_id
		i32 373; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x02000197, ; uint32_t type_token_id
		i32 738; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x02000251, ; uint32_t type_token_id
		i32 609; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x02000252, ; uint32_t type_token_id
		i32 707; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x02000258, ; uint32_t type_token_id
		i32 122; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x020002a3, ; uint32_t type_token_id
		i32 1736; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x020002cf, ; uint32_t type_token_id
		i32 972; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x020002d4, ; uint32_t type_token_id
		i32 121; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020002d5, ; uint32_t type_token_id
		i32 913; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020002db, ; uint32_t type_token_id
		i32 657; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020002dd, ; uint32_t type_token_id
		i32 81; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020002e1, ; uint32_t type_token_id
		i32 258; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020002ec, ; uint32_t type_token_id
		i32 1539; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x02000333, ; uint32_t type_token_id
		i32 43; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x02000334, ; uint32_t type_token_id
		i32 113; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x02000337, ; uint32_t type_token_id
		i32 128; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x0200034a, ; uint32_t type_token_id
		i32 1369; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x0200034b, ; uint32_t type_token_id
		i32 987; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x0200034d, ; uint32_t type_token_id
		i32 980; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x0200034e, ; uint32_t type_token_id
		i32 907; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x02000361, ; uint32_t type_token_id
		i32 1146; uint32_t java_map_index
	} ; 75
], align 4

@module42_managed_to_java_duplicates = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000120, ; uint32_t type_token_id
		i32 1417; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000122, ; uint32_t type_token_id
		i32 1648; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000124, ; uint32_t type_token_id
		i32 870; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000128, ; uint32_t type_token_id
		i32 488; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000131, ; uint32_t type_token_id
		i32 1256; uint32_t java_map_index
	} ; 4
], align 4

@module43_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000003, ; uint32_t type_token_id
		i32 305; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 1056; uint32_t java_map_index
	} ; 1
], align 4

@module43_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 1056; uint32_t java_map_index
	} ; 0
], align 4

@module44_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 1174; uint32_t java_map_index
	} ; 0
], align 4

@module45_managed_to_java = internal dso_local constant [10 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 1037; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 169; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 414; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 143; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 1509; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 854; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 1395; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 1434; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000022, ; uint32_t type_token_id
		i32 549; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 563; uint32_t java_map_index
	} ; 9
], align 4

@module46_managed_to_java = internal dso_local constant [107 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000348, ; uint32_t type_token_id
		i32 265; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000349, ; uint32_t type_token_id
		i32 969; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200034a, ; uint32_t type_token_id
		i32 1598; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200035b, ; uint32_t type_token_id
		i32 1547; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200035c, ; uint32_t type_token_id
		i32 1259; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200035d, ; uint32_t type_token_id
		i32 1076; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200035e, ; uint32_t type_token_id
		i32 799; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200035f, ; uint32_t type_token_id
		i32 516; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000362, ; uint32_t type_token_id
		i32 1751; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000363, ; uint32_t type_token_id
		i32 1506; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000365, ; uint32_t type_token_id
		i32 1011; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000366, ; uint32_t type_token_id
		i32 418; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000369, ; uint32_t type_token_id
		i32 407; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200036c, ; uint32_t type_token_id
		i32 605; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200037a, ; uint32_t type_token_id
		i32 68; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200037b, ; uint32_t type_token_id
		i32 394; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000389, ; uint32_t type_token_id
		i32 415; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200038b, ; uint32_t type_token_id
		i32 306; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200038c, ; uint32_t type_token_id
		i32 656; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200038d, ; uint32_t type_token_id
		i32 204; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200038e, ; uint32_t type_token_id
		i32 1115; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200038f, ; uint32_t type_token_id
		i32 750; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000390, ; uint32_t type_token_id
		i32 1150; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000391, ; uint32_t type_token_id
		i32 817; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000392, ; uint32_t type_token_id
		i32 940; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000393, ; uint32_t type_token_id
		i32 1481; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000394, ; uint32_t type_token_id
		i32 1365; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000395, ; uint32_t type_token_id
		i32 1770; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000396, ; uint32_t type_token_id
		i32 15; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000397, ; uint32_t type_token_id
		i32 1558; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x02000398, ; uint32_t type_token_id
		i32 925; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200039b, ; uint32_t type_token_id
		i32 1378; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x020003a5, ; uint32_t type_token_id
		i32 982; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x020003a6, ; uint32_t type_token_id
		i32 289; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x020003a7, ; uint32_t type_token_id
		i32 1158; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x020003a8, ; uint32_t type_token_id
		i32 244; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x020003a9, ; uint32_t type_token_id
		i32 1057; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x020003aa, ; uint32_t type_token_id
		i32 132; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x020003ab, ; uint32_t type_token_id
		i32 1666; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x020003ac, ; uint32_t type_token_id
		i32 1471; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x020003ae, ; uint32_t type_token_id
		i32 1140; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x020003af, ; uint32_t type_token_id
		i32 1721; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x020003b0, ; uint32_t type_token_id
		i32 979; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x020003b4, ; uint32_t type_token_id
		i32 848; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x020003c0, ; uint32_t type_token_id
		i32 245; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x020003c1, ; uint32_t type_token_id
		i32 604; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x020003c2, ; uint32_t type_token_id
		i32 1483; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x020003c4, ; uint32_t type_token_id
		i32 1707; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x020003c5, ; uint32_t type_token_id
		i32 529; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x020003c6, ; uint32_t type_token_id
		i32 1638; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x020003c7, ; uint32_t type_token_id
		i32 94; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x020003c8, ; uint32_t type_token_id
		i32 13; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x020003c9, ; uint32_t type_token_id
		i32 1656; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x020003ca, ; uint32_t type_token_id
		i32 760; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x020003cb, ; uint32_t type_token_id
		i32 163; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x020003cc, ; uint32_t type_token_id
		i32 255; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x020003cd, ; uint32_t type_token_id
		i32 1671; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x020003ce, ; uint32_t type_token_id
		i32 1497; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x020003cf, ; uint32_t type_token_id
		i32 329; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x020003d1, ; uint32_t type_token_id
		i32 1027; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x020003d2, ; uint32_t type_token_id
		i32 880; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x020003d3, ; uint32_t type_token_id
		i32 326; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x020003d4, ; uint32_t type_token_id
		i32 1397; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020003d6, ; uint32_t type_token_id
		i32 364; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020003de, ; uint32_t type_token_id
		i32 1258; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020003df, ; uint32_t type_token_id
		i32 1480; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020003e0, ; uint32_t type_token_id
		i32 943; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020003e1, ; uint32_t type_token_id
		i32 859; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x020003e2, ; uint32_t type_token_id
		i32 262; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x020003e3, ; uint32_t type_token_id
		i32 421; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x020003e6, ; uint32_t type_token_id
		i32 715; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x020003e7, ; uint32_t type_token_id
		i32 310; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x020003e9, ; uint32_t type_token_id
		i32 142; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x020003ea, ; uint32_t type_token_id
		i32 1765; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x020003ec, ; uint32_t type_token_id
		i32 74; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x020003ed, ; uint32_t type_token_id
		i32 714; uint32_t java_map_index
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 u0x020003ef, ; uint32_t type_token_id
		i32 1636; uint32_t java_map_index
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 u0x020003f3, ; uint32_t type_token_id
		i32 184; uint32_t java_map_index
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 u0x020003f4, ; uint32_t type_token_id
		i32 1133; uint32_t java_map_index
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 u0x02000490, ; uint32_t type_token_id
		i32 313; uint32_t java_map_index
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 u0x0200055e, ; uint32_t type_token_id
		i32 177; uint32_t java_map_index
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 u0x020005e5, ; uint32_t type_token_id
		i32 633; uint32_t java_map_index
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 u0x020005eb, ; uint32_t type_token_id
		i32 1269; uint32_t java_map_index
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 u0x020005f7, ; uint32_t type_token_id
		i32 849; uint32_t java_map_index
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 u0x02000602, ; uint32_t type_token_id
		i32 842; uint32_t java_map_index
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 u0x02000604, ; uint32_t type_token_id
		i32 821; uint32_t java_map_index
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 u0x02000605, ; uint32_t type_token_id
		i32 967; uint32_t java_map_index
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 u0x0200060c, ; uint32_t type_token_id
		i32 1467; uint32_t java_map_index
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 u0x0200060f, ; uint32_t type_token_id
		i32 1433; uint32_t java_map_index
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 u0x02000610, ; uint32_t type_token_id
		i32 1093; uint32_t java_map_index
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 u0x02000611, ; uint32_t type_token_id
		i32 1379; uint32_t java_map_index
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 u0x02000614, ; uint32_t type_token_id
		i32 1764; uint32_t java_map_index
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 u0x02000618, ; uint32_t type_token_id
		i32 411; uint32_t java_map_index
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 u0x02000619, ; uint32_t type_token_id
		i32 804; uint32_t java_map_index
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 u0x02000622, ; uint32_t type_token_id
		i32 758; uint32_t java_map_index
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 u0x02000625, ; uint32_t type_token_id
		i32 761; uint32_t java_map_index
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 u0x02000628, ; uint32_t type_token_id
		i32 1534; uint32_t java_map_index
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 u0x0200062e, ; uint32_t type_token_id
		i32 1318; uint32_t java_map_index
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 u0x0200062f, ; uint32_t type_token_id
		i32 114; uint32_t java_map_index
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 u0x02000630, ; uint32_t type_token_id
		i32 186; uint32_t java_map_index
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 u0x02000631, ; uint32_t type_token_id
		i32 777; uint32_t java_map_index
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 u0x02000633, ; uint32_t type_token_id
		i32 438; uint32_t java_map_index
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 u0x02000634, ; uint32_t type_token_id
		i32 1372; uint32_t java_map_index
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 u0x02000697, ; uint32_t type_token_id
		i32 649; uint32_t java_map_index
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 u0x02000699, ; uint32_t type_token_id
		i32 439; uint32_t java_map_index
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 u0x0200069a, ; uint32_t type_token_id
		i32 252; uint32_t java_map_index
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 u0x020006a2, ; uint32_t type_token_id
		i32 1270; uint32_t java_map_index
	} ; 106
], align 4

@module47_managed_to_java = internal dso_local constant [13 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 378; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 606; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 843; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 1106; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 1394; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 838; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 358; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 412; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 272; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 1373; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 21; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 482; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 1305; uint32_t java_map_index
	} ; 12
], align 4

@module47_managed_to_java_duplicates = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 1394; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 358; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 412; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 272; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 1373; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 482; uint32_t java_map_index
	} ; 5
], align 4

@module48_managed_to_java = internal dso_local constant [23 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 628; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 1190; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 178; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 1643; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 545; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 548; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 1567; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 354; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000027, ; uint32_t type_token_id
		i32 6; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 315; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 1716; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000033, ; uint32_t type_token_id
		i32 22; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000034, ; uint32_t type_token_id
		i32 852; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000035, ; uint32_t type_token_id
		i32 479; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000036, ; uint32_t type_token_id
		i32 56; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000038, ; uint32_t type_token_id
		i32 444; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 1287; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 627; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 774; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000040, ; uint32_t type_token_id
		i32 91; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000041, ; uint32_t type_token_id
		i32 552; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000044, ; uint32_t type_token_id
		i32 23; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 1122; uint32_t java_map_index
	} ; 22
], align 4

@module48_managed_to_java_duplicates = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 1190; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000021, ; uint32_t type_token_id
		i32 548; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000025, ; uint32_t type_token_id
		i32 354; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 315; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000037, ; uint32_t type_token_id
		i32 56; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000039, ; uint32_t type_token_id
		i32 444; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 1287; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 774; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000042, ; uint32_t type_token_id
		i32 552; uint32_t java_map_index
	} ; 8
], align 4

@module49_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000002, ; uint32_t type_token_id
		i32 741; uint32_t java_map_index
	} ; 0
], align 4

@module50_managed_to_java = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 731; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 720; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 463; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 828; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 1705; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 1420; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 1261; uint32_t java_map_index
	} ; 6
], align 4

@module50_managed_to_java_duplicates = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 720; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 463; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 1420; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 1705; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 828; uint32_t java_map_index
	} ; 4
], align 4

@module51_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 380; uint32_t java_map_index
	} ; 0
], align 4

@module52_managed_to_java = internal dso_local constant [24 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 1120; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 521; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 1291; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 910; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 207; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 1760; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 153; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 1186; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 809; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 57; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 464; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000021, ; uint32_t type_token_id
		i32 1334; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 193; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 1732; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000026, ; uint32_t type_token_id
		i32 173; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000027, ; uint32_t type_token_id
		i32 588; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 1414; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 1625; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 116; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 1229; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200002f, ; uint32_t type_token_id
		i32 697; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000033, ; uint32_t type_token_id
		i32 1313; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000034, ; uint32_t type_token_id
		i32 419; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000035, ; uint32_t type_token_id
		i32 1578; uint32_t java_map_index
	} ; 23
], align 4

@module52_managed_to_java_duplicates = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 207; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 910; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 809; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 57; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000022, ; uint32_t type_token_id
		i32 1334; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000025, ; uint32_t type_token_id
		i32 1732; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 588; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 1414; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200002e, ; uint32_t type_token_id
		i32 1229; uint32_t java_map_index
	} ; 8
], align 4

@module53_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 1126; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 1621; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 1135; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 920; uint32_t java_map_index
	} ; 3
], align 4

@module53_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 1621; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 1135; uint32_t java_map_index
	} ; 1
], align 4

@module54_managed_to_java = internal dso_local constant [67 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000041, ; uint32_t type_token_id
		i32 665; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000042, ; uint32_t type_token_id
		i32 1252; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000043, ; uint32_t type_token_id
		i32 206; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 1136; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 1191; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000047, ; uint32_t type_token_id
		i32 1309; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 1195; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 1635; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 347; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 339; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 1033; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 710; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 576; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 1235; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000053, ; uint32_t type_token_id
		i32 530; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000054, ; uint32_t type_token_id
		i32 613; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000057, ; uint32_t type_token_id
		i32 1553; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 902; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 1188; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000061, ; uint32_t type_token_id
		i32 556; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000065, ; uint32_t type_token_id
		i32 1384; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000066, ; uint32_t type_token_id
		i32 1587; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000068, ; uint32_t type_token_id
		i32 1781; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000069, ; uint32_t type_token_id
		i32 1757; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 572; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 1597; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 1700; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 531; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000072, ; uint32_t type_token_id
		i32 9; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000078, ; uint32_t type_token_id
		i32 1590; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 1495; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 1167; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 959; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 1; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000082, ; uint32_t type_token_id
		i32 1272; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000086, ; uint32_t type_token_id
		i32 318; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x02000087, ; uint32_t type_token_id
		i32 104; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x02000088, ; uint32_t type_token_id
		i32 669; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 1583; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 1715; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x02000090, ; uint32_t type_token_id
		i32 673; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x02000098, ; uint32_t type_token_id
		i32 256; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x02000099, ; uint32_t type_token_id
		i32 10; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 1020; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x0200009d, ; uint32_t type_token_id
		i32 470; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 1336; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 853; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x020000a0, ; uint32_t type_token_id
		i32 3; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x020000a1, ; uint32_t type_token_id
		i32 1501; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x020000a3, ; uint32_t type_token_id
		i32 97; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x020000a5, ; uint32_t type_token_id
		i32 1693; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x020000a6, ; uint32_t type_token_id
		i32 1329; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x020000a8, ; uint32_t type_token_id
		i32 727; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x020000a9, ; uint32_t type_token_id
		i32 946; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x020000aa, ; uint32_t type_token_id
		i32 61; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x020000ac, ; uint32_t type_token_id
		i32 1065; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x020000ad, ; uint32_t type_token_id
		i32 198; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x020000af, ; uint32_t type_token_id
		i32 1354; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x020000b0, ; uint32_t type_token_id
		i32 1526; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x020000b3, ; uint32_t type_token_id
		i32 1720; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x020000b4, ; uint32_t type_token_id
		i32 1271; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x020000b7, ; uint32_t type_token_id
		i32 1654; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x020000b8, ; uint32_t type_token_id
		i32 30; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020000be, ; uint32_t type_token_id
		i32 90; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 722; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 1614; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020000c3, ; uint32_t type_token_id
		i32 105; uint32_t java_map_index
	} ; 66
], align 4

@module54_managed_to_java_duplicates = internal dso_local constant [25 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000044, ; uint32_t type_token_id
		i32 206; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 1635; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 1235; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000055, ; uint32_t type_token_id
		i32 613; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200005f, ; uint32_t type_token_id
		i32 1188; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000067, ; uint32_t type_token_id
		i32 1587; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 1597; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000071, ; uint32_t type_token_id
		i32 531; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000079, ; uint32_t type_token_id
		i32 1590; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 1495; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 572; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000080, ; uint32_t type_token_id
		i32 1; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000089, ; uint32_t type_token_id
		i32 669; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 1715; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 10; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200009c, ; uint32_t type_token_id
		i32 1020; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x020000a2, ; uint32_t type_token_id
		i32 1501; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x020000a4, ; uint32_t type_token_id
		i32 97; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x020000a7, ; uint32_t type_token_id
		i32 1329; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x020000ab, ; uint32_t type_token_id
		i32 61; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x020000ae, ; uint32_t type_token_id
		i32 198; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x020000b1, ; uint32_t type_token_id
		i32 1526; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x020000b5, ; uint32_t type_token_id
		i32 1271; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 90; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x020000c1, ; uint32_t type_token_id
		i32 722; uint32_t java_map_index
	} ; 24
], align 4

@module55_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 460; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 892; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 597; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 1498; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 1239; uint32_t java_map_index
	} ; 4
], align 4

@module55_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 892; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 597; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 1239; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 1498; uint32_t java_map_index
	} ; 3
], align 4

@module56_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 1067; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 266; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 793; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 1209; uint32_t java_map_index
	} ; 3
], align 4

@module56_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 1067; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 1209; uint32_t java_map_index
	} ; 1
], align 4

; Java to managed map
@map_java = dso_local local_unnamed_addr constant [1783 x %struct.TypeMapJava] [
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 65; uint32_t java_name_index
	}, ; 0
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1740; uint32_t java_name_index
	}, ; 1
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 751; uint32_t java_name_index
	}, ; 2
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x020000a0, ; uint32_t type_token_id
		i32 1754; uint32_t java_name_index
	}, ; 3
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000bb, ; uint32_t type_token_id
		i32 946; uint32_t java_name_index
	}, ; 4
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001f8, ; uint32_t type_token_id
		i32 179; uint32_t java_name_index
	}, ; 5
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x02000027, ; uint32_t type_token_id
		i32 1655; uint32_t java_name_index
	}, ; 6
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000dc, ; uint32_t type_token_id
		i32 12; uint32_t java_name_index
	}, ; 7
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000140, ; uint32_t type_token_id
		i32 71; uint32_t java_name_index
	}, ; 8
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x02000072, ; uint32_t type_token_id
		i32 1735; uint32_t java_name_index
	}, ; 9
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1749; uint32_t java_name_index
	}, ; 10
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 561; uint32_t java_name_index
	}, ; 11
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004ed, ; uint32_t type_token_id
		i32 589; uint32_t java_name_index
	}, ; 12
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003c8, ; uint32_t type_token_id
		i32 1596; uint32_t java_name_index
	}, ; 13
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000a5, ; uint32_t type_token_id
		i32 1135; uint32_t java_name_index
	}, ; 14
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000396, ; uint32_t type_token_id
		i32 1565; uint32_t java_name_index
	}, ; 15
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1200; uint32_t java_name_index
	}, ; 16
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000123, ; uint32_t type_token_id
		i32 54; uint32_t java_name_index
	}, ; 17
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1410; uint32_t java_name_index
	}, ; 18
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002e8, ; uint32_t type_token_id
		i32 301; uint32_t java_name_index
	}, ; 19
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000018, ; uint32_t type_token_id
		i32 641; uint32_t java_name_index
	}, ; 20
	%struct.TypeMapJava {
		i32 47, ; uint32_t module_index
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 1644; uint32_t java_name_index
	}, ; 21
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x02000033, ; uint32_t type_token_id
		i32 1658; uint32_t java_name_index
	}, ; 22
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x02000044, ; uint32_t type_token_id
		i32 1668; uint32_t java_name_index
	}, ; 23
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 1084; uint32_t java_name_index
	}, ; 24
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200038d, ; uint32_t type_token_id
		i32 367; uint32_t java_name_index
	}, ; 25
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004cc, ; uint32_t type_token_id
		i32 570; uint32_t java_name_index
	}, ; 26
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000dd, ; uint32_t type_token_id
		i32 13; uint32_t java_name_index
	}, ; 27
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 747; uint32_t java_name_index
	}, ; 28
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 1095; uint32_t java_name_index
	}, ; 29
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x020000b8, ; uint32_t type_token_id
		i32 1769; uint32_t java_name_index
	}, ; 30
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001d2, ; uint32_t type_token_id
		i32 154; uint32_t java_name_index
	}, ; 31
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 849; uint32_t java_name_index
	}, ; 32
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1187; uint32_t java_name_index
	}, ; 33
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 681; uint32_t java_name_index
	}, ; 34
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000529, ; uint32_t type_token_id
		i32 635; uint32_t java_name_index
	}, ; 35
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 895; uint32_t java_name_index
	}, ; 36
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000054, ; uint32_t type_token_id
		i32 1314; uint32_t java_name_index
	}, ; 37
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 237; uint32_t java_name_index
	}, ; 38
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x02000009, ; uint32_t type_token_id
		i32 853; uint32_t java_name_index
	}, ; 39
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x0200005f, ; uint32_t type_token_id
		i32 1360; uint32_t java_name_index
	}, ; 40
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1429; uint32_t java_name_index
	}, ; 41
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1151; uint32_t java_name_index
	}, ; 42
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000333, ; uint32_t type_token_id
		i32 1503; uint32_t java_name_index
	}, ; 43
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000113, ; uint32_t type_token_id
		i32 1205; uint32_t java_name_index
	}, ; 44
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200041d, ; uint32_t type_token_id
		i32 470; uint32_t java_name_index
	}, ; 45
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200046e, ; uint32_t type_token_id
		i32 512; uint32_t java_name_index
	}, ; 46
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000047, ; uint32_t type_token_id
		i32 1304; uint32_t java_name_index
	}, ; 47
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000065, ; uint32_t type_token_id
		i32 709; uint32_t java_name_index
	}, ; 48
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000098, ; uint32_t type_token_id
		i32 1347; uint32_t java_name_index
	}, ; 49
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000065, ; uint32_t type_token_id
		i32 1045; uint32_t java_name_index
	}, ; 50
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004c9, ; uint32_t type_token_id
		i32 568; uint32_t java_name_index
	}, ; 51
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index
		i32 u0x02000007, ; uint32_t type_token_id
		i32 799; uint32_t java_name_index
	}, ; 52
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002ce, ; uint32_t type_token_id
		i32 288; uint32_t java_name_index
	}, ; 53
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001a3, ; uint32_t type_token_id
		i32 130; uint32_t java_name_index
	}, ; 54
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 925; uint32_t java_name_index
	}, ; 55
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1661; uint32_t java_name_index
	}, ; 56
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1688; uint32_t java_name_index
	}, ; 57
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000404, ; uint32_t type_token_id
		i32 454; uint32_t java_name_index
	}, ; 58
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000223, ; uint32_t type_token_id
		i32 210; uint32_t java_name_index
	}, ; 59
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1013; uint32_t java_name_index
	}, ; 60
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x020000aa, ; uint32_t type_token_id
		i32 1761; uint32_t java_name_index
	}, ; 61
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000058, ; uint32_t type_token_id
		i32 1033; uint32_t java_name_index
	}, ; 62
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x02000011, ; uint32_t type_token_id
		i32 965; uint32_t java_name_index
	}, ; 63
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000156, ; uint32_t type_token_id
		i32 1248; uint32_t java_name_index
	}, ; 64
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x02000008, ; uint32_t type_token_id
		i32 858; uint32_t java_name_index
	}, ; 65
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000308, ; uint32_t type_token_id
		i32 315; uint32_t java_name_index
	}, ; 66
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x02000059, ; uint32_t type_token_id
		i32 1356; uint32_t java_name_index
	}, ; 67
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x0200037a, ; uint32_t type_token_id
		i32 1548; uint32_t java_name_index
	}, ; 68
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 576; uint32_t java_name_index
	}, ; 69
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1177; uint32_t java_name_index
	}, ; 70
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000235, ; uint32_t type_token_id
		i32 223; uint32_t java_name_index
	}, ; 71
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000206, ; uint32_t type_token_id
		i32 190; uint32_t java_name_index
	}, ; 72
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000435, ; uint32_t type_token_id
		i32 480; uint32_t java_name_index
	}, ; 73
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003ec, ; uint32_t type_token_id
		i32 1621; uint32_t java_name_index
	}, ; 74
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000163, ; uint32_t type_token_id
		i32 1478; uint32_t java_name_index
	}, ; 75
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 991; uint32_t java_name_index
	}, ; 76
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 92; uint32_t java_name_index
	}, ; 77
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 1051; uint32_t java_name_index
	}, ; 78
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000088, ; uint32_t type_token_id
		i32 728; uint32_t java_name_index
	}, ; 79
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1399; uint32_t java_name_index
	}, ; 80
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020002dd, ; uint32_t type_token_id
		i32 1495; uint32_t java_name_index
	}, ; 81
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000200, ; uint32_t type_token_id
		i32 185; uint32_t java_name_index
	}, ; 82
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 690; uint32_t java_name_index
	}, ; 83
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 445; uint32_t java_name_index
	}, ; 84
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000166, ; uint32_t type_token_id
		i32 89; uint32_t java_name_index
	}, ; 85
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 297; uint32_t java_name_index
	}, ; 86
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1202; uint32_t java_name_index
	}, ; 87
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000361, ; uint32_t type_token_id
		i32 351; uint32_t java_name_index
	}, ; 88
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 136; uint32_t java_name_index
	}, ; 89
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x020000be, ; uint32_t type_token_id
		i32 1770; uint32_t java_name_index
	}, ; 90
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x02000040, ; uint32_t type_token_id
		i32 1666; uint32_t java_name_index
	}, ; 91
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000032, ; uint32_t type_token_id
		i32 1000; uint32_t java_name_index
	}, ; 92
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000356, ; uint32_t type_token_id
		i32 349; uint32_t java_name_index
	}, ; 93
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003c7, ; uint32_t type_token_id
		i32 1595; uint32_t java_name_index
	}, ; 94
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1232; uint32_t java_name_index
	}, ; 95
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 1378; uint32_t java_name_index
	}, ; 96
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1756; uint32_t java_name_index
	}, ; 97
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200012e, ; uint32_t type_token_id
		i32 1219; uint32_t java_name_index
	}, ; 98
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 449; uint32_t java_name_index
	}, ; 99
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003cf, ; uint32_t type_token_id
		i32 423; uint32_t java_name_index
	}, ; 100
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000bc, ; uint32_t type_token_id
		i32 947; uint32_t java_name_index
	}, ; 101
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003bb, ; uint32_t type_token_id
		i32 407; uint32_t java_name_index
	}, ; 102
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003af, ; uint32_t type_token_id
		i32 395; uint32_t java_name_index
	}, ; 103
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x02000087, ; uint32_t type_token_id
		i32 1743; uint32_t java_name_index
	}, ; 104
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x020000c3, ; uint32_t type_token_id
		i32 1773; uint32_t java_name_index
	}, ; 105
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001c8, ; uint32_t type_token_id
		i32 146; uint32_t java_name_index
	}, ; 106
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000ad, ; uint32_t type_token_id
		i32 1142; uint32_t java_name_index
	}, ; 107
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 756; uint32_t java_name_index
	}, ; 108
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000050, ; uint32_t type_token_id
		i32 694; uint32_t java_name_index
	}, ; 109
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 95; uint32_t java_name_index
	}, ; 110
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000055, ; uint32_t type_token_id
		i32 698; uint32_t java_name_index
	}, ; 111
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003c3, ; uint32_t type_token_id
		i32 414; uint32_t java_name_index
	}, ; 112
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000334, ; uint32_t type_token_id
		i32 1504; uint32_t java_name_index
	}, ; 113
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x0200062f, ; uint32_t type_token_id
		i32 1624; uint32_t java_name_index
	}, ; 114
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003ad, ; uint32_t type_token_id
		i32 393; uint32_t java_name_index
	}, ; 115
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 1697; uint32_t java_name_index
	}, ; 116
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 917; uint32_t java_name_index
	}, ; 117
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200016b, ; uint32_t type_token_id
		i32 1485; uint32_t java_name_index
	}, ; 118
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000471, ; uint32_t type_token_id
		i32 515; uint32_t java_name_index
	}, ; 119
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000217, ; uint32_t type_token_id
		i32 201; uint32_t java_name_index
	}, ; 120
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020002d4, ; uint32_t type_token_id
		i32 1473; uint32_t java_name_index
	}, ; 121
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000258, ; uint32_t type_token_id
		i32 1512; uint32_t java_name_index
	}, ; 122
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003ec, ; uint32_t type_token_id
		i32 442; uint32_t java_name_index
	}, ; 123
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000488, ; uint32_t type_token_id
		i32 531; uint32_t java_name_index
	}, ; 124
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003c5, ; uint32_t type_token_id
		i32 415; uint32_t java_name_index
	}, ; 125
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 282; uint32_t java_name_index
	}, ; 126
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1192; uint32_t java_name_index
	}, ; 127
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000337, ; uint32_t type_token_id
		i32 1505; uint32_t java_name_index
	}, ; 128
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000e6, ; uint32_t type_token_id
		i32 19; uint32_t java_name_index
	}, ; 129
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index
		i32 u0x02000015, ; uint32_t type_token_id
		i32 739; uint32_t java_name_index
	}, ; 130
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 529; uint32_t java_name_index
	}, ; 131
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1581; uint32_t java_name_index
	}, ; 132
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003ce, ; uint32_t type_token_id
		i32 422; uint32_t java_name_index
	}, ; 133
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1330; uint32_t java_name_index
	}, ; 134
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 872; uint32_t java_name_index
	}, ; 135
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000288, ; uint32_t type_token_id
		i32 259; uint32_t java_name_index
	}, ; 136
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 242; uint32_t java_name_index
	}, ; 137
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000150, ; uint32_t type_token_id
		i32 1243; uint32_t java_name_index
	}, ; 138
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001dd, ; uint32_t type_token_id
		i32 160; uint32_t java_name_index
	}, ; 139
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 731; uint32_t java_name_index
	}, ; 140
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200028d, ; uint32_t type_token_id
		i32 262; uint32_t java_name_index
	}, ; 141
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003e9, ; uint32_t type_token_id
		i32 1619; uint32_t java_name_index
	}, ; 142
	%struct.TypeMapJava {
		i32 45, ; uint32_t module_index
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 1522; uint32_t java_name_index
	}, ; 143
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1317; uint32_t java_name_index
	}, ; 144
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x02000028, ; uint32_t type_token_id
		i32 676; uint32_t java_name_index
	}, ; 145
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x02000021, ; uint32_t type_token_id
		i32 859; uint32_t java_name_index
	}, ; 146
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 822; uint32_t java_name_index
	}, ; 147
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 720; uint32_t java_name_index
	}, ; 148
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200045d, ; uint32_t type_token_id
		i32 503; uint32_t java_name_index
	}, ; 149
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000216, ; uint32_t type_token_id
		i32 200; uint32_t java_name_index
	}, ; 150
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200011f, ; uint32_t type_token_id
		i32 786; uint32_t java_name_index
	}, ; 151
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 973; uint32_t java_name_index
	}, ; 152
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 1685; uint32_t java_name_index
	}, ; 153
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000e0, ; uint32_t type_token_id
		i32 15; uint32_t java_name_index
	}, ; 154
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 826; uint32_t java_name_index
	}, ; 155
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 219; uint32_t java_name_index
	}, ; 156
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200039a, ; uint32_t type_token_id
		i32 376; uint32_t java_name_index
	}, ; 157
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001f2, ; uint32_t type_token_id
		i32 175; uint32_t java_name_index
	}, ; 158
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004a6, ; uint32_t type_token_id
		i32 550; uint32_t java_name_index
	}, ; 159
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x020000a6, ; uint32_t type_token_id
		i32 770; uint32_t java_name_index
	}, ; 160
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200018c, ; uint32_t type_token_id
		i32 112; uint32_t java_name_index
	}, ; 161
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 554; uint32_t java_name_index
	}, ; 162
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003cb, ; uint32_t type_token_id
		i32 1599; uint32_t java_name_index
	}, ; 163
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 182; uint32_t java_name_index
	}, ; 164
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000059, ; uint32_t type_token_id
		i32 883; uint32_t java_name_index
	}, ; 165
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 283; uint32_t java_name_index
	}, ; 166
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001ff, ; uint32_t type_token_id
		i32 184; uint32_t java_name_index
	}, ; 167
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000316, ; uint32_t type_token_id
		i32 323; uint32_t java_name_index
	}, ; 168
	%struct.TypeMapJava {
		i32 45, ; uint32_t module_index
		i32 u0x02000008, ; uint32_t type_token_id
		i32 1519; uint32_t java_name_index
	}, ; 169
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000035, ; uint32_t type_token_id
		i32 1003; uint32_t java_name_index
	}, ; 170
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000302, ; uint32_t type_token_id
		i32 313; uint32_t java_name_index
	}, ; 171
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000062, ; uint32_t type_token_id
		i32 891; uint32_t java_name_index
	}, ; 172
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x02000026, ; uint32_t type_token_id
		i32 1693; uint32_t java_name_index
	}, ; 173
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000428, ; uint32_t type_token_id
		i32 475; uint32_t java_name_index
	}, ; 174
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1119; uint32_t java_name_index
	}, ; 175
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200048f, ; uint32_t type_token_id
		i32 535; uint32_t java_name_index
	}, ; 176
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x0200055e, ; uint32_t type_token_id
		i32 1528; uint32_t java_name_index
	}, ; 177
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 1649; uint32_t java_name_index
	}, ; 178
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1284; uint32_t java_name_index
	}, ; 179
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1388; uint32_t java_name_index
	}, ; 180
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 818; uint32_t java_name_index
	}, ; 181
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 684; uint32_t java_name_index
	}, ; 182
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000332, ; uint32_t type_token_id
		i32 341; uint32_t java_name_index
	}, ; 183
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003f3, ; uint32_t type_token_id
		i32 1632; uint32_t java_name_index
	}, ; 184
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1062; uint32_t java_name_index
	}, ; 185
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000630, ; uint32_t type_token_id
		i32 1625; uint32_t java_name_index
	}, ; 186
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1344; uint32_t java_name_index
	}, ; 187
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000d2, ; uint32_t type_token_id
		i32 1170; uint32_t java_name_index
	}, ; 188
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 281; uint32_t java_name_index
	}, ; 189
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000518, ; uint32_t type_token_id
		i32 621; uint32_t java_name_index
	}, ; 190
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000016, ; uint32_t type_token_id
		i32 962; uint32_t java_name_index
	}, ; 191
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200021d, ; uint32_t type_token_id
		i32 206; uint32_t java_name_index
	}, ; 192
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x02000023, ; uint32_t type_token_id
		i32 1691; uint32_t java_name_index
	}, ; 193
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x020000c5, ; uint32_t type_token_id
		i32 778; uint32_t java_name_index
	}, ; 194
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000101, ; uint32_t type_token_id
		i32 33; uint32_t java_name_index
	}, ; 195
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 639; uint32_t java_name_index
	}, ; 196
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000010, ; uint32_t type_token_id
		i32 749; uint32_t java_name_index
	}, ; 197
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x020000ad, ; uint32_t type_token_id
		i32 1763; uint32_t java_name_index
	}, ; 198
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200010c, ; uint32_t type_token_id
		i32 784; uint32_t java_name_index
	}, ; 199
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001ec, ; uint32_t type_token_id
		i32 171; uint32_t java_name_index
	}, ; 200
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000438, ; uint32_t type_token_id
		i32 483; uint32_t java_name_index
	}, ; 201
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 852; uint32_t java_name_index
	}, ; 202
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004b1, ; uint32_t type_token_id
		i32 557; uint32_t java_name_index
	}, ; 203
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x0200038d, ; uint32_t type_token_id
		i32 1555; uint32_t java_name_index
	}, ; 204
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1261; uint32_t java_name_index
	}, ; 205
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1709; uint32_t java_name_index
	}, ; 206
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x02000016, ; uint32_t type_token_id
		i32 1683; uint32_t java_name_index
	}, ; 207
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000153, ; uint32_t type_token_id
		i32 1463; uint32_t java_name_index
	}, ; 208
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000212, ; uint32_t type_token_id
		i32 197; uint32_t java_name_index
	}, ; 209
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 121; uint32_t java_name_index
	}, ; 210
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 224; uint32_t java_name_index
	}, ; 211
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1415; uint32_t java_name_index
	}, ; 212
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200049f, ; uint32_t type_token_id
		i32 545; uint32_t java_name_index
	}, ; 213
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001fb, ; uint32_t type_token_id
		i32 181; uint32_t java_name_index
	}, ; 214
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000b6, ; uint32_t type_token_id
		i32 944; uint32_t java_name_index
	}, ; 215
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000417, ; uint32_t type_token_id
		i32 466; uint32_t java_name_index
	}, ; 216
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200018b, ; uint32_t type_token_id
		i32 111; uint32_t java_name_index
	}, ; 217
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000337, ; uint32_t type_token_id
		i32 345; uint32_t java_name_index
	}, ; 218
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000466, ; uint32_t type_token_id
		i32 508; uint32_t java_name_index
	}, ; 219
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 767; uint32_t java_name_index
	}, ; 220
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 194; uint32_t java_name_index
	}, ; 221
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003ba, ; uint32_t type_token_id
		i32 406; uint32_t java_name_index
	}, ; 222
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1260; uint32_t java_name_index
	}, ; 223
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000b0, ; uint32_t type_token_id
		i32 940; uint32_t java_name_index
	}, ; 224
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1064; uint32_t java_name_index
	}, ; 225
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1359; uint32_t java_name_index
	}, ; 226
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 176; uint32_t java_name_index
	}, ; 227
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1428; uint32_t java_name_index
	}, ; 228
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 579; uint32_t java_name_index
	}, ; 229
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 989; uint32_t java_name_index
	}, ; 230
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 678; uint32_t java_name_index
	}, ; 231
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003da, ; uint32_t type_token_id
		i32 430; uint32_t java_name_index
	}, ; 232
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 1024; uint32_t java_name_index
	}, ; 233
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000383, ; uint32_t type_token_id
		i32 361; uint32_t java_name_index
	}, ; 234
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 842; uint32_t java_name_index
	}, ; 235
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000ce, ; uint32_t type_token_id
		i32 5; uint32_t java_name_index
	}, ; 236
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1371; uint32_t java_name_index
	}, ; 237
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000407, ; uint32_t type_token_id
		i32 456; uint32_t java_name_index
	}, ; 238
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200050d, ; uint32_t type_token_id
		i32 615; uint32_t java_name_index
	}, ; 239
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1191; uint32_t java_name_index
	}, ; 240
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002a7, ; uint32_t type_token_id
		i32 273; uint32_t java_name_index
	}, ; 241
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000054, ; uint32_t type_token_id
		i32 879; uint32_t java_name_index
	}, ; 242
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003c9, ; uint32_t type_token_id
		i32 419; uint32_t java_name_index
	}, ; 243
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1579; uint32_t java_name_index
	}, ; 244
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003c0, ; uint32_t type_token_id
		i32 1588; uint32_t java_name_index
	}, ; 245
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000382, ; uint32_t type_token_id
		i32 360; uint32_t java_name_index
	}, ; 246
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1021; uint32_t java_name_index
	}, ; 247
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 1009; uint32_t java_name_index
	}, ; 248
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000073, ; uint32_t type_token_id
		i32 716; uint32_t java_name_index
	}, ; 249
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 1417; uint32_t java_name_index
	}, ; 250
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1334; uint32_t java_name_index
	}, ; 251
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x0200069a, ; uint32_t type_token_id
		i32 1631; uint32_t java_name_index
	}, ; 252
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000f3, ; uint32_t type_token_id
		i32 26; uint32_t java_name_index
	}, ; 253
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000b1, ; uint32_t type_token_id
		i32 941; uint32_t java_name_index
	}, ; 254
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003cc, ; uint32_t type_token_id
		i32 1600; uint32_t java_name_index
	}, ; 255
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x02000098, ; uint32_t type_token_id
		i32 1748; uint32_t java_name_index
	}, ; 256
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000105, ; uint32_t type_token_id
		i32 35; uint32_t java_name_index
	}, ; 257
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020002e1, ; uint32_t type_token_id
		i32 1499; uint32_t java_name_index
	}, ; 258
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000156, ; uint32_t type_token_id
		i32 1465; uint32_t java_name_index
	}, ; 259
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200013c, ; uint32_t type_token_id
		i32 797; uint32_t java_name_index
	}, ; 260
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200018a, ; uint32_t type_token_id
		i32 110; uint32_t java_name_index
	}, ; 261
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003e2, ; uint32_t type_token_id
		i32 1614; uint32_t java_name_index
	}, ; 262
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1110; uint32_t java_name_index
	}, ; 263
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000135, ; uint32_t type_token_id
		i32 1458; uint32_t java_name_index
	}, ; 264
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000348, ; uint32_t type_token_id
		i32 1529; uint32_t java_name_index
	}, ; 265
	%struct.TypeMapJava {
		i32 56, ; uint32_t module_index
		i32 u0x02000006, ; uint32_t type_token_id
		i32 1780; uint32_t java_name_index
	}, ; 266
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1112; uint32_t java_name_index
	}, ; 267
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1363; uint32_t java_name_index
	}, ; 268
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x020000c1, ; uint32_t type_token_id
		i32 1418; uint32_t java_name_index
	}, ; 269
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000c8, ; uint32_t type_token_id
		i32 1161; uint32_t java_name_index
	}, ; 270
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000108, ; uint32_t type_token_id
		i32 37; uint32_t java_name_index
	}, ; 271
	%struct.TypeMapJava {
		i32 47, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1642; uint32_t java_name_index
	}, ; 272
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1134; uint32_t java_name_index
	}, ; 273
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000047, ; uint32_t type_token_id
		i32 1018; uint32_t java_name_index
	}, ; 274
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1061; uint32_t java_name_index
	}, ; 275
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000fa, ; uint32_t type_token_id
		i32 30; uint32_t java_name_index
	}, ; 276
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 887; uint32_t java_name_index
	}, ; 277
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 811; uint32_t java_name_index
	}, ; 278
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200017c, ; uint32_t type_token_id
		i32 103; uint32_t java_name_index
	}, ; 279
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000055, ; uint32_t type_token_id
		i32 1090; uint32_t java_name_index
	}, ; 280
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 738; uint32_t java_name_index
	}, ; 281
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000230, ; uint32_t type_token_id
		i32 220; uint32_t java_name_index
	}, ; 282
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x02000015, ; uint32_t type_token_id
		i32 1269; uint32_t java_name_index
	}, ; 283
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000098, ; uint32_t type_token_id
		i32 1127; uint32_t java_name_index
	}, ; 284
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002d6, ; uint32_t type_token_id
		i32 292; uint32_t java_name_index
	}, ; 285
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200015b, ; uint32_t type_token_id
		i32 1469; uint32_t java_name_index
	}, ; 286
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003b1, ; uint32_t type_token_id
		i32 397; uint32_t java_name_index
	}, ; 287
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000452, ; uint32_t type_token_id
		i32 496; uint32_t java_name_index
	}, ; 288
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003a6, ; uint32_t type_token_id
		i32 1577; uint32_t java_name_index
	}, ; 289
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200018f, ; uint32_t type_token_id
		i32 114; uint32_t java_name_index
	}, ; 290
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000162, ; uint32_t type_token_id
		i32 86; uint32_t java_name_index
	}, ; 291
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200011e, ; uint32_t type_token_id
		i32 49; uint32_t java_name_index
	}, ; 292
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000b0, ; uint32_t type_token_id
		i32 1144; uint32_t java_name_index
	}, ; 293
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000053, ; uint32_t type_token_id
		i32 1028; uint32_t java_name_index
	}, ; 294
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1132; uint32_t java_name_index
	}, ; 295
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1139; uint32_t java_name_index
	}, ; 296
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 755; uint32_t java_name_index
	}, ; 297
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1179; uint32_t java_name_index
	}, ; 298
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200031b, ; uint32_t type_token_id
		i32 328; uint32_t java_name_index
	}, ; 299
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000134, ; uint32_t type_token_id
		i32 794; uint32_t java_name_index
	}, ; 300
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1178; uint32_t java_name_index
	}, ; 301
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000cb, ; uint32_t type_token_id
		i32 3; uint32_t java_name_index
	}, ; 302
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200039b, ; uint32_t type_token_id
		i32 377; uint32_t java_name_index
	}, ; 303
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000018, ; uint32_t type_token_id
		i32 963; uint32_t java_name_index
	}, ; 304
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x02000003, ; uint32_t type_token_id
		i32 1514; uint32_t java_name_index
	}, ; 305
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x0200038b, ; uint32_t type_token_id
		i32 1551; uint32_t java_name_index
	}, ; 306
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 689; uint32_t java_name_index
	}, ; 307
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000136, ; uint32_t type_token_id
		i32 66; uint32_t java_name_index
	}, ; 308
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000468, ; uint32_t type_token_id
		i32 509; uint32_t java_name_index
	}, ; 309
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003e7, ; uint32_t type_token_id
		i32 1618; uint32_t java_name_index
	}, ; 310
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x02000023, ; uint32_t type_token_id
		i32 1280; uint32_t java_name_index
	}, ; 311
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1210; uint32_t java_name_index
	}, ; 312
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000490, ; uint32_t type_token_id
		i32 1527; uint32_t java_name_index
	}, ; 313
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001cd, ; uint32_t type_token_id
		i32 149; uint32_t java_name_index
	}, ; 314
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1656; uint32_t java_name_index
	}, ; 315
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1290; uint32_t java_name_index
	}, ; 316
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000150, ; uint32_t type_token_id
		i32 79; uint32_t java_name_index
	}, ; 317
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x02000086, ; uint32_t type_token_id
		i32 1742; uint32_t java_name_index
	}, ; 318
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000169, ; uint32_t type_token_id
		i32 1258; uint32_t java_name_index
	}, ; 319
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1349; uint32_t java_name_index
	}, ; 320
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001d0, ; uint32_t type_token_id
		i32 152; uint32_t java_name_index
	}, ; 321
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 1070; uint32_t java_name_index
	}, ; 322
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000ac, ; uint32_t type_token_id
		i32 1141; uint32_t java_name_index
	}, ; 323
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 159; uint32_t java_name_index
	}, ; 324
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200012a, ; uint32_t type_token_id
		i32 61; uint32_t java_name_index
	}, ; 325
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003d3, ; uint32_t type_token_id
		i32 1607; uint32_t java_name_index
	}, ; 326
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000064, ; uint32_t type_token_id
		i32 1044; uint32_t java_name_index
	}, ; 327
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000523, ; uint32_t type_token_id
		i32 630; uint32_t java_name_index
	}, ; 328
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003cf, ; uint32_t type_token_id
		i32 1604; uint32_t java_name_index
	}, ; 329
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1430; uint32_t java_name_index
	}, ; 330
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000049, ; uint32_t type_token_id
		i32 1306; uint32_t java_name_index
	}, ; 331
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 267; uint32_t java_name_index
	}, ; 332
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 821; uint32_t java_name_index
	}, ; 333
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 760; uint32_t java_name_index
	}, ; 334
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1287; uint32_t java_name_index
	}, ; 335
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200039c, ; uint32_t type_token_id
		i32 378; uint32_t java_name_index
	}, ; 336
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000408, ; uint32_t type_token_id
		i32 457; uint32_t java_name_index
	}, ; 337
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200041b, ; uint32_t type_token_id
		i32 468; uint32_t java_name_index
	}, ; 338
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 1716; uint32_t java_name_index
	}, ; 339
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 1073; uint32_t java_name_index
	}, ; 340
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003e4, ; uint32_t type_token_id
		i32 437; uint32_t java_name_index
	}, ; 341
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1118; uint32_t java_name_index
	}, ; 342
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003eb, ; uint32_t type_token_id
		i32 441; uint32_t java_name_index
	}, ; 343
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004ec, ; uint32_t type_token_id
		i32 588; uint32_t java_name_index
	}, ; 344
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 1052; uint32_t java_name_index
	}, ; 345
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 24; uint32_t java_name_index
	}, ; 346
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 1715; uint32_t java_name_index
	}, ; 347
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 269; uint32_t java_name_index
	}, ; 348
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 170; uint32_t java_name_index
	}, ; 349
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1297; uint32_t java_name_index
	}, ; 350
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000054, ; uint32_t type_token_id
		i32 1029; uint32_t java_name_index
	}, ; 351
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 870; uint32_t java_name_index
	}, ; 352
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000011, ; uint32_t type_token_id
		i32 750; uint32_t java_name_index
	}, ; 353
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1654; uint32_t java_name_index
	}, ; 354
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 906; uint32_t java_name_index
	}, ; 355
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 523; uint32_t java_name_index
	}, ; 356
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000c1, ; uint32_t type_token_id
		i32 952; uint32_t java_name_index
	}, ; 357
	%struct.TypeMapJava {
		i32 47, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 1640; uint32_t java_name_index
	}, ; 358
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000314, ; uint32_t type_token_id
		i32 321; uint32_t java_name_index
	}, ; 359
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000b2, ; uint32_t type_token_id
		i32 942; uint32_t java_name_index
	}, ; 360
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000054, ; uint32_t type_token_id
		i32 1089; uint32_t java_name_index
	}, ; 361
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001b0, ; uint32_t type_token_id
		i32 135; uint32_t java_name_index
	}, ; 362
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x02000021, ; uint32_t type_token_id
		i32 994; uint32_t java_name_index
	}, ; 363
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003d6, ; uint32_t type_token_id
		i32 1609; uint32_t java_name_index
	}, ; 364
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 447; uint32_t java_name_index
	}, ; 365
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1181; uint32_t java_name_index
	}, ; 366
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000517, ; uint32_t type_token_id
		i32 620; uint32_t java_name_index
	}, ; 367
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 459; uint32_t java_name_index
	}, ; 368
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000036, ; uint32_t type_token_id
		i32 1004; uint32_t java_name_index
	}, ; 369
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 489; uint32_t java_name_index
	}, ; 370
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 1036; uint32_t java_name_index
	}, ; 371
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200019b, ; uint32_t type_token_id
		i32 122; uint32_t java_name_index
	}, ; 372
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200018b, ; uint32_t type_token_id
		i32 1500; uint32_t java_name_index
	}, ; 373
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000509, ; uint32_t type_token_id
		i32 613; uint32_t java_name_index
	}, ; 374
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000277, ; uint32_t type_token_id
		i32 249; uint32_t java_name_index
	}, ; 375
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1183; uint32_t java_name_index
	}, ; 376
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000ef, ; uint32_t type_token_id
		i32 23; uint32_t java_name_index
	}, ; 377
	%struct.TypeMapJava {
		i32 47, ; uint32_t module_index
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 1634; uint32_t java_name_index
	}, ; 378
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x020000e8, ; uint32_t type_token_id
		i32 779; uint32_t java_name_index
	}, ; 379
	%struct.TypeMapJava {
		i32 51, ; uint32_t module_index
		i32 u0x02000012, ; uint32_t type_token_id
		i32 1678; uint32_t java_name_index
	}, ; 380
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200013d, ; uint32_t type_token_id
		i32 1230; uint32_t java_name_index
	}, ; 381
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1100; uint32_t java_name_index
	}, ; 382
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200023c, ; uint32_t type_token_id
		i32 225; uint32_t java_name_index
	}, ; 383
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 169; uint32_t java_name_index
	}, ; 384
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000083, ; uint32_t type_token_id
		i32 1068; uint32_t java_name_index
	}, ; 385
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 871; uint32_t java_name_index
	}, ; 386
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 766; uint32_t java_name_index
	}, ; 387
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 1050; uint32_t java_name_index
	}, ; 388
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200014b, ; uint32_t type_token_id
		i32 1238; uint32_t java_name_index
	}, ; 389
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000059, ; uint32_t type_token_id
		i32 1034; uint32_t java_name_index
	}, ; 390
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 314; uint32_t java_name_index
	}, ; 391
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 691; uint32_t java_name_index
	}, ; 392
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 718; uint32_t java_name_index
	}, ; 393
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x0200037b, ; uint32_t type_token_id
		i32 1549; uint32_t java_name_index
	}, ; 394
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 908; uint32_t java_name_index
	}, ; 395
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200030e, ; uint32_t type_token_id
		i32 317; uint32_t java_name_index
	}, ; 396
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 658; uint32_t java_name_index
	}, ; 397
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000243, ; uint32_t type_token_id
		i32 230; uint32_t java_name_index
	}, ; 398
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000082, ; uint32_t type_token_id
		i32 1067; uint32_t java_name_index
	}, ; 399
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 339; uint32_t java_name_index
	}, ; 400
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000161, ; uint32_t type_token_id
		i32 1477; uint32_t java_name_index
	}, ; 401
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000059, ; uint32_t type_token_id
		i32 1094; uint32_t java_name_index
	}, ; 402
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x02000058, ; uint32_t type_token_id
		i32 1355; uint32_t java_name_index
	}, ; 403
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003a5, ; uint32_t type_token_id
		i32 386; uint32_t java_name_index
	}, ; 404
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001e7, ; uint32_t type_token_id
		i32 168; uint32_t java_name_index
	}, ; 405
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000013, ; uint32_t type_token_id
		i32 848; uint32_t java_name_index
	}, ; 406
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000369, ; uint32_t type_token_id
		i32 1543; uint32_t java_name_index
	}, ; 407
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 331; uint32_t java_name_index
	}, ; 408
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000331, ; uint32_t type_token_id
		i32 340; uint32_t java_name_index
	}, ; 409
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001cc, ; uint32_t type_token_id
		i32 148; uint32_t java_name_index
	}, ; 410
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000618, ; uint32_t type_token_id
		i32 1574; uint32_t java_name_index
	}, ; 411
	%struct.TypeMapJava {
		i32 47, ; uint32_t module_index
		i32 u0x02000016, ; uint32_t type_token_id
		i32 1641; uint32_t java_name_index
	}, ; 412
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x02000013, ; uint32_t type_token_id
		i32 1267; uint32_t java_name_index
	}, ; 413
	%struct.TypeMapJava {
		i32 45, ; uint32_t module_index
		i32 u0x02000009, ; uint32_t type_token_id
		i32 1520; uint32_t java_name_index
	}, ; 414
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000389, ; uint32_t type_token_id
		i32 1550; uint32_t java_name_index
	}, ; 415
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x020000f5, ; uint32_t type_token_id
		i32 781; uint32_t java_name_index
	}, ; 416
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000046, ; uint32_t type_token_id
		i32 1017; uint32_t java_name_index
	}, ; 417
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1542; uint32_t java_name_index
	}, ; 418
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x02000034, ; uint32_t type_token_id
		i32 1701; uint32_t java_name_index
	}, ; 419
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200003f, ; uint32_t type_token_id
		i32 1074; uint32_t java_name_index
	}, ; 420
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003e3, ; uint32_t type_token_id
		i32 1615; uint32_t java_name_index
	}, ; 421
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002ff, ; uint32_t type_token_id
		i32 311; uint32_t java_name_index
	}, ; 422
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000182, ; uint32_t type_token_id
		i32 107; uint32_t java_name_index
	}, ; 423
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1383; uint32_t java_name_index
	}, ; 424
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003b0, ; uint32_t type_token_id
		i32 396; uint32_t java_name_index
	}, ; 425
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003dc, ; uint32_t type_token_id
		i32 432; uint32_t java_name_index
	}, ; 426
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003a0, ; uint32_t type_token_id
		i32 382; uint32_t java_name_index
	}, ; 427
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200010b, ; uint32_t type_token_id
		i32 39; uint32_t java_name_index
	}, ; 428
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000436, ; uint32_t type_token_id
		i32 481; uint32_t java_name_index
	}, ; 429
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 279; uint32_t java_name_index
	}, ; 430
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001ee, ; uint32_t type_token_id
		i32 172; uint32_t java_name_index
	}, ; 431
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000c9, ; uint32_t type_token_id
		i32 1162; uint32_t java_name_index
	}, ; 432
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000362, ; uint32_t type_token_id
		i32 352; uint32_t java_name_index
	}, ; 433
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000229, ; uint32_t type_token_id
		i32 214; uint32_t java_name_index
	}, ; 434
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200017f, ; uint32_t type_token_id
		i32 105; uint32_t java_name_index
	}, ; 435
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 265; uint32_t java_name_index
	}, ; 436
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002e6, ; uint32_t type_token_id
		i32 299; uint32_t java_name_index
	}, ; 437
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000633, ; uint32_t type_token_id
		i32 1628; uint32_t java_name_index
	}, ; 438
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000699, ; uint32_t type_token_id
		i32 1630; uint32_t java_name_index
	}, ; 439
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1398; uint32_t java_name_index
	}, ; 440
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 244; uint32_t java_name_index
	}, ; 441
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x02000084, ; uint32_t type_token_id
		i32 1382; uint32_t java_name_index
	}, ; 442
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000046, ; uint32_t type_token_id
		i32 664; uint32_t java_name_index
	}, ; 443
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1662; uint32_t java_name_index
	}, ; 444
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 270; uint32_t java_name_index
	}, ; 445
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 586; uint32_t java_name_index
	}, ; 446
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000478, ; uint32_t type_token_id
		i32 521; uint32_t java_name_index
	}, ; 447
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000052, ; uint32_t type_token_id
		i32 877; uint32_t java_name_index
	}, ; 448
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200046f, ; uint32_t type_token_id
		i32 513; uint32_t java_name_index
	}, ; 449
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x020000c4, ; uint32_t type_token_id
		i32 777; uint32_t java_name_index
	}, ; 450
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001cb, ; uint32_t type_token_id
		i32 147; uint32_t java_name_index
	}, ; 451
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200019c, ; uint32_t type_token_id
		i32 123; uint32_t java_name_index
	}, ; 452
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000100, ; uint32_t type_token_id
		i32 1195; uint32_t java_name_index
	}, ; 453
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 222; uint32_t java_name_index
	}, ; 454
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200012c, ; uint32_t type_token_id
		i32 62; uint32_t java_name_index
	}, ; 455
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 839; uint32_t java_name_index
	}, ; 456
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x02000019, ; uint32_t type_token_id
		i32 987; uint32_t java_name_index
	}, ; 457
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1340; uint32_t java_name_index
	}, ; 458
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 671; uint32_t java_name_index
	}, ; 459
	%struct.TypeMapJava {
		i32 55, ; uint32_t module_index
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 1774; uint32_t java_name_index
	}, ; 460
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000133, ; uint32_t type_token_id
		i32 1222; uint32_t java_name_index
	}, ; 461
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 659; uint32_t java_name_index
	}, ; 462
	%struct.TypeMapJava {
		i32 50, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1673; uint32_t java_name_index
	}, ; 463
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x02000020, ; uint32_t type_token_id
		i32 1689; uint32_t java_name_index
	}, ; 464
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200015a, ; uint32_t type_token_id
		i32 1251; uint32_t java_name_index
	}, ; 465
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 705; uint32_t java_name_index
	}, ; 466
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1390; uint32_t java_name_index
	}, ; 467
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 1012; uint32_t java_name_index
	}, ; 468
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1199; uint32_t java_name_index
	}, ; 469
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x0200009d, ; uint32_t type_token_id
		i32 1751; uint32_t java_name_index
	}, ; 470
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200030f, ; uint32_t type_token_id
		i32 318; uint32_t java_name_index
	}, ; 471
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000148, ; uint32_t type_token_id
		i32 1237; uint32_t java_name_index
	}, ; 472
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index
		i32 u0x02000030, ; uint32_t type_token_id
		i32 804; uint32_t java_name_index
	}, ; 473
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 692; uint32_t java_name_index
	}, ; 474
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000097, ; uint32_t type_token_id
		i32 1346; uint32_t java_name_index
	}, ; 475
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000007, ; uint32_t type_token_id
		i32 647; uint32_t java_name_index
	}, ; 476
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200005f, ; uint32_t type_token_id
		i32 1040; uint32_t java_name_index
	}, ; 477
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1212; uint32_t java_name_index
	}, ; 478
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x02000035, ; uint32_t type_token_id
		i32 1660; uint32_t java_name_index
	}, ; 479
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002fa, ; uint32_t type_token_id
		i32 307; uint32_t java_name_index
	}, ; 480
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000086, ; uint32_t type_token_id
		i32 1116; uint32_t java_name_index
	}, ; 481
	%struct.TypeMapJava {
		i32 47, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1645; uint32_t java_name_index
	}, ; 482
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000121, ; uint32_t type_token_id
		i32 788; uint32_t java_name_index
	}, ; 483
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004aa, ; uint32_t type_token_id
		i32 553; uint32_t java_name_index
	}, ; 484
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x0200008c, ; uint32_t type_token_id
		i32 1387; uint32_t java_name_index
	}, ; 485
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200013c, ; uint32_t type_token_id
		i32 1229; uint32_t java_name_index
	}, ; 486
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200044d, ; uint32_t type_token_id
		i32 494; uint32_t java_name_index
	}, ; 487
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000127, ; uint32_t type_token_id
		i32 1449; uint32_t java_name_index
	}, ; 488
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000a7, ; uint32_t type_token_id
		i32 1137; uint32_t java_name_index
	}, ; 489
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 463; uint32_t java_name_index
	}, ; 490
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000be, ; uint32_t type_token_id
		i32 949; uint32_t java_name_index
	}, ; 491
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 885; uint32_t java_name_index
	}, ; 492
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000075, ; uint32_t type_token_id
		i32 1059; uint32_t java_name_index
	}, ; 493
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 969; uint32_t java_name_index
	}, ; 494
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200015d, ; uint32_t type_token_id
		i32 1471; uint32_t java_name_index
	}, ; 495
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200046a, ; uint32_t type_token_id
		i32 510; uint32_t java_name_index
	}, ; 496
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1201; uint32_t java_name_index
	}, ; 497
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 240; uint32_t java_name_index
	}, ; 498
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004cf, ; uint32_t type_token_id
		i32 572; uint32_t java_name_index
	}, ; 499
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000b1, ; uint32_t type_token_id
		i32 1145; uint32_t java_name_index
	}, ; 500
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1402; uint32_t java_name_index
	}, ; 501
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003b7, ; uint32_t type_token_id
		i32 403; uint32_t java_name_index
	}, ; 502
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1343; uint32_t java_name_index
	}, ; 503
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001c6, ; uint32_t type_token_id
		i32 145; uint32_t java_name_index
	}, ; 504
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 923; uint32_t java_name_index
	}, ; 505
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 708; uint32_t java_name_index
	}, ; 506
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000025, ; uint32_t type_token_id
		i32 653; uint32_t java_name_index
	}, ; 507
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000222, ; uint32_t type_token_id
		i32 209; uint32_t java_name_index
	}, ; 508
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000072, ; uint32_t type_token_id
		i32 1056; uint32_t java_name_index
	}, ; 509
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 640; uint32_t java_name_index
	}, ; 510
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003ae, ; uint32_t type_token_id
		i32 394; uint32_t java_name_index
	}, ; 511
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000053, ; uint32_t type_token_id
		i32 696; uint32_t java_name_index
	}, ; 512
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1207; uint32_t java_name_index
	}, ; 513
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000027, ; uint32_t type_token_id
		i32 831; uint32_t java_name_index
	}, ; 514
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 43; uint32_t java_name_index
	}, ; 515
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x0200035f, ; uint32_t type_token_id
		i32 1538; uint32_t java_name_index
	}, ; 516
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 455; uint32_t java_name_index
	}, ; 517
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 276; uint32_t java_name_index
	}, ; 518
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 988; uint32_t java_name_index
	}, ; 519
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001e3, ; uint32_t type_token_id
		i32 165; uint32_t java_name_index
	}, ; 520
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x02000013, ; uint32_t type_token_id
		i32 1680; uint32_t java_name_index
	}, ; 521
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 665; uint32_t java_name_index
	}, ; 522
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200022d, ; uint32_t type_token_id
		i32 218; uint32_t java_name_index
	}, ; 523
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003b3, ; uint32_t type_token_id
		i32 399; uint32_t java_name_index
	}, ; 524
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 899; uint32_t java_name_index
	}, ; 525
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 193; uint32_t java_name_index
	}, ; 526
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200018e, ; uint32_t type_token_id
		i32 113; uint32_t java_name_index
	}, ; 527
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 1010; uint32_t java_name_index
	}, ; 528
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003c5, ; uint32_t type_token_id
		i32 1593; uint32_t java_name_index
	}, ; 529
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x02000053, ; uint32_t type_token_id
		i32 1721; uint32_t java_name_index
	}, ; 530
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1734; uint32_t java_name_index
	}, ; 531
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 748; uint32_t java_name_index
	}, ; 532
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002da, ; uint32_t type_token_id
		i32 293; uint32_t java_name_index
	}, ; 533
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004af, ; uint32_t type_token_id
		i32 556; uint32_t java_name_index
	}, ; 534
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index
		i32 u0x02000009, ; uint32_t type_token_id
		i32 733; uint32_t java_name_index
	}, ; 535
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003f9, ; uint32_t type_token_id
		i32 448; uint32_t java_name_index
	}, ; 536
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 909; uint32_t java_name_index
	}, ; 537
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000106, ; uint32_t type_token_id
		i32 36; uint32_t java_name_index
	}, ; 538
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003db, ; uint32_t type_token_id
		i32 431; uint32_t java_name_index
	}, ; 539
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200037c, ; uint32_t type_token_id
		i32 357; uint32_t java_name_index
	}, ; 540
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004ef, ; uint32_t type_token_id
		i32 591; uint32_t java_name_index
	}, ; 541
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 140; uint32_t java_name_index
	}, ; 542
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000138, ; uint32_t type_token_id
		i32 795; uint32_t java_name_index
	}, ; 543
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 1035; uint32_t java_name_index
	}, ; 544
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 1651; uint32_t java_name_index
	}, ; 545
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000508, ; uint32_t type_token_id
		i32 612; uint32_t java_name_index
	}, ; 546
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000173, ; uint32_t type_token_id
		i32 98; uint32_t java_name_index
	}, ; 547
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1652; uint32_t java_name_index
	}, ; 548
	%struct.TypeMapJava {
		i32 45, ; uint32_t module_index
		i32 u0x02000022, ; uint32_t type_token_id
		i32 1521; uint32_t java_name_index
	}, ; 549
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000d0, ; uint32_t type_token_id
		i32 6; uint32_t java_name_index
	}, ; 550
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003d4, ; uint32_t type_token_id
		i32 426; uint32_t java_name_index
	}, ; 551
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1667; uint32_t java_name_index
	}, ; 552
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000054, ; uint32_t type_token_id
		i32 697; uint32_t java_name_index
	}, ; 553
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1433; uint32_t java_name_index
	}, ; 554
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1153; uint32_t java_name_index
	}, ; 555
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x02000061, ; uint32_t type_token_id
		i32 1726; uint32_t java_name_index
	}, ; 556
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 458; uint32_t java_name_index
	}, ; 557
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200041c, ; uint32_t type_token_id
		i32 469; uint32_t java_name_index
	}, ; 558
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 712; uint32_t java_name_index
	}, ; 559
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000156, ; uint32_t type_token_id
		i32 81; uint32_t java_name_index
	}, ; 560
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 22; uint32_t java_name_index
	}, ; 561
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200044b, ; uint32_t type_token_id
		i32 492; uint32_t java_name_index
	}, ; 562
	%struct.TypeMapJava {
		i32 45, ; uint32_t module_index
		i32 u0x02000023, ; uint32_t type_token_id
		i32 1524; uint32_t java_name_index
	}, ; 563
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200031a, ; uint32_t type_token_id
		i32 327; uint32_t java_name_index
	}, ; 564
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 976; uint32_t java_name_index
	}, ; 565
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001e4, ; uint32_t type_token_id
		i32 166; uint32_t java_name_index
	}, ; 566
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200024c, ; uint32_t type_token_id
		i32 235; uint32_t java_name_index
	}, ; 567
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 660; uint32_t java_name_index
	}, ; 568
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200048c, ; uint32_t type_token_id
		i32 533; uint32_t java_name_index
	}, ; 569
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 903; uint32_t java_name_index
	}, ; 570
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000520, ; uint32_t type_token_id
		i32 628; uint32_t java_name_index
	}, ; 571
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 1731; uint32_t java_name_index
	}, ; 572
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000eb, ; uint32_t type_token_id
		i32 21; uint32_t java_name_index
	}, ; 573
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 32; uint32_t java_name_index
	}, ; 574
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200051c, ; uint32_t type_token_id
		i32 624; uint32_t java_name_index
	}, ; 575
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 1719; uint32_t java_name_index
	}, ; 576
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000318, ; uint32_t type_token_id
		i32 325; uint32_t java_name_index
	}, ; 577
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200012a, ; uint32_t type_token_id
		i32 1451; uint32_t java_name_index
	}, ; 578
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x02000017, ; uint32_t type_token_id
		i32 1271; uint32_t java_name_index
	}, ; 579
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003b2, ; uint32_t type_token_id
		i32 398; uint32_t java_name_index
	}, ; 580
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 669; uint32_t java_name_index
	}, ; 581
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 563; uint32_t java_name_index
	}, ; 582
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200016a, ; uint32_t type_token_id
		i32 1484; uint32_t java_name_index
	}, ; 583
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 1324; uint32_t java_name_index
	}, ; 584
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000333, ; uint32_t type_token_id
		i32 342; uint32_t java_name_index
	}, ; 585
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000a2, ; uint32_t type_token_id
		i32 1438; uint32_t java_name_index
	}, ; 586
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200039e, ; uint32_t type_token_id
		i32 380; uint32_t java_name_index
	}, ; 587
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x02000027, ; uint32_t type_token_id
		i32 1694; uint32_t java_name_index
	}, ; 588
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000459, ; uint32_t type_token_id
		i32 500; uint32_t java_name_index
	}, ; 589
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000203, ; uint32_t type_token_id
		i32 188; uint32_t java_name_index
	}, ; 590
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 874; uint32_t java_name_index
	}, ; 591
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000079, ; uint32_t type_token_id
		i32 1331; uint32_t java_name_index
	}, ; 592
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1215; uint32_t java_name_index
	}, ; 593
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 927; uint32_t java_name_index
	}, ; 594
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 1154; uint32_t java_name_index
	}, ; 595
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200042e, ; uint32_t type_token_id
		i32 479; uint32_t java_name_index
	}, ; 596
	%struct.TypeMapJava {
		i32 55, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1776; uint32_t java_name_index
	}, ; 597
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 1310; uint32_t java_name_index
	}, ; 598
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000291, ; uint32_t type_token_id
		i32 263; uint32_t java_name_index
	}, ; 599
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 284; uint32_t java_name_index
	}, ; 600
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1253; uint32_t java_name_index
	}, ; 601
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000048, ; uint32_t type_token_id
		i32 1305; uint32_t java_name_index
	}, ; 602
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000046, ; uint32_t type_token_id
		i32 1079; uint32_t java_name_index
	}, ; 603
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1590; uint32_t java_name_index
	}, ; 604
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x0200036c, ; uint32_t type_token_id
		i32 1544; uint32_t java_name_index
	}, ; 605
	%struct.TypeMapJava {
		i32 47, ; uint32_t module_index
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 1635; uint32_t java_name_index
	}, ; 606
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1425; uint32_t java_name_index
	}, ; 607
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000205, ; uint32_t type_token_id
		i32 189; uint32_t java_name_index
	}, ; 608
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000251, ; uint32_t type_token_id
		i32 1510; uint32_t java_name_index
	}, ; 609
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002d1, ; uint32_t type_token_id
		i32 289; uint32_t java_name_index
	}, ; 610
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200009d, ; uint32_t type_token_id
		i32 1131; uint32_t java_name_index
	}, ; 611
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x020000ae, ; uint32_t type_token_id
		i32 775; uint32_t java_name_index
	}, ; 612
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1722; uint32_t java_name_index
	}, ; 613
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 1011; uint32_t java_name_index
	}, ; 614
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1263; uint32_t java_name_index
	}, ; 615
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 704; uint32_t java_name_index
	}, ; 616
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x02000027, ; uint32_t type_token_id
		i32 996; uint32_t java_name_index
	}, ; 617
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000097, ; uint32_t type_token_id
		i32 1126; uint32_t java_name_index
	}, ; 618
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index
		i32 u0x02000017, ; uint32_t type_token_id
		i32 741; uint32_t java_name_index
	}, ; 619
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000207, ; uint32_t type_token_id
		i32 191; uint32_t java_name_index
	}, ; 620
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000146, ; uint32_t type_token_id
		i32 74; uint32_t java_name_index
	}, ; 621
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000437, ; uint32_t type_token_id
		i32 482; uint32_t java_name_index
	}, ; 622
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003ca, ; uint32_t type_token_id
		i32 420; uint32_t java_name_index
	}, ; 623
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000120, ; uint32_t type_token_id
		i32 787; uint32_t java_name_index
	}, ; 624
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000287, ; uint32_t type_token_id
		i32 258; uint32_t java_name_index
	}, ; 625
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 932; uint32_t java_name_index
	}, ; 626
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 1664; uint32_t java_name_index
	}, ; 627
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x02000016, ; uint32_t type_token_id
		i32 1647; uint32_t java_name_index
	}, ; 628
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000284, ; uint32_t type_token_id
		i32 257; uint32_t java_name_index
	}, ; 629
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000b6, ; uint32_t type_token_id
		i32 1149; uint32_t java_name_index
	}, ; 630
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 837; uint32_t java_name_index
	}, ; 631
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 746; uint32_t java_name_index
	}, ; 632
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020005e5, ; uint32_t type_token_id
		i32 1532; uint32_t java_name_index
	}, ; 633
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 967; uint32_t java_name_index
	}, ; 634
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1123; uint32_t java_name_index
	}, ; 635
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 855; uint32_t java_name_index
	}, ; 636
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000276, ; uint32_t type_token_id
		i32 248; uint32_t java_name_index
	}, ; 637
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003b8, ; uint32_t type_token_id
		i32 404; uint32_t java_name_index
	}, ; 638
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1206; uint32_t java_name_index
	}, ; 639
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000388, ; uint32_t type_token_id
		i32 364; uint32_t java_name_index
	}, ; 640
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 1321; uint32_t java_name_index
	}, ; 641
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003f1, ; uint32_t type_token_id
		i32 444; uint32_t java_name_index
	}, ; 642
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004fc, ; uint32_t type_token_id
		i32 604; uint32_t java_name_index
	}, ; 643
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200014e, ; uint32_t type_token_id
		i32 1241; uint32_t java_name_index
	}, ; 644
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000020, ; uint32_t type_token_id
		i32 761; uint32_t java_name_index
	}, ; 645
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 846; uint32_t java_name_index
	}, ; 646
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000026, ; uint32_t type_token_id
		i32 654; uint32_t java_name_index
	}, ; 647
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 1039; uint32_t java_name_index
	}, ; 648
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000697, ; uint32_t type_token_id
		i32 1546; uint32_t java_name_index
	}, ; 649
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x02000022, ; uint32_t type_token_id
		i32 674; uint32_t java_name_index
	}, ; 650
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1406; uint32_t java_name_index
	}, ; 651
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000058, ; uint32_t type_token_id
		i32 700; uint32_t java_name_index
	}, ; 652
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000126, ; uint32_t type_token_id
		i32 1448; uint32_t java_name_index
	}, ; 653
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003a3, ; uint32_t type_token_id
		i32 384; uint32_t java_name_index
	}, ; 654
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000457, ; uint32_t type_token_id
		i32 499; uint32_t java_name_index
	}, ; 655
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x0200038c, ; uint32_t type_token_id
		i32 1552; uint32_t java_name_index
	}, ; 656
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020002db, ; uint32_t type_token_id
		i32 1492; uint32_t java_name_index
	}, ; 657
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000f3, ; uint32_t type_token_id
		i32 1188; uint32_t java_name_index
	}, ; 658
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 275; uint32_t java_name_index
	}, ; 659
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200038e, ; uint32_t type_token_id
		i32 368; uint32_t java_name_index
	}, ; 660
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 558; uint32_t java_name_index
	}, ; 661
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x020000a2, ; uint32_t type_token_id
		i32 1400; uint32_t java_name_index
	}, ; 662
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 975; uint32_t java_name_index
	}, ; 663
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 547; uint32_t java_name_index
	}, ; 664
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x02000041, ; uint32_t type_token_id
		i32 1707; uint32_t java_name_index
	}, ; 665
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000d6, ; uint32_t type_token_id
		i32 1173; uint32_t java_name_index
	}, ; 666
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000a9, ; uint32_t type_token_id
		i32 934; uint32_t java_name_index
	}, ; 667
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1071; uint32_t java_name_index
	}, ; 668
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1744; uint32_t java_name_index
	}, ; 669
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003e7, ; uint32_t type_token_id
		i32 438; uint32_t java_name_index
	}, ; 670
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000167, ; uint32_t type_token_id
		i32 90; uint32_t java_name_index
	}, ; 671
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000006, ; uint32_t type_token_id
		i32 646; uint32_t java_name_index
	}, ; 672
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x02000090, ; uint32_t type_token_id
		i32 1747; uint32_t java_name_index
	}, ; 673
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000384, ; uint32_t type_token_id
		i32 362; uint32_t java_name_index
	}, ; 674
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000069, ; uint32_t type_token_id
		i32 711; uint32_t java_name_index
	}, ; 675
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 912; uint32_t java_name_index
	}, ; 676
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000069, ; uint32_t type_token_id
		i32 1048; uint32_t java_name_index
	}, ; 677
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200038f, ; uint32_t type_token_id
		i32 369; uint32_t java_name_index
	}, ; 678
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000526, ; uint32_t type_token_id
		i32 633; uint32_t java_name_index
	}, ; 679
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1420; uint32_t java_name_index
	}, ; 680
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1315; uint32_t java_name_index
	}, ; 681
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 974; uint32_t java_name_index
	}, ; 682
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 1023; uint32_t java_name_index
	}, ; 683
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000177, ; uint32_t type_token_id
		i32 1494; uint32_t java_name_index
	}, ; 684
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200043a, ; uint32_t type_token_id
		i32 485; uint32_t java_name_index
	}, ; 685
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000146, ; uint32_t type_token_id
		i32 1235; uint32_t java_name_index
	}, ; 686
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000090, ; uint32_t type_token_id
		i32 918; uint32_t java_name_index
	}, ; 687
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 72; uint32_t java_name_index
	}, ; 688
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003a9, ; uint32_t type_token_id
		i32 390; uint32_t java_name_index
	}, ; 689
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 618; uint32_t java_name_index
	}, ; 690
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000c7, ; uint32_t type_token_id
		i32 1; uint32_t java_name_index
	}, ; 691
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000137, ; uint32_t type_token_id
		i32 1225; uint32_t java_name_index
	}, ; 692
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004a0, ; uint32_t type_token_id
		i32 546; uint32_t java_name_index
	}, ; 693
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 953; uint32_t java_name_index
	}, ; 694
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003bc, ; uint32_t type_token_id
		i32 408; uint32_t java_name_index
	}, ; 695
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003d7, ; uint32_t type_token_id
		i32 429; uint32_t java_name_index
	}, ; 696
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x0200002f, ; uint32_t type_token_id
		i32 1699; uint32_t java_name_index
	}, ; 697
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000067, ; uint32_t type_token_id
		i32 710; uint32_t java_name_index
	}, ; 698
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000a6, ; uint32_t type_token_id
		i32 1136; uint32_t java_name_index
	}, ; 699
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001c2, ; uint32_t type_token_id
		i32 143; uint32_t java_name_index
	}, ; 700
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1231; uint32_t java_name_index
	}, ; 701
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 1396; uint32_t java_name_index
	}, ; 702
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200015c, ; uint32_t type_token_id
		i32 1470; uint32_t java_name_index
	}, ; 703
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x020000e1, ; uint32_t type_token_id
		i32 1437; uint32_t java_name_index
	}, ; 704
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004eb, ; uint32_t type_token_id
		i32 587; uint32_t java_name_index
	}, ; 705
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 271; uint32_t java_name_index
	}, ; 706
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000252, ; uint32_t type_token_id
		i32 1511; uint32_t java_name_index
	}, ; 707
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000392, ; uint32_t type_token_id
		i32 371; uint32_t java_name_index
	}, ; 708
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 977; uint32_t java_name_index
	}, ; 709
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 1718; uint32_t java_name_index
	}, ; 710
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200043e, ; uint32_t type_token_id
		i32 488; uint32_t java_name_index
	}, ; 711
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1121; uint32_t java_name_index
	}, ; 712
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000c8, ; uint32_t type_token_id
		i32 957; uint32_t java_name_index
	}, ; 713
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003ed, ; uint32_t type_token_id
		i32 1622; uint32_t java_name_index
	}, ; 714
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003e6, ; uint32_t type_token_id
		i32 1617; uint32_t java_name_index
	}, ; 715
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1250; uint32_t java_name_index
	}, ; 716
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000188, ; uint32_t type_token_id
		i32 1498; uint32_t java_name_index
	}, ; 717
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000504, ; uint32_t type_token_id
		i32 610; uint32_t java_name_index
	}, ; 718
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000475, ; uint32_t type_token_id
		i32 518; uint32_t java_name_index
	}, ; 719
	%struct.TypeMapJava {
		i32 50, ; uint32_t module_index
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 1672; uint32_t java_name_index
	}, ; 720
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000170, ; uint32_t type_token_id
		i32 1489; uint32_t java_name_index
	}, ; 721
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 1771; uint32_t java_name_index
	}, ; 722
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 643; uint32_t java_name_index
	}, ; 723
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000056, ; uint32_t type_token_id
		i32 699; uint32_t java_name_index
	}, ; 724
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002c0, ; uint32_t type_token_id
		i32 286; uint32_t java_name_index
	}, ; 725
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1385; uint32_t java_name_index
	}, ; 726
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x020000a8, ; uint32_t type_token_id
		i32 1759; uint32_t java_name_index
	}, ; 727
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 703; uint32_t java_name_index
	}, ; 728
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000087, ; uint32_t type_token_id
		i32 727; uint32_t java_name_index
	}, ; 729
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1176; uint32_t java_name_index
	}, ; 730
	%struct.TypeMapJava {
		i32 50, ; uint32_t module_index
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 1671; uint32_t java_name_index
	}, ; 731
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 721; uint32_t java_name_index
	}, ; 732
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000063, ; uint32_t type_token_id
		i32 892; uint32_t java_name_index
	}, ; 733
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001ce, ; uint32_t type_token_id
		i32 150; uint32_t java_name_index
	}, ; 734
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000029, ; uint32_t type_token_id
		i32 656; uint32_t java_name_index
	}, ; 735
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000af, ; uint32_t type_token_id
		i32 939; uint32_t java_name_index
	}, ; 736
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200021a, ; uint32_t type_token_id
		i32 203; uint32_t java_name_index
	}, ; 737
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000197, ; uint32_t type_token_id
		i32 1502; uint32_t java_name_index
	}, ; 738
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000072, ; uint32_t type_token_id
		i32 1327; uint32_t java_name_index
	}, ; 739
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 1320; uint32_t java_name_index
	}, ; 740
	%struct.TypeMapJava {
		i32 49, ; uint32_t module_index
		i32 u0x02000002, ; uint32_t type_token_id
		i32 1670; uint32_t java_name_index
	}, ; 741
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1285; uint32_t java_name_index
	}, ; 742
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000524, ; uint32_t type_token_id
		i32 631; uint32_t java_name_index
	}, ; 743
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200037a, ; uint32_t type_token_id
		i32 355; uint32_t java_name_index
	}, ; 744
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000c5, ; uint32_t type_token_id
		i32 1158; uint32_t java_name_index
	}, ; 745
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000176, ; uint32_t type_token_id
		i32 1493; uint32_t java_name_index
	}, ; 746
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200013b, ; uint32_t type_token_id
		i32 796; uint32_t java_name_index
	}, ; 747
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x02000019, ; uint32_t type_token_id
		i32 1273; uint32_t java_name_index
	}, ; 748
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 46; uint32_t java_name_index
	}, ; 749
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x0200038f, ; uint32_t type_token_id
		i32 1558; uint32_t java_name_index
	}, ; 750
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 679; uint32_t java_name_index
	}, ; 751
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000278, ; uint32_t type_token_id
		i32 250; uint32_t java_name_index
	}, ; 752
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000395, ; uint32_t type_token_id
		i32 373; uint32_t java_name_index
	}, ; 753
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 1155; uint32_t java_name_index
	}, ; 754
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1380; uint32_t java_name_index
	}, ; 755
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000456, ; uint32_t type_token_id
		i32 498; uint32_t java_name_index
	}, ; 756
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200011c, ; uint32_t type_token_id
		i32 48; uint32_t java_name_index
	}, ; 757
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000622, ; uint32_t type_token_id
		i32 1589; uint32_t java_name_index
	}, ; 758
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 914; uint32_t java_name_index
	}, ; 759
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003ca, ; uint32_t type_token_id
		i32 1598; uint32_t java_name_index
	}, ; 760
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000625, ; uint32_t type_token_id
		i32 1603; uint32_t java_name_index
	}, ; 761
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1384; uint32_t java_name_index
	}, ; 762
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1264; uint32_t java_name_index
	}, ; 763
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001e1, ; uint32_t type_token_id
		i32 163; uint32_t java_name_index
	}, ; 764
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1152; uint32_t java_name_index
	}, ; 765
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000f8, ; uint32_t type_token_id
		i32 29; uint32_t java_name_index
	}, ; 766
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 758; uint32_t java_name_index
	}, ; 767
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000084, ; uint32_t type_token_id
		i32 725; uint32_t java_name_index
	}, ; 768
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000122, ; uint32_t type_token_id
		i32 53; uint32_t java_name_index
	}, ; 769
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200032e, ; uint32_t type_token_id
		i32 338; uint32_t java_name_index
	}, ; 770
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000480, ; uint32_t type_token_id
		i32 525; uint32_t java_name_index
	}, ; 771
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x02000057, ; uint32_t type_token_id
		i32 1354; uint32_t java_name_index
	}, ; 772
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003cc, ; uint32_t type_token_id
		i32 421; uint32_t java_name_index
	}, ; 773
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1665; uint32_t java_name_index
	}, ; 774
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003b5, ; uint32_t type_token_id
		i32 401; uint32_t java_name_index
	}, ; 775
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x02000005, ; uint32_t type_token_id
		i32 810; uint32_t java_name_index
	}, ; 776
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000631, ; uint32_t type_token_id
		i32 1626; uint32_t java_name_index
	}, ; 777
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 560; uint32_t java_name_index
	}, ; 778
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004f8, ; uint32_t type_token_id
		i32 600; uint32_t java_name_index
	}, ; 779
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200016c, ; uint32_t type_token_id
		i32 1486; uint32_t java_name_index
	}, ; 780
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000134, ; uint32_t type_token_id
		i32 1223; uint32_t java_name_index
	}, ; 781
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 487; uint32_t java_name_index
	}, ; 782
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000051, ; uint32_t type_token_id
		i32 876; uint32_t java_name_index
	}, ; 783
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000037, ; uint32_t type_token_id
		i32 663; uint32_t java_name_index
	}, ; 784
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003a4, ; uint32_t type_token_id
		i32 385; uint32_t java_name_index
	}, ; 785
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1361; uint32_t java_name_index
	}, ; 786
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200014d, ; uint32_t type_token_id
		i32 1240; uint32_t java_name_index
	}, ; 787
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 919; uint32_t java_name_index
	}, ; 788
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 922; uint32_t java_name_index
	}, ; 789
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 616; uint32_t java_name_index
	}, ; 790
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 562; uint32_t java_name_index
	}, ; 791
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000141, ; uint32_t type_token_id
		i32 1460; uint32_t java_name_index
	}, ; 792
	%struct.TypeMapJava {
		i32 56, ; uint32_t module_index
		i32 u0x02000007, ; uint32_t type_token_id
		i32 1781; uint32_t java_name_index
	}, ; 793
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 1323; uint32_t java_name_index
	}, ; 794
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000505, ; uint32_t type_token_id
		i32 611; uint32_t java_name_index
	}, ; 795
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000155, ; uint32_t type_token_id
		i32 1247; uint32_t java_name_index
	}, ; 796
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index
		i32 u0x02000006, ; uint32_t type_token_id
		i32 798; uint32_t java_name_index
	}, ; 797
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000052, ; uint32_t type_token_id
		i32 1027; uint32_t java_name_index
	}, ; 798
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x0200035e, ; uint32_t type_token_id
		i32 1537; uint32_t java_name_index
	}, ; 799
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1197; uint32_t java_name_index
	}, ; 800
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1107; uint32_t java_name_index
	}, ; 801
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001fe, ; uint32_t type_token_id
		i32 183; uint32_t java_name_index
	}, ; 802
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000174, ; uint32_t type_token_id
		i32 1491; uint32_t java_name_index
	}, ; 803
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000619, ; uint32_t type_token_id
		i32 1575; uint32_t java_name_index
	}, ; 804
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1364; uint32_t java_name_index
	}, ; 805
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 847; uint32_t java_name_index
	}, ; 806
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000539, ; uint32_t type_token_id
		i32 637; uint32_t java_name_index
	}, ; 807
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1213; uint32_t java_name_index
	}, ; 808
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1687; uint32_t java_name_index
	}, ; 809
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000a2, ; uint32_t type_token_id
		i32 928; uint32_t java_name_index
	}, ; 810
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 290; uint32_t java_name_index
	}, ; 811
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200039d, ; uint32_t type_token_id
		i32 379; uint32_t java_name_index
	}, ; 812
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1358; uint32_t java_name_index
	}, ; 813
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 829; uint32_t java_name_index
	}, ; 814
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 256; uint32_t java_name_index
	}, ; 815
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index
		i32 u0x02000010, ; uint32_t type_token_id
		i32 688; uint32_t java_name_index
	}, ; 816
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000391, ; uint32_t type_token_id
		i32 1560; uint32_t java_name_index
	}, ; 817
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003c2, ; uint32_t type_token_id
		i32 413; uint32_t java_name_index
	}, ; 818
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 843; uint32_t java_name_index
	}, ; 819
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 70; uint32_t java_name_index
	}, ; 820
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000604, ; uint32_t type_token_id
		i32 1554; uint32_t java_name_index
	}, ; 821
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003e3, ; uint32_t type_token_id
		i32 436; uint32_t java_name_index
	}, ; 822
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200014f, ; uint32_t type_token_id
		i32 78; uint32_t java_name_index
	}, ; 823
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200005c, ; uint32_t type_token_id
		i32 1037; uint32_t java_name_index
	}, ; 824
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000074, ; uint32_t type_token_id
		i32 1058; uint32_t java_name_index
	}, ; 825
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000ac, ; uint32_t type_token_id
		i32 937; uint32_t java_name_index
	}, ; 826
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 801; uint32_t java_name_index
	}, ; 827
	%struct.TypeMapJava {
		i32 50, ; uint32_t module_index
		i32 u0x02000011, ; uint32_t type_token_id
		i32 1674; uint32_t java_name_index
	}, ; 828
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 1311; uint32_t java_name_index
	}, ; 829
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 116; uint32_t java_name_index
	}, ; 830
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200013c, ; uint32_t type_token_id
		i32 1459; uint32_t java_name_index
	}, ; 831
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 31; uint32_t java_name_index
	}, ; 832
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 817; uint32_t java_name_index
	}, ; 833
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001e0, ; uint32_t type_token_id
		i32 162; uint32_t java_name_index
	}, ; 834
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000135, ; uint32_t type_token_id
		i32 1224; uint32_t java_name_index
	}, ; 835
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 1357; uint32_t java_name_index
	}, ; 836
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x02000013, ; uint32_t type_token_id
		i32 983; uint32_t java_name_index
	}, ; 837
	%struct.TypeMapJava {
		i32 47, ; uint32_t module_index
		i32 u0x02000013, ; uint32_t type_token_id
		i32 1639; uint32_t java_name_index
	}, ; 838
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 757; uint32_t java_name_index
	}, ; 839
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 902; uint32_t java_name_index
	}, ; 840
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200015c, ; uint32_t type_token_id
		i32 84; uint32_t java_name_index
	}, ; 841
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000602, ; uint32_t type_token_id
		i32 1553; uint32_t java_name_index
	}, ; 842
	%struct.TypeMapJava {
		i32 47, ; uint32_t module_index
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 1636; uint32_t java_name_index
	}, ; 843
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 719; uint32_t java_name_index
	}, ; 844
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001f0, ; uint32_t type_token_id
		i32 173; uint32_t java_name_index
	}, ; 845
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200010e, ; uint32_t type_token_id
		i32 41; uint32_t java_name_index
	}, ; 846
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1367; uint32_t java_name_index
	}, ; 847
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003b4, ; uint32_t type_token_id
		i32 1587; uint32_t java_name_index
	}, ; 848
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020005f7, ; uint32_t type_token_id
		i32 1545; uint32_t java_name_index
	}, ; 849
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000487, ; uint32_t type_token_id
		i32 530; uint32_t java_name_index
	}, ; 850
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1328; uint32_t java_name_index
	}, ; 851
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x02000034, ; uint32_t type_token_id
		i32 1659; uint32_t java_name_index
	}, ; 852
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 1753; uint32_t java_name_index
	}, ; 853
	%struct.TypeMapJava {
		i32 45, ; uint32_t module_index
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 1525; uint32_t java_name_index
	}, ; 854
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000ab, ; uint32_t type_token_id
		i32 936; uint32_t java_name_index
	}, ; 855
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200035f, ; uint32_t type_token_id
		i32 350; uint32_t java_name_index
	}, ; 856
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200028b, ; uint32_t type_token_id
		i32 261; uint32_t java_name_index
	}, ; 857
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200014c, ; uint32_t type_token_id
		i32 1239; uint32_t java_name_index
	}, ; 858
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1613; uint32_t java_name_index
	}, ; 859
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000ca, ; uint32_t type_token_id
		i32 1163; uint32_t java_name_index
	}, ; 860
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000cd, ; uint32_t type_token_id
		i32 4; uint32_t java_name_index
	}, ; 861
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001c1, ; uint32_t type_token_id
		i32 142; uint32_t java_name_index
	}, ; 862
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000085, ; uint32_t type_token_id
		i32 1336; uint32_t java_name_index
	}, ; 863
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003e1, ; uint32_t type_token_id
		i32 434; uint32_t java_name_index
	}, ; 864
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 980; uint32_t java_name_index
	}, ; 865
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1391; uint32_t java_name_index
	}, ; 866
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1313; uint32_t java_name_index
	}, ; 867
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001a1, ; uint32_t type_token_id
		i32 128; uint32_t java_name_index
	}, ; 868
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000214, ; uint32_t type_token_id
		i32 199; uint32_t java_name_index
	}, ; 869
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1446; uint32_t java_name_index
	}, ; 870
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000a1, ; uint32_t type_token_id
		i32 1133; uint32_t java_name_index
	}, ; 871
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000037, ; uint32_t type_token_id
		i32 1005; uint32_t java_name_index
	}, ; 872
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000169, ; uint32_t type_token_id
		i32 1483; uint32_t java_name_index
	}, ; 873
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x020000a9, ; uint32_t type_token_id
		i32 773; uint32_t java_name_index
	}, ; 874
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004c8, ; uint32_t type_token_id
		i32 567; uint32_t java_name_index
	}, ; 875
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 677; uint32_t java_name_index
	}, ; 876
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002e2, ; uint32_t type_token_id
		i32 296; uint32_t java_name_index
	}, ; 877
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1081; uint32_t java_name_index
	}, ; 878
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 522; uint32_t java_name_index
	}, ; 879
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003d2, ; uint32_t type_token_id
		i32 1606; uint32_t java_name_index
	}, ; 880
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000477, ; uint32_t type_token_id
		i32 520; uint32_t java_name_index
	}, ; 881
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000071, ; uint32_t type_token_id
		i32 1055; uint32_t java_name_index
	}, ; 882
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 943; uint32_t java_name_index
	}, ; 883
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000040, ; uint32_t type_token_id
		i32 1292; uint32_t java_name_index
	}, ; 884
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004ff, ; uint32_t type_token_id
		i32 606; uint32_t java_name_index
	}, ; 885
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200009c, ; uint32_t type_token_id
		i32 1130; uint32_t java_name_index
	}, ; 886
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 884; uint32_t java_name_index
	}, ; 887
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x02000018, ; uint32_t type_token_id
		i32 970; uint32_t java_name_index
	}, ; 888
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000279, ; uint32_t type_token_id
		i32 251; uint32_t java_name_index
	}, ; 889
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000029, ; uint32_t type_token_id
		i32 762; uint32_t java_name_index
	}, ; 890
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000038, ; uint32_t type_token_id
		i32 1006; uint32_t java_name_index
	}, ; 891
	%struct.TypeMapJava {
		i32 55, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1775; uint32_t java_name_index
	}, ; 892
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000131, ; uint32_t type_token_id
		i32 791; uint32_t java_name_index
	}, ; 893
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003c8, ; uint32_t type_token_id
		i32 418; uint32_t java_name_index
	}, ; 894
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 106; uint32_t java_name_index
	}, ; 895
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200022a, ; uint32_t type_token_id
		i32 215; uint32_t java_name_index
	}, ; 896
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1404; uint32_t java_name_index
	}, ; 897
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 302; uint32_t java_name_index
	}, ; 898
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200021c, ; uint32_t type_token_id
		i32 205; uint32_t java_name_index
	}, ; 899
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 1318; uint32_t java_name_index
	}, ; 900
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 1375; uint32_t java_name_index
	}, ; 901
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 1724; uint32_t java_name_index
	}, ; 902
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 916; uint32_t java_name_index
	}, ; 903
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1078; uint32_t java_name_index
	}, ; 904
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000218, ; uint32_t type_token_id
		i32 202; uint32_t java_name_index
	}, ; 905
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001d4, ; uint32_t type_token_id
		i32 155; uint32_t java_name_index
	}, ; 906
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200034e, ; uint32_t type_token_id
		i32 1509; uint32_t java_name_index
	}, ; 907
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 836; uint32_t java_name_index
	}, ; 908
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000045, ; uint32_t type_token_id
		i32 1016; uint32_t java_name_index
	}, ; 909
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x02000015, ; uint32_t type_token_id
		i32 1682; uint32_t java_name_index
	}, ; 910
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000ba, ; uint32_t type_token_id
		i32 945; uint32_t java_name_index
	}, ; 911
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 424; uint32_t java_name_index
	}, ; 912
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020002d5, ; uint32_t type_token_id
		i32 1475; uint32_t java_name_index
	}, ; 913
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001a2, ; uint32_t type_token_id
		i32 129; uint32_t java_name_index
	}, ; 914
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1063; uint32_t java_name_index
	}, ; 915
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002fc, ; uint32_t type_token_id
		i32 309; uint32_t java_name_index
	}, ; 916
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 596; uint32_t java_name_index
	}, ; 917
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003e2, ; uint32_t type_token_id
		i32 435; uint32_t java_name_index
	}, ; 918
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002e7, ; uint32_t type_token_id
		i32 300; uint32_t java_name_index
	}, ; 919
	%struct.TypeMapJava {
		i32 53, ; uint32_t module_index
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 1706; uint32_t java_name_index
	}, ; 920
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200051d, ; uint32_t type_token_id
		i32 625; uint32_t java_name_index
	}, ; 921
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 157; uint32_t java_name_index
	}, ; 922
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1370; uint32_t java_name_index
	}, ; 923
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000087, ; uint32_t type_token_id
		i32 915; uint32_t java_name_index
	}, ; 924
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000398, ; uint32_t type_token_id
		i32 1570; uint32_t java_name_index
	}, ; 925
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1194; uint32_t java_name_index
	}, ; 926
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1114; uint32_t java_name_index
	}, ; 927
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 1049; uint32_t java_name_index
	}, ; 928
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 666; uint32_t java_name_index
	}, ; 929
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1436; uint32_t java_name_index
	}, ; 930
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 715; uint32_t java_name_index
	}, ; 931
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1015; uint32_t java_name_index
	}, ; 932
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004fb, ; uint32_t type_token_id
		i32 603; uint32_t java_name_index
	}, ; 933
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200016e, ; uint32_t type_token_id
		i32 1487; uint32_t java_name_index
	}, ; 934
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000061, ; uint32_t type_token_id
		i32 1042; uint32_t java_name_index
	}, ; 935
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x02000029, ; uint32_t type_token_id
		i32 861; uint32_t java_name_index
	}, ; 936
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200049d, ; uint32_t type_token_id
		i32 544; uint32_t java_name_index
	}, ; 937
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000055, ; uint32_t type_token_id
		i32 880; uint32_t java_name_index
	}, ; 938
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000158, ; uint32_t type_token_id
		i32 1467; uint32_t java_name_index
	}, ; 939
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000392, ; uint32_t type_token_id
		i32 1561; uint32_t java_name_index
	}, ; 940
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1291; uint32_t java_name_index
	}, ; 941
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 1022; uint32_t java_name_index
	}, ; 942
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1612; uint32_t java_name_index
	}, ; 943
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002db, ; uint32_t type_token_id
		i32 294; uint32_t java_name_index
	}, ; 944
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200015e, ; uint32_t type_token_id
		i32 1472; uint32_t java_name_index
	}, ; 945
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x020000a9, ; uint32_t type_token_id
		i32 1760; uint32_t java_name_index
	}, ; 946
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 8; uint32_t java_name_index
	}, ; 947
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004ee, ; uint32_t type_token_id
		i32 590; uint32_t java_name_index
	}, ; 948
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000081, ; uint32_t type_token_id
		i32 1333; uint32_t java_name_index
	}, ; 949
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 497; uint32_t java_name_index
	}, ; 950
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index
		i32 u0x02000062, ; uint32_t type_token_id
		i32 805; uint32_t java_name_index
	}, ; 951
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000168, ; uint32_t type_token_id
		i32 1482; uint32_t java_name_index
	}, ; 952
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000152, ; uint32_t type_token_id
		i32 1244; uint32_t java_name_index
	}, ; 953
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000048, ; uint32_t type_token_id
		i32 868; uint32_t java_name_index
	}, ; 954
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000171, ; uint32_t type_token_id
		i32 96; uint32_t java_name_index
	}, ; 955
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200021b, ; uint32_t type_token_id
		i32 204; uint32_t java_name_index
	}, ; 956
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1104; uint32_t java_name_index
	}, ; 957
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 574; uint32_t java_name_index
	}, ; 958
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 1739; uint32_t java_name_index
	}, ; 959
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000420, ; uint32_t type_token_id
		i32 472; uint32_t java_name_index
	}, ; 960
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 702; uint32_t java_name_index
	}, ; 961
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 682; uint32_t java_name_index
	}, ; 962
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000059, ; uint32_t type_token_id
		i32 701; uint32_t java_name_index
	}, ; 963
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1342; uint32_t java_name_index
	}, ; 964
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000133, ; uint32_t type_token_id
		i32 793; uint32_t java_name_index
	}, ; 965
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 1377; uint32_t java_name_index
	}, ; 966
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000605, ; uint32_t type_token_id
		i32 1557; uint32_t java_name_index
	}, ; 967
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index
		i32 u0x02000011, ; uint32_t type_token_id
		i32 736; uint32_t java_name_index
	}, ; 968
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000349, ; uint32_t type_token_id
		i32 1530; uint32_t java_name_index
	}, ; 969
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1143; uint32_t java_name_index
	}, ; 970
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000049, ; uint32_t type_token_id
		i32 869; uint32_t java_name_index
	}, ; 971
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020002cf, ; uint32_t type_token_id
		i32 1462; uint32_t java_name_index
	}, ; 972
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200027f, ; uint32_t type_token_id
		i32 255; uint32_t java_name_index
	}, ; 973
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000121, ; uint32_t type_token_id
		i32 52; uint32_t java_name_index
	}, ; 974
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x02000035, ; uint32_t type_token_id
		i32 1286; uint32_t java_name_index
	}, ; 975
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002c8, ; uint32_t type_token_id
		i32 287; uint32_t java_name_index
	}, ; 976
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 139; uint32_t java_name_index
	}, ; 977
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004f5, ; uint32_t type_token_id
		i32 597; uint32_t java_name_index
	}, ; 978
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003b0, ; uint32_t type_token_id
		i32 1586; uint32_t java_name_index
	}, ; 979
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200034d, ; uint32_t type_token_id
		i32 1508; uint32_t java_name_index
	}, ; 980
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 920; uint32_t java_name_index
	}, ; 981
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1576; uint32_t java_name_index
	}, ; 982
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000081, ; uint32_t type_token_id
		i32 1066; uint32_t java_name_index
	}, ; 983
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000053, ; uint32_t type_token_id
		i32 878; uint32_t java_name_index
	}, ; 984
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 564; uint32_t java_name_index
	}, ; 985
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200036f, ; uint32_t type_token_id
		i32 354; uint32_t java_name_index
	}, ; 986
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200034b, ; uint32_t type_token_id
		i32 1507; uint32_t java_name_index
	}, ; 987
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001d1, ; uint32_t type_token_id
		i32 153; uint32_t java_name_index
	}, ; 988
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 278; uint32_t java_name_index
	}, ; 989
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 901; uint32_t java_name_index
	}, ; 990
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000060, ; uint32_t type_token_id
		i32 1041; uint32_t java_name_index
	}, ; 991
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000064, ; uint32_t type_token_id
		i32 893; uint32_t java_name_index
	}, ; 992
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000503, ; uint32_t type_token_id
		i32 609; uint32_t java_name_index
	}, ; 993
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000a3, ; uint32_t type_token_id
		i32 1439; uint32_t java_name_index
	}, ; 994
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1102; uint32_t java_name_index
	}, ; 995
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000501, ; uint32_t type_token_id
		i32 607; uint32_t java_name_index
	}, ; 996
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1218; uint32_t java_name_index
	}, ; 997
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000008, ; uint32_t type_token_id
		i32 648; uint32_t java_name_index
	}, ; 998
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 1442; uint32_t java_name_index
	}, ; 999
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000163, ; uint32_t type_token_id
		i32 87; uint32_t java_name_index
	}, ; 1000
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000389, ; uint32_t type_token_id
		i32 365; uint32_t java_name_index
	}, ; 1001
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 809; uint32_t java_name_index
	}, ; 1002
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000040, ; uint32_t type_token_id
		i32 1075; uint32_t java_name_index
	}, ; 1003
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 578; uint32_t java_name_index
	}, ; 1004
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000443, ; uint32_t type_token_id
		i32 491; uint32_t java_name_index
	}, ; 1005
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200044c, ; uint32_t type_token_id
		i32 493; uint32_t java_name_index
	}, ; 1006
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000d3, ; uint32_t type_token_id
		i32 1171; uint32_t java_name_index
	}, ; 1007
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001df, ; uint32_t type_token_id
		i32 161; uint32_t java_name_index
	}, ; 1008
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200012f, ; uint32_t type_token_id
		i32 1456; uint32_t java_name_index
	}, ; 1009
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index
		i32 u0x02000010, ; uint32_t type_token_id
		i32 735; uint32_t java_name_index
	}, ; 1010
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000365, ; uint32_t type_token_id
		i32 1541; uint32_t java_name_index
	}, ; 1011
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003a7, ; uint32_t type_token_id
		i32 388; uint32_t java_name_index
	}, ; 1012
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1412; uint32_t java_name_index
	}, ; 1013
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000c6, ; uint32_t type_token_id
		i32 1159; uint32_t java_name_index
	}, ; 1014
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000522, ; uint32_t type_token_id
		i32 629; uint32_t java_name_index
	}, ; 1015
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000224, ; uint32_t type_token_id
		i32 211; uint32_t java_name_index
	}, ; 1016
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003fc, ; uint32_t type_token_id
		i32 450; uint32_t java_name_index
	}, ; 1017
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 984; uint32_t java_name_index
	}, ; 1018
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000327, ; uint32_t type_token_id
		i32 333; uint32_t java_name_index
	}, ; 1019
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1750; uint32_t java_name_index
	}, ; 1020
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 834; uint32_t java_name_index
	}, ; 1021
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 94; uint32_t java_name_index
	}, ; 1022
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003be, ; uint32_t type_token_id
		i32 410; uint32_t java_name_index
	}, ; 1023
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000078, ; uint32_t type_token_id
		i32 907; uint32_t java_name_index
	}, ; 1024
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000009, ; uint32_t type_token_id
		i32 844; uint32_t java_name_index
	}, ; 1025
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000051, ; uint32_t type_token_id
		i32 1087; uint32_t java_name_index
	}, ; 1026
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003d1, ; uint32_t type_token_id
		i32 1605; uint32_t java_name_index
	}, ; 1027
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 752; uint32_t java_name_index
	}, ; 1028
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 910; uint32_t java_name_index
	}, ; 1029
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 864; uint32_t java_name_index
	}, ; 1030
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004f3, ; uint32_t type_token_id
		i32 595; uint32_t java_name_index
	}, ; 1031
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000393, ; uint32_t type_token_id
		i32 372; uint32_t java_name_index
	}, ; 1032
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 1717; uint32_t java_name_index
	}, ; 1033
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x02000004, ; uint32_t type_token_id
		i32 813; uint32_t java_name_index
	}, ; 1034
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 158; uint32_t java_name_index
	}, ; 1035
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001f7, ; uint32_t type_token_id
		i32 178; uint32_t java_name_index
	}, ; 1036
	%struct.TypeMapJava {
		i32 45, ; uint32_t module_index
		i32 u0x02000007, ; uint32_t type_token_id
		i32 1517; uint32_t java_name_index
	}, ; 1037
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003e9, ; uint32_t type_token_id
		i32 439; uint32_t java_name_index
	}, ; 1038
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000319, ; uint32_t type_token_id
		i32 326; uint32_t java_name_index
	}, ; 1039
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200041f, ; uint32_t type_token_id
		i32 471; uint32_t java_name_index
	}, ; 1040
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x02000022, ; uint32_t type_token_id
		i32 995; uint32_t java_name_index
	}, ; 1041
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200034f, ; uint32_t type_token_id
		i32 346; uint32_t java_name_index
	}, ; 1042
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000112, ; uint32_t type_token_id
		i32 1204; uint32_t java_name_index
	}, ; 1043
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000497, ; uint32_t type_token_id
		i32 539; uint32_t java_name_index
	}, ; 1044
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200015a, ; uint32_t type_token_id
		i32 1468; uint32_t java_name_index
	}, ; 1045
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 195; uint32_t java_name_index
	}, ; 1046
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000498, ; uint32_t type_token_id
		i32 540; uint32_t java_name_index
	}, ; 1047
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200014f, ; uint32_t type_token_id
		i32 1242; uint32_t java_name_index
	}, ; 1048
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 978; uint32_t java_name_index
	}, ; 1049
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000004, ; uint32_t type_token_id
		i32 850; uint32_t java_name_index
	}, ; 1050
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000068, ; uint32_t type_token_id
		i32 763; uint32_t java_name_index
	}, ; 1051
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x02000016, ; uint32_t type_token_id
		i32 1270; uint32_t java_name_index
	}, ; 1052
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000155, ; uint32_t type_token_id
		i32 1464; uint32_t java_name_index
	}, ; 1053
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1411; uint32_t java_name_index
	}, ; 1054
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000060, ; uint32_t type_token_id
		i32 1099; uint32_t java_name_index
	}, ; 1055
	%struct.TypeMapJava {
		i32 43, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1515; uint32_t java_name_index
	}, ; 1056
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1580; uint32_t java_name_index
	}, ; 1057
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200042b, ; uint32_t type_token_id
		i32 476; uint32_t java_name_index
	}, ; 1058
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 1020; uint32_t java_name_index
	}, ; 1059
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000005, ; uint32_t type_token_id
		i32 960; uint32_t java_name_index
	}, ; 1060
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000399, ; uint32_t type_token_id
		i32 375; uint32_t java_name_index
	}, ; 1061
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1276; uint32_t java_name_index
	}, ; 1062
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002ed, ; uint32_t type_token_id
		i32 303; uint32_t java_name_index
	}, ; 1063
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 138; uint32_t java_name_index
	}, ; 1064
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x020000ac, ; uint32_t type_token_id
		i32 1762; uint32_t java_name_index
	}, ; 1065
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1389; uint32_t java_name_index
	}, ; 1066
	%struct.TypeMapJava {
		i32 56, ; uint32_t module_index
		i32 u0x02000004, ; uint32_t type_token_id
		i32 1779; uint32_t java_name_index
	}, ; 1067
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1407; uint32_t java_name_index
	}, ; 1068
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 577; uint32_t java_name_index
	}, ; 1069
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 990; uint32_t java_name_index
	}, ; 1070
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 134; uint32_t java_name_index
	}, ; 1071
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 825; uint32_t java_name_index
	}, ; 1072
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 99; uint32_t java_name_index
	}, ; 1073
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000289, ; uint32_t type_token_id
		i32 260; uint32_t java_name_index
	}, ; 1074
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 900; uint32_t java_name_index
	}, ; 1075
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x0200035d, ; uint32_t type_token_id
		i32 1536; uint32_t java_name_index
	}, ; 1076
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000474, ; uint32_t type_token_id
		i32 517; uint32_t java_name_index
	}, ; 1077
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003b4, ; uint32_t type_token_id
		i32 400; uint32_t java_name_index
	}, ; 1078
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200012e, ; uint32_t type_token_id
		i32 1455; uint32_t java_name_index
	}, ; 1079
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000027, ; uint32_t type_token_id
		i32 655; uint32_t java_name_index
	}, ; 1080
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200049a, ; uint32_t type_token_id
		i32 542; uint32_t java_name_index
	}, ; 1081
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000a8, ; uint32_t type_token_id
		i32 933; uint32_t java_name_index
	}, ; 1082
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000260, ; uint32_t type_token_id
		i32 245; uint32_t java_name_index
	}, ; 1083
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000112, ; uint32_t type_token_id
		i32 44; uint32_t java_name_index
	}, ; 1084
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000157, ; uint32_t type_token_id
		i32 1466; uint32_t java_name_index
	}, ; 1085
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200051f, ; uint32_t type_token_id
		i32 627; uint32_t java_name_index
	}, ; 1086
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 687; uint32_t java_name_index
	}, ; 1087
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1082; uint32_t java_name_index
	}, ; 1088
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000115, ; uint32_t type_token_id
		i32 785; uint32_t java_name_index
	}, ; 1089
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000470, ; uint32_t type_token_id
		i32 514; uint32_t java_name_index
	}, ; 1090
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000154, ; uint32_t type_token_id
		i32 1246; uint32_t java_name_index
	}, ; 1091
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x020000e9, ; uint32_t type_token_id
		i32 780; uint32_t java_name_index
	}, ; 1092
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000610, ; uint32_t type_token_id
		i32 1569; uint32_t java_name_index
	}, ; 1093
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 1366; uint32_t java_name_index
	}, ; 1094
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 662; uint32_t java_name_index
	}, ; 1095
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000162, ; uint32_t type_token_id
		i32 1254; uint32_t java_name_index
	}, ; 1096
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000a5, ; uint32_t type_token_id
		i32 931; uint32_t java_name_index
	}, ; 1097
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x02000012, ; uint32_t type_token_id
		i32 982; uint32_t java_name_index
	}, ; 1098
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1393; uint32_t java_name_index
	}, ; 1099
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000055, ; uint32_t type_token_id
		i32 1030; uint32_t java_name_index
	}, ; 1100
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000231, ; uint32_t type_token_id
		i32 221; uint32_t java_name_index
	}, ; 1101
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 1275; uint32_t java_name_index
	}, ; 1102
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000188, ; uint32_t type_token_id
		i32 108; uint32_t java_name_index
	}, ; 1103
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 226; uint32_t java_name_index
	}, ; 1104
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000050, ; uint32_t type_token_id
		i32 1312; uint32_t java_name_index
	}, ; 1105
	%struct.TypeMapJava {
		i32 47, ; uint32_t module_index
		i32 u0x02000010, ; uint32_t type_token_id
		i32 1637; uint32_t java_name_index
	}, ; 1106
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000122, ; uint32_t type_token_id
		i32 789; uint32_t java_name_index
	}, ; 1107
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 898; uint32_t java_name_index
	}, ; 1108
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1352; uint32_t java_name_index
	}, ; 1109
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003c6, ; uint32_t type_token_id
		i32 416; uint32_t java_name_index
	}, ; 1110
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1019; uint32_t java_name_index
	}, ; 1111
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 1308; uint32_t java_name_index
	}, ; 1112
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 819; uint32_t java_name_index
	}, ; 1113
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1345; uint32_t java_name_index
	}, ; 1114
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x0200038e, ; uint32_t type_token_id
		i32 1556; uint32_t java_name_index
	}, ; 1115
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000189, ; uint32_t type_token_id
		i32 109; uint32_t java_name_index
	}, ; 1116
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003ab, ; uint32_t type_token_id
		i32 392; uint32_t java_name_index
	}, ; 1117
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200019e, ; uint32_t type_token_id
		i32 125; uint32_t java_name_index
	}, ; 1118
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index
		i32 u0x02000019, ; uint32_t type_token_id
		i32 743; uint32_t java_name_index
	}, ; 1119
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x02000012, ; uint32_t type_token_id
		i32 1679; uint32_t java_name_index
	}, ; 1120
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 686; uint32_t java_name_index
	}, ; 1121
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 1669; uint32_t java_name_index
	}, ; 1122
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 867; uint32_t java_name_index
	}, ; 1123
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 232; uint32_t java_name_index
	}, ; 1124
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001f9, ; uint32_t type_token_id
		i32 180; uint32_t java_name_index
	}, ; 1125
	%struct.TypeMapJava {
		i32 53, ; uint32_t module_index
		i32 u0x02000018, ; uint32_t type_token_id
		i32 1703; uint32_t java_name_index
	}, ; 1126
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000042, ; uint32_t type_token_id
		i32 1299; uint32_t java_name_index
	}, ; 1127
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200021e, ; uint32_t type_token_id
		i32 207; uint32_t java_name_index
	}, ; 1128
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002de, ; uint32_t type_token_id
		i32 295; uint32_t java_name_index
	}, ; 1129
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 9; uint32_t java_name_index
	}, ; 1130
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1148; uint32_t java_name_index
	}, ; 1131
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 1322; uint32_t java_name_index
	}, ; 1132
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003f4, ; uint32_t type_token_id
		i32 1633; uint32_t java_name_index
	}, ; 1133
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000127, ; uint32_t type_token_id
		i32 58; uint32_t java_name_index
	}, ; 1134
	%struct.TypeMapJava {
		i32 53, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1705; uint32_t java_name_index
	}, ; 1135
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x02000045, ; uint32_t type_token_id
		i32 1710; uint32_t java_name_index
	}, ; 1136
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 17; uint32_t java_name_index
	}, ; 1137
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000029, ; uint32_t type_token_id
		i32 833; uint32_t java_name_index
	}, ; 1138
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1332; uint32_t java_name_index
	}, ; 1139
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003ae, ; uint32_t type_token_id
		i32 1584; uint32_t java_name_index
	}, ; 1140
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 714; uint32_t java_name_index
	}, ; 1141
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1125; uint32_t java_name_index
	}, ; 1142
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004a3, ; uint32_t type_token_id
		i32 548; uint32_t java_name_index
	}, ; 1143
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000087, ; uint32_t type_token_id
		i32 1117; uint32_t java_name_index
	}, ; 1144
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 461; uint32_t java_name_index
	}, ; 1145
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000361, ; uint32_t type_token_id
		i32 1513; uint32_t java_name_index
	}, ; 1146
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 1128; uint32_t java_name_index
	}, ; 1147
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000147, ; uint32_t type_token_id
		i32 75; uint32_t java_name_index
	}, ; 1148
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index
		i32 u0x02000079, ; uint32_t type_token_id
		i32 808; uint32_t java_name_index
	}, ; 1149
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000390, ; uint32_t type_token_id
		i32 1559; uint32_t java_name_index
	}, ; 1150
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000cd, ; uint32_t type_token_id
		i32 1166; uint32_t java_name_index
	}, ; 1151
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1379; uint32_t java_name_index
	}, ; 1152
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 1274; uint32_t java_name_index
	}, ; 1153
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000472, ; uint32_t type_token_id
		i32 516; uint32_t java_name_index
	}, ; 1154
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000058, ; uint32_t type_token_id
		i32 1093; uint32_t java_name_index
	}, ; 1155
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000227, ; uint32_t type_token_id
		i32 212; uint32_t java_name_index
	}, ; 1156
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003aa, ; uint32_t type_token_id
		i32 391; uint32_t java_name_index
	}, ; 1157
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1578; uint32_t java_name_index
	}, ; 1158
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 141; uint32_t java_name_index
	}, ; 1159
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200048a, ; uint32_t type_token_id
		i32 532; uint32_t java_name_index
	}, ; 1160
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 672; uint32_t java_name_index
	}, ; 1161
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 685; uint32_t java_name_index
	}, ; 1162
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000142, ; uint32_t type_token_id
		i32 1461; uint32_t java_name_index
	}, ; 1163
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200045a, ; uint32_t type_token_id
		i32 501; uint32_t java_name_index
	}, ; 1164
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000de, ; uint32_t type_token_id
		i32 14; uint32_t java_name_index
	}, ; 1165
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000126, ; uint32_t type_token_id
		i32 57; uint32_t java_name_index
	}, ; 1166
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 1738; uint32_t java_name_index
	}, ; 1167
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 998; uint32_t java_name_index
	}, ; 1168
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000067, ; uint32_t type_token_id
		i32 1047; uint32_t java_name_index
	}, ; 1169
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 723; uint32_t java_name_index
	}, ; 1170
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200048e, ; uint32_t type_token_id
		i32 534; uint32_t java_name_index
	}, ; 1171
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x020000cc, ; uint32_t type_token_id
		i32 1424; uint32_t java_name_index
	}, ; 1172
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1106; uint32_t java_name_index
	}, ; 1173
	%struct.TypeMapJava {
		i32 44, ; uint32_t module_index
		i32 u0x02000015, ; uint32_t type_token_id
		i32 1516; uint32_t java_name_index
	}, ; 1174
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004fd, ; uint32_t type_token_id
		i32 605; uint32_t java_name_index
	}, ; 1175
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200037b, ; uint32_t type_token_id
		i32 356; uint32_t java_name_index
	}, ; 1176
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003b6, ; uint32_t type_token_id
		i32 402; uint32_t java_name_index
	}, ; 1177
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000ce, ; uint32_t type_token_id
		i32 1167; uint32_t java_name_index
	}, ; 1178
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000398, ; uint32_t type_token_id
		i32 374; uint32_t java_name_index
	}, ; 1179
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000062, ; uint32_t type_token_id
		i32 707; uint32_t java_name_index
	}, ; 1180
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000071, ; uint32_t type_token_id
		i32 1326; uint32_t java_name_index
	}, ; 1181
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000516, ; uint32_t type_token_id
		i32 619; uint32_t java_name_index
	}, ; 1182
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1220; uint32_t java_name_index
	}, ; 1183
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200046c, ; uint32_t type_token_id
		i32 511; uint32_t java_name_index
	}, ; 1184
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1405; uint32_t java_name_index
	}, ; 1185
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 1686; uint32_t java_name_index
	}, ; 1186
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000179, ; uint32_t type_token_id
		i32 1496; uint32_t java_name_index
	}, ; 1187
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1725; uint32_t java_name_index
	}, ; 1188
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 1268; uint32_t java_name_index
	}, ; 1189
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1648; uint32_t java_name_index
	}, ; 1190
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x02000046, ; uint32_t type_token_id
		i32 1711; uint32_t java_name_index
	}, ; 1191
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000037, ; uint32_t type_token_id
		i32 1294; uint32_t java_name_index
	}, ; 1192
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000c9, ; uint32_t type_token_id
		i32 958; uint32_t java_name_index
	}, ; 1193
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1184; uint32_t java_name_index
	}, ; 1194
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x02000048, ; uint32_t type_token_id
		i32 1713; uint32_t java_name_index
	}, ; 1195
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x020000a7, ; uint32_t type_token_id
		i32 1403; uint32_t java_name_index
	}, ; 1196
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200037e, ; uint32_t type_token_id
		i32 358; uint32_t java_name_index
	}, ; 1197
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002bf, ; uint32_t type_token_id
		i32 285; uint32_t java_name_index
	}, ; 1198
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004f6, ; uint32_t type_token_id
		i32 598; uint32_t java_name_index
	}, ; 1199
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000087, ; uint32_t type_token_id
		i32 1337; uint32_t java_name_index
	}, ; 1200
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200031c, ; uint32_t type_token_id
		i32 329; uint32_t java_name_index
	}, ; 1201
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1368; uint32_t java_name_index
	}, ; 1202
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200021f, ; uint32_t type_token_id
		i32 208; uint32_t java_name_index
	}, ; 1203
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004f2, ; uint32_t type_token_id
		i32 594; uint32_t java_name_index
	}, ; 1204
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 320; uint32_t java_name_index
	}, ; 1205
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000083, ; uint32_t type_token_id
		i32 913; uint32_t java_name_index
	}, ; 1206
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200038b, ; uint32_t type_token_id
		i32 366; uint32_t java_name_index
	}, ; 1207
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x02000062, ; uint32_t type_token_id
		i32 1362; uint32_t java_name_index
	}, ; 1208
	%struct.TypeMapJava {
		i32 56, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1782; uint32_t java_name_index
	}, ; 1209
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 820; uint32_t java_name_index
	}, ; 1210
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000c1, ; uint32_t type_token_id
		i32 1156; uint32_t java_name_index
	}, ; 1211
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200017c, ; uint32_t type_token_id
		i32 1497; uint32_t java_name_index
	}, ; 1212
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 713; uint32_t java_name_index
	}, ; 1213
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000411, ; uint32_t type_token_id
		i32 462; uint32_t java_name_index
	}, ; 1214
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index
		i32 u0x0200002e, ; uint32_t type_token_id
		i32 803; uint32_t java_name_index
	}, ; 1215
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x02000020, ; uint32_t type_token_id
		i32 1278; uint32_t java_name_index
	}, ; 1216
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000084, ; uint32_t type_token_id
		i32 1335; uint32_t java_name_index
	}, ; 1217
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 956; uint32_t java_name_index
	}, ; 1218
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200010f, ; uint32_t type_token_id
		i32 42; uint32_t java_name_index
	}, ; 1219
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000010, ; uint32_t type_token_id
		i32 638; uint32_t java_name_index
	}, ; 1220
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000240, ; uint32_t type_token_id
		i32 227; uint32_t java_name_index
	}, ; 1221
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x02000099, ; uint32_t type_token_id
		i32 1394; uint32_t java_name_index
	}, ; 1222
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200019f, ; uint32_t type_token_id
		i32 126; uint32_t java_name_index
	}, ; 1223
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003b9, ; uint32_t type_token_id
		i32 405; uint32_t java_name_index
	}, ; 1224
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 453; uint32_t java_name_index
	}, ; 1225
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200013b, ; uint32_t type_token_id
		i32 1228; uint32_t java_name_index
	}, ; 1226
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200052a, ; uint32_t type_token_id
		i32 636; uint32_t java_name_index
	}, ; 1227
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000016, ; uint32_t type_token_id
		i32 854; uint32_t java_name_index
	}, ; 1228
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1698; uint32_t java_name_index
	}, ; 1229
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 1096; uint32_t java_name_index
	}, ; 1230
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 0; uint32_t java_name_index
	}, ; 1231
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 650; uint32_t java_name_index
	}, ; 1232
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000264, ; uint32_t type_token_id
		i32 247; uint32_t java_name_index
	}, ; 1233
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000047, ; uint32_t type_token_id
		i32 1080; uint32_t java_name_index
	}, ; 1234
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1720; uint32_t java_name_index
	}, ; 1235
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200015f, ; uint32_t type_token_id
		i32 1474; uint32_t java_name_index
	}, ; 1236
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003a6, ; uint32_t type_token_id
		i32 387; uint32_t java_name_index
	}, ; 1237
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1172; uint32_t java_name_index
	}, ; 1238
	%struct.TypeMapJava {
		i32 55, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1778; uint32_t java_name_index
	}, ; 1239
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000491, ; uint32_t type_token_id
		i32 536; uint32_t java_name_index
	}, ; 1240
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000051, ; uint32_t type_token_id
		i32 1026; uint32_t java_name_index
	}, ; 1241
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002f9, ; uint32_t type_token_id
		i32 306; uint32_t java_name_index
	}, ; 1242
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 27; uint32_t java_name_index
	}, ; 1243
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 856; uint32_t java_name_index
	}, ; 1244
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 680; uint32_t java_name_index
	}, ; 1245
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000131, ; uint32_t type_token_id
		i32 64; uint32_t java_name_index
	}, ; 1246
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000a4, ; uint32_t type_token_id
		i32 930; uint32_t java_name_index
	}, ; 1247
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000004, ; uint32_t type_token_id
		i32 863; uint32_t java_name_index
	}, ; 1248
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1369; uint32_t java_name_index
	}, ; 1249
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001cf, ; uint32_t type_token_id
		i32 151; uint32_t java_name_index
	}, ; 1250
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 992; uint32_t java_name_index
	}, ; 1251
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x02000042, ; uint32_t type_token_id
		i32 1708; uint32_t java_name_index
	}, ; 1252
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000258, ; uint32_t type_token_id
		i32 241; uint32_t java_name_index
	}, ; 1253
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000418, ; uint32_t type_token_id
		i32 467; uint32_t java_name_index
	}, ; 1254
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1440; uint32_t java_name_index
	}, ; 1255
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000130, ; uint32_t type_token_id
		i32 1457; uint32_t java_name_index
	}, ; 1256
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000336, ; uint32_t type_token_id
		i32 344; uint32_t java_name_index
	}, ; 1257
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003de, ; uint32_t type_token_id
		i32 1610; uint32_t java_name_index
	}, ; 1258
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x0200035c, ; uint32_t type_token_id
		i32 1535; uint32_t java_name_index
	}, ; 1259
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000460, ; uint32_t type_token_id
		i32 505; uint32_t java_name_index
	}, ; 1260
	%struct.TypeMapJava {
		i32 50, ; uint32_t module_index
		i32 u0x02000017, ; uint32_t type_token_id
		i32 1677; uint32_t java_name_index
	}, ; 1261
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 1395; uint32_t java_name_index
	}, ; 1262
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200027c, ; uint32_t type_token_id
		i32 253; uint32_t java_name_index
	}, ; 1263
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000249, ; uint32_t type_token_id
		i32 233; uint32_t java_name_index
	}, ; 1264
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000157, ; uint32_t type_token_id
		i32 1249; uint32_t java_name_index
	}, ; 1265
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 845; uint32_t java_name_index
	}, ; 1266
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x02000055, ; uint32_t type_token_id
		i32 1353; uint32_t java_name_index
	}, ; 1267
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000241, ; uint32_t type_token_id
		i32 228; uint32_t java_name_index
	}, ; 1268
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020005eb, ; uint32_t type_token_id
		i32 1533; uint32_t java_name_index
	}, ; 1269
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020006a2, ; uint32_t type_token_id
		i32 1547; uint32_t java_name_index
	}, ; 1270
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1767; uint32_t java_name_index
	}, ; 1271
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x02000082, ; uint32_t type_token_id
		i32 1741; uint32_t java_name_index
	}, ; 1272
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 11; uint32_t java_name_index
	}, ; 1273
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1431; uint32_t java_name_index
	}, ; 1274
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x02000018, ; uint32_t type_token_id
		i32 1272; uint32_t java_name_index
	}, ; 1275
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000120, ; uint32_t type_token_id
		i32 51; uint32_t java_name_index
	}, ; 1276
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000165, ; uint32_t type_token_id
		i32 1256; uint32_t java_name_index
	}, ; 1277
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000020, ; uint32_t type_token_id
		i32 827; uint32_t java_name_index
	}, ; 1278
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000073, ; uint32_t type_token_id
		i32 1057; uint32_t java_name_index
	}, ; 1279
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000155, ; uint32_t type_token_id
		i32 80; uint32_t java_name_index
	}, ; 1280
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000213, ; uint32_t type_token_id
		i32 198; uint32_t java_name_index
	}, ; 1281
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001c4, ; uint32_t type_token_id
		i32 144; uint32_t java_name_index
	}, ; 1282
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1113; uint32_t java_name_index
	}, ; 1283
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200037f, ; uint32_t type_token_id
		i32 359; uint32_t java_name_index
	}, ; 1284
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000194, ; uint32_t type_token_id
		i32 118; uint32_t java_name_index
	}, ; 1285
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000109, ; uint32_t type_token_id
		i32 38; uint32_t java_name_index
	}, ; 1286
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1663; uint32_t java_name_index
	}, ; 1287
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000051, ; uint32_t type_token_id
		i32 695; uint32_t java_name_index
	}, ; 1288
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index
		i32 u0x02000063, ; uint32_t type_token_id
		i32 806; uint32_t java_name_index
	}, ; 1289
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 950; uint32_t java_name_index
	}, ; 1290
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 1681; uint32_t java_name_index
	}, ; 1291
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x02000015, ; uint32_t type_token_id
		i32 968; uint32_t java_name_index
	}, ; 1292
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000073, ; uint32_t type_token_id
		i32 904; uint32_t java_name_index
	}, ; 1293
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000cf, ; uint32_t type_token_id
		i32 1168; uint32_t java_name_index
	}, ; 1294
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000228, ; uint32_t type_token_id
		i32 213; uint32_t java_name_index
	}, ; 1295
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000019, ; uint32_t type_token_id
		i32 642; uint32_t java_name_index
	}, ; 1296
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000066, ; uint32_t type_token_id
		i32 1046; uint32_t java_name_index
	}, ; 1297
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000cc, ; uint32_t type_token_id
		i32 1165; uint32_t java_name_index
	}, ; 1298
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index
		i32 u0x02000078, ; uint32_t type_token_id
		i32 1282; uint32_t java_name_index
	}, ; 1299
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000070, ; uint32_t type_token_id
		i32 1054; uint32_t java_name_index
	}, ; 1300
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200014b, ; uint32_t type_token_id
		i32 77; uint32_t java_name_index
	}, ; 1301
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x02000012, ; uint32_t type_token_id
		i32 966; uint32_t java_name_index
	}, ; 1302
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004f9, ; uint32_t type_token_id
		i32 601; uint32_t java_name_index
	}, ; 1303
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003a2, ; uint32_t type_token_id
		i32 383; uint32_t java_name_index
	}, ; 1304
	%struct.TypeMapJava {
		i32 47, ; uint32_t module_index
		i32 u0x02000020, ; uint32_t type_token_id
		i32 1646; uint32_t java_name_index
	}, ; 1305
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1150; uint32_t java_name_index
	}, ; 1306
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 100; uint32_t java_name_index
	}, ; 1307
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004f0, ; uint32_t type_token_id
		i32 592; uint32_t java_name_index
	}, ; 1308
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x02000047, ; uint32_t type_token_id
		i32 1712; uint32_t java_name_index
	}, ; 1309
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000125, ; uint32_t type_token_id
		i32 56; uint32_t java_name_index
	}, ; 1310
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1374; uint32_t java_name_index
	}, ; 1311
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000071, ; uint32_t type_token_id
		i32 765; uint32_t java_name_index
	}, ; 1312
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x02000033, ; uint32_t type_token_id
		i32 1700; uint32_t java_name_index
	}, ; 1313
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1392; uint32_t java_name_index
	}, ; 1314
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000c3, ; uint32_t type_token_id
		i32 954; uint32_t java_name_index
	}, ; 1315
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x02000016, ; uint32_t type_token_id
		i32 985; uint32_t java_name_index
	}, ; 1316
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 835; uint32_t java_name_index
	}, ; 1317
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x0200062e, ; uint32_t type_token_id
		i32 1623; uint32_t java_name_index
	}, ; 1318
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x02000012, ; uint32_t type_token_id
		i32 1266; uint32_t java_name_index
	}, ; 1319
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000061, ; uint32_t type_token_id
		i32 890; uint32_t java_name_index
	}, ; 1320
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x02000083, ; uint32_t type_token_id
		i32 1381; uint32_t java_name_index
	}, ; 1321
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000153, ; uint32_t type_token_id
		i32 1245; uint32_t java_name_index
	}, ; 1322
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004e2, ; uint32_t type_token_id
		i32 582; uint32_t java_name_index
	}, ; 1323
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x020000dd, ; uint32_t type_token_id
		i32 1434; uint32_t java_name_index
	}, ; 1324
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200030d, ; uint32_t type_token_id
		i32 316; uint32_t java_name_index
	}, ; 1325
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003ea, ; uint32_t type_token_id
		i32 440; uint32_t java_name_index
	}, ; 1326
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000390, ; uint32_t type_token_id
		i32 370; uint32_t java_name_index
	}, ; 1327
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000190, ; uint32_t type_token_id
		i32 115; uint32_t java_name_index
	}, ; 1328
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1758; uint32_t java_name_index
	}, ; 1329
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 274; uint32_t java_name_index
	}, ; 1330
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000502, ; uint32_t type_token_id
		i32 608; uint32_t java_name_index
	}, ; 1331
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 280; uint32_t java_name_index
	}, ; 1332
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x020000b0, ; uint32_t type_token_id
		i32 1408; uint32_t java_name_index
	}, ; 1333
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x02000021, ; uint32_t type_token_id
		i32 1690; uint32_t java_name_index
	}, ; 1334
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1214; uint32_t java_name_index
	}, ; 1335
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 1752; uint32_t java_name_index
	}, ; 1336
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000142, ; uint32_t type_token_id
		i32 1233; uint32_t java_name_index
	}, ; 1337
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000050, ; uint32_t type_token_id
		i32 670; uint32_t java_name_index
	}, ; 1338
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200013a, ; uint32_t type_token_id
		i32 1227; uint32_t java_name_index
	}, ; 1339
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1185; uint32_t java_name_index
	}, ; 1340
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1043; uint32_t java_name_index
	}, ; 1341
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200050b, ; uint32_t type_token_id
		i32 614; uint32_t java_name_index
	}, ; 1342
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004cb, ; uint32_t type_token_id
		i32 569; uint32_t java_name_index
	}, ; 1343
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 824; uint32_t java_name_index
	}, ; 1344
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000009, ; uint32_t type_token_id
		i32 649; uint32_t java_name_index
	}, ; 1345
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003c7, ; uint32_t type_token_id
		i32 417; uint32_t java_name_index
	}, ; 1346
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x02000027, ; uint32_t type_token_id
		i32 860; uint32_t java_name_index
	}, ; 1347
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000160, ; uint32_t type_token_id
		i32 1476; uint32_t java_name_index
	}, ; 1348
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x020000b2, ; uint32_t type_token_id
		i32 776; uint32_t java_name_index
	}, ; 1349
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 828; uint32_t java_name_index
	}, ; 1350
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1086; uint32_t java_name_index
	}, ; 1351
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 63; uint32_t java_name_index
	}, ; 1352
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000044, ; uint32_t type_token_id
		i32 1301; uint32_t java_name_index
	}, ; 1353
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x020000af, ; uint32_t type_token_id
		i32 1764; uint32_t java_name_index
	}, ; 1354
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000129, ; uint32_t type_token_id
		i32 1450; uint32_t java_name_index
	}, ; 1355
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1208; uint32_t java_name_index
	}, ; 1356
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x020000de, ; uint32_t type_token_id
		i32 1435; uint32_t java_name_index
	}, ; 1357
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 617; uint32_t java_name_index
	}, ; 1358
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x02000078, ; uint32_t type_token_id
		i32 753; uint32_t java_name_index
	}, ; 1359
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x020000a5, ; uint32_t type_token_id
		i32 769; uint32_t java_name_index
	}, ; 1360
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x020000c6, ; uint32_t type_token_id
		i32 1421; uint32_t java_name_index
	}, ; 1361
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000158, ; uint32_t type_token_id
		i32 82; uint32_t java_name_index
	}, ; 1362
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index
		i32 u0x02000008, ; uint32_t type_token_id
		i32 732; uint32_t java_name_index
	}, ; 1363
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000145, ; uint32_t type_token_id
		i32 73; uint32_t java_name_index
	}, ; 1364
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000394, ; uint32_t type_token_id
		i32 1563; uint32_t java_name_index
	}, ; 1365
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1098; uint32_t java_name_index
	}, ; 1366
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000006, ; uint32_t type_token_id
		i32 961; uint32_t java_name_index
	}, ; 1367
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 583; uint32_t java_name_index
	}, ; 1368
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200034a, ; uint32_t type_token_id
		i32 1506; uint32_t java_name_index
	}, ; 1369
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 565; uint32_t java_name_index
	}, ; 1370
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200013a, ; uint32_t type_token_id
		i32 68; uint32_t java_name_index
	}, ; 1371
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000634, ; uint32_t type_token_id
		i32 1629; uint32_t java_name_index
	}, ; 1372
	%struct.TypeMapJava {
		i32 47, ; uint32_t module_index
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 1643; uint32_t java_name_index
	}, ; 1373
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000ab, ; uint32_t type_token_id
		i32 1140; uint32_t java_name_index
	}, ; 1374
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200032b, ; uint32_t type_token_id
		i32 335; uint32_t java_name_index
	}, ; 1375
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000334, ; uint32_t type_token_id
		i32 343; uint32_t java_name_index
	}, ; 1376
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 1319; uint32_t java_name_index
	}, ; 1377
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x0200039b, ; uint32_t type_token_id
		i32 1572; uint32_t java_name_index
	}, ; 1378
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000611, ; uint32_t type_token_id
		i32 1571; uint32_t java_name_index
	}, ; 1379
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000060, ; uint32_t type_token_id
		i32 889; uint32_t java_name_index
	}, ; 1380
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1203; uint32_t java_name_index
	}, ; 1381
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002d4, ; uint32_t type_token_id
		i32 291; uint32_t java_name_index
	}, ; 1382
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000046, ; uint32_t type_token_id
		i32 1303; uint32_t java_name_index
	}, ; 1383
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x02000065, ; uint32_t type_token_id
		i32 1727; uint32_t java_name_index
	}, ; 1384
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000201, ; uint32_t type_token_id
		i32 186; uint32_t java_name_index
	}, ; 1385
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000195, ; uint32_t type_token_id
		i32 119; uint32_t java_name_index
	}, ; 1386
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004a9, ; uint32_t type_token_id
		i32 552; uint32_t java_name_index
	}, ; 1387
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1252; uint32_t java_name_index
	}, ; 1388
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000354, ; uint32_t type_token_id
		i32 348; uint32_t java_name_index
	}, ; 1389
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000004, ; uint32_t type_token_id
		i32 644; uint32_t java_name_index
	}, ; 1390
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200044e, ; uint32_t type_token_id
		i32 495; uint32_t java_name_index
	}, ; 1391
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 234; uint32_t java_name_index
	}, ; 1392
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 277; uint32_t java_name_index
	}, ; 1393
	%struct.TypeMapJava {
		i32 47, ; uint32_t module_index
		i32 u0x02000011, ; uint32_t type_token_id
		i32 1638; uint32_t java_name_index
	}, ; 1394
	%struct.TypeMapJava {
		i32 45, ; uint32_t module_index
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 1526; uint32_t java_name_index
	}, ; 1395
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1186; uint32_t java_name_index
	}, ; 1396
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003d4, ; uint32_t type_token_id
		i32 1608; uint32_t java_name_index
	}, ; 1397
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000024, ; uint32_t type_token_id
		i32 652; uint32_t java_name_index
	}, ; 1398
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 729; uint32_t java_name_index
	}, ; 1399
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 972; uint32_t java_name_index
	}, ; 1400
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200043b, ; uint32_t type_token_id
		i32 486; uint32_t java_name_index
	}, ; 1401
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002f4, ; uint32_t type_token_id
		i32 304; uint32_t java_name_index
	}, ; 1402
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200042d, ; uint32_t type_token_id
		i32 478; uint32_t java_name_index
	}, ; 1403
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x02000018, ; uint32_t type_token_id
		i32 986; uint32_t java_name_index
	}, ; 1404
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1422; uint32_t java_name_index
	}, ; 1405
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x0200008b, ; uint32_t type_token_id
		i32 1386; uint32_t java_name_index
	}, ; 1406
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000050, ; uint32_t type_token_id
		i32 1025; uint32_t java_name_index
	}, ; 1407
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x02000019, ; uint32_t type_token_id
		i32 971; uint32_t java_name_index
	}, ; 1408
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 693; uint32_t java_name_index
	}, ; 1409
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 272; uint32_t java_name_index
	}, ; 1410
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000244, ; uint32_t type_token_id
		i32 231; uint32_t java_name_index
	}, ; 1411
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1373; uint32_t java_name_index
	}, ; 1412
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000003, ; uint32_t type_token_id
		i32 862; uint32_t java_name_index
	}, ; 1413
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1695; uint32_t java_name_index
	}, ; 1414
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200016f, ; uint32_t type_token_id
		i32 1488; uint32_t java_name_index
	}, ; 1415
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003c1, ; uint32_t type_token_id
		i32 412; uint32_t java_name_index
	}, ; 1416
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200011f, ; uint32_t type_token_id
		i32 1444; uint32_t java_name_index
	}, ; 1417
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1105; uint32_t java_name_index
	}, ; 1418
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000084, ; uint32_t type_token_id
		i32 1069; uint32_t java_name_index
	}, ; 1419
	%struct.TypeMapJava {
		i32 50, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1676; uint32_t java_name_index
	}, ; 1420
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000030, ; uint32_t type_token_id
		i32 661; uint32_t java_name_index
	}, ; 1421
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000326, ; uint32_t type_token_id
		i32 332; uint32_t java_name_index
	}, ; 1422
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000059, ; uint32_t type_token_id
		i32 1316; uint32_t java_name_index
	}, ; 1423
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1262; uint32_t java_name_index
	}, ; 1424
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200025c, ; uint32_t type_token_id
		i32 243; uint32_t java_name_index
	}, ; 1425
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1182; uint32_t java_name_index
	}, ; 1426
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003bf, ; uint32_t type_token_id
		i32 411; uint32_t java_name_index
	}, ; 1427
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000f2, ; uint32_t type_token_id
		i32 25; uint32_t java_name_index
	}, ; 1428
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000031, ; uint32_t type_token_id
		i32 999; uint32_t java_name_index
	}, ; 1429
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004f1, ; uint32_t type_token_id
		i32 593; uint32_t java_name_index
	}, ; 1430
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200045c, ; uint32_t type_token_id
		i32 502; uint32_t java_name_index
	}, ; 1431
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 1376; uint32_t java_name_index
	}, ; 1432
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x0200060f, ; uint32_t type_token_id
		i32 1568; uint32_t java_name_index
	}, ; 1433
	%struct.TypeMapJava {
		i32 45, ; uint32_t module_index
		i32 u0x02000020, ; uint32_t type_token_id
		i32 1518; uint32_t java_name_index
	}, ; 1434
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200017e, ; uint32_t type_token_id
		i32 104; uint32_t java_name_index
	}, ; 1435
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1217; uint32_t java_name_index
	}, ; 1436
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200010c, ; uint32_t type_token_id
		i32 40; uint32_t java_name_index
	}, ; 1437
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001f1, ; uint32_t type_token_id
		i32 174; uint32_t java_name_index
	}, ; 1438
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000442, ; uint32_t type_token_id
		i32 490; uint32_t java_name_index
	}, ; 1439
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000164, ; uint32_t type_token_id
		i32 1479; uint32_t java_name_index
	}, ; 1440
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 866; uint32_t java_name_index
	}, ; 1441
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 1008; uint32_t java_name_index
	}, ; 1442
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000117, ; uint32_t type_token_id
		i32 45; uint32_t java_name_index
	}, ; 1443
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1350; uint32_t java_name_index
	}, ; 1444
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000007, ; uint32_t type_token_id
		i32 865; uint32_t java_name_index
	}, ; 1445
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003d5, ; uint32_t type_token_id
		i32 427; uint32_t java_name_index
	}, ; 1446
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000439, ; uint32_t type_token_id
		i32 484; uint32_t java_name_index
	}, ; 1447
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 1341; uint32_t java_name_index
	}, ; 1448
	%struct.TypeMapJava {
		i32 39, ; uint32_t module_index
		i32 u0x02000011, ; uint32_t type_token_id
		i32 1351; uint32_t java_name_index
	}, ; 1449
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000042, ; uint32_t type_token_id
		i32 1077; uint32_t java_name_index
	}, ; 1450
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000013, ; uint32_t type_token_id
		i32 759; uint32_t java_name_index
	}, ; 1451
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000464, ; uint32_t type_token_id
		i32 506; uint32_t java_name_index
	}, ; 1452
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x02000022, ; uint32_t type_token_id
		i32 1279; uint32_t java_name_index
	}, ; 1453
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000202, ; uint32_t type_token_id
		i32 187; uint32_t java_name_index
	}, ; 1454
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000164, ; uint32_t type_token_id
		i32 88; uint32_t java_name_index
	}, ; 1455
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 734; uint32_t java_name_index
	}, ; 1456
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000068, ; uint32_t type_token_id
		i32 896; uint32_t java_name_index
	}, ; 1457
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004a7, ; uint32_t type_token_id
		i32 551; uint32_t java_name_index
	}, ; 1458
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 857; uint32_t java_name_index
	}, ; 1459
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1221; uint32_t java_name_index
	}, ; 1460
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 1277; uint32_t java_name_index
	}, ; 1461
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003d3, ; uint32_t type_token_id
		i32 425; uint32_t java_name_index
	}, ; 1462
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 16; uint32_t java_name_index
	}, ; 1463
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1372; uint32_t java_name_index
	}, ; 1464
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000198, ; uint32_t type_token_id
		i32 120; uint32_t java_name_index
	}, ; 1465
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002fb, ; uint32_t type_token_id
		i32 308; uint32_t java_name_index
	}, ; 1466
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x0200060c, ; uint32_t type_token_id
		i32 1566; uint32_t java_name_index
	}, ; 1467
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1288; uint32_t java_name_index
	}, ; 1468
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004c7, ; uint32_t type_token_id
		i32 566; uint32_t java_name_index
	}, ; 1469
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 581; uint32_t java_name_index
	}, ; 1470
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003ac, ; uint32_t type_token_id
		i32 1583; uint32_t java_name_index
	}, ; 1471
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 951; uint32_t java_name_index
	}, ; 1472
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 812; uint32_t java_name_index
	}, ; 1473
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000242, ; uint32_t type_token_id
		i32 229; uint32_t java_name_index
	}, ; 1474
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 1298; uint32_t java_name_index
	}, ; 1475
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 667; uint32_t java_name_index
	}, ; 1476
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 830; uint32_t java_name_index
	}, ; 1477
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 979; uint32_t java_name_index
	}, ; 1478
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003dd, ; uint32_t type_token_id
		i32 433; uint32_t java_name_index
	}, ; 1479
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003df, ; uint32_t type_token_id
		i32 1611; uint32_t java_name_index
	}, ; 1480
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000393, ; uint32_t type_token_id
		i32 1562; uint32_t java_name_index
	}, ; 1481
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200012c, ; uint32_t type_token_id
		i32 1453; uint32_t java_name_index
	}, ; 1482
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003c2, ; uint32_t type_token_id
		i32 1591; uint32_t java_name_index
	}, ; 1483
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 1038; uint32_t java_name_index
	}, ; 1484
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003ee, ; uint32_t type_token_id
		i32 443; uint32_t java_name_index
	}, ; 1485
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1198; uint32_t java_name_index
	}, ; 1486
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000c7, ; uint32_t type_token_id
		i32 1160; uint32_t java_name_index
	}, ; 1487
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 873; uint32_t java_name_index
	}, ; 1488
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200032c, ; uint32_t type_token_id
		i32 336; uint32_t java_name_index
	}, ; 1489
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index
		i32 u0x02000018, ; uint32_t type_token_id
		i32 742; uint32_t java_name_index
	}, ; 1490
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x020000cf, ; uint32_t type_token_id
		i32 1426; uint32_t java_name_index
	}, ; 1491
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1423; uint32_t java_name_index
	}, ; 1492
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200045f, ; uint32_t type_token_id
		i32 504; uint32_t java_name_index
	}, ; 1493
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000132, ; uint32_t type_token_id
		i32 792; uint32_t java_name_index
	}, ; 1494
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 1737; uint32_t java_name_index
	}, ; 1495
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000125, ; uint32_t type_token_id
		i32 1447; uint32_t java_name_index
	}, ; 1496
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003ce, ; uint32_t type_token_id
		i32 1602; uint32_t java_name_index
	}, ; 1497
	%struct.TypeMapJava {
		i32 55, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 1777; uint32_t java_name_index
	}, ; 1498
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000070, ; uint32_t type_token_id
		i32 764; uint32_t java_name_index
	}, ; 1499
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000525, ; uint32_t type_token_id
		i32 632; uint32_t java_name_index
	}, ; 1500
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1755; uint32_t java_name_index
	}, ; 1501
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 722; uint32_t java_name_index
	}, ; 1502
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 451; uint32_t java_name_index
	}, ; 1503
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 10; uint32_t java_name_index
	}, ; 1504
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000036, ; uint32_t type_token_id
		i32 1293; uint32_t java_name_index
	}, ; 1505
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000363, ; uint32_t type_token_id
		i32 1540; uint32_t java_name_index
	}, ; 1506
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000296, ; uint32_t type_token_id
		i32 266; uint32_t java_name_index
	}, ; 1507
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1180; uint32_t java_name_index
	}, ; 1508
	%struct.TypeMapJava {
		i32 45, ; uint32_t module_index
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 1523; uint32_t java_name_index
	}, ; 1509
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000065, ; uint32_t type_token_id
		i32 894; uint32_t java_name_index
	}, ; 1510
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 1129; uint32_t java_name_index
	}, ; 1511
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1189; uint32_t java_name_index
	}, ; 1512
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003a8, ; uint32_t type_token_id
		i32 389; uint32_t java_name_index
	}, ; 1513
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1211; uint32_t java_name_index
	}, ; 1514
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000311, ; uint32_t type_token_id
		i32 319; uint32_t java_name_index
	}, ; 1515
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 1419; uint32_t java_name_index
	}, ; 1516
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000043, ; uint32_t type_token_id
		i32 1300; uint32_t java_name_index
	}, ; 1517
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 268; uint32_t java_name_index
	}, ; 1518
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000147, ; uint32_t type_token_id
		i32 1236; uint32_t java_name_index
	}, ; 1519
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 573; uint32_t java_name_index
	}, ; 1520
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200051e, ; uint32_t type_token_id
		i32 626; uint32_t java_name_index
	}, ; 1521
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000c3, ; uint32_t type_token_id
		i32 1157; uint32_t java_name_index
	}, ; 1522
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x020000da, ; uint32_t type_token_id
		i32 1432; uint32_t java_name_index
	}, ; 1523
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000103, ; uint32_t type_token_id
		i32 34; uint32_t java_name_index
	}, ; 1524
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1283; uint32_t java_name_index
	}, ; 1525
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1765; uint32_t java_name_index
	}, ; 1526
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 196; uint32_t java_name_index
	}, ; 1527
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 657; uint32_t java_name_index
	}, ; 1528
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000085, ; uint32_t type_token_id
		i32 726; uint32_t java_name_index
	}, ; 1529
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002f6, ; uint32_t type_token_id
		i32 305; uint32_t java_name_index
	}, ; 1530
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1216; uint32_t java_name_index
	}, ; 1531
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000057, ; uint32_t type_token_id
		i32 1032; uint32_t java_name_index
	}, ; 1532
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000a3, ; uint32_t type_token_id
		i32 929; uint32_t java_name_index
	}, ; 1533
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000628, ; uint32_t type_token_id
		i32 1616; uint32_t java_name_index
	}, ; 1534
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000493, ; uint32_t type_token_id
		i32 537; uint32_t java_name_index
	}, ; 1535
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1338; uint32_t java_name_index
	}, ; 1536
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 93; uint32_t java_name_index
	}, ; 1537
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x020000a7, ; uint32_t type_token_id
		i32 771; uint32_t java_name_index
	}, ; 1538
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020002ec, ; uint32_t type_token_id
		i32 1501; uint32_t java_name_index
	}, ; 1539
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index
		i32 u0x02000016, ; uint32_t type_token_id
		i32 740; uint32_t java_name_index
	}, ; 1540
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 28; uint32_t java_name_index
	}, ; 1541
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000b2, ; uint32_t type_token_id
		i32 1146; uint32_t java_name_index
	}, ; 1542
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000481, ; uint32_t type_token_id
		i32 526; uint32_t java_name_index
	}, ; 1543
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200019d, ; uint32_t type_token_id
		i32 124; uint32_t java_name_index
	}, ; 1544
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000cb, ; uint32_t type_token_id
		i32 1164; uint32_t java_name_index
	}, ; 1545
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003f5, ; uint32_t type_token_id
		i32 446; uint32_t java_name_index
	}, ; 1546
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x0200035b, ; uint32_t type_token_id
		i32 1534; uint32_t java_name_index
	}, ; 1547
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index
		i32 u0x02000009, ; uint32_t type_token_id
		i32 683; uint32_t java_name_index
	}, ; 1548
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001a0, ; uint32_t type_token_id
		i32 127; uint32_t java_name_index
	}, ; 1549
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 584; uint32_t java_name_index
	}, ; 1550
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 575; uint32_t java_name_index
	}, ; 1551
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000004, ; uint32_t type_token_id
		i32 959; uint32_t java_name_index
	}, ; 1552
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x02000057, ; uint32_t type_token_id
		i32 1723; uint32_t java_name_index
	}, ; 1553
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000143, ; uint32_t type_token_id
		i32 1234; uint32_t java_name_index
	}, ; 1554
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001e5, ; uint32_t type_token_id
		i32 167; uint32_t java_name_index
	}, ; 1555
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000106, ; uint32_t type_token_id
		i32 783; uint32_t java_name_index
	}, ; 1556
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000028, ; uint32_t type_token_id
		i32 832; uint32_t java_name_index
	}, ; 1557
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000397, ; uint32_t type_token_id
		i32 1567; uint32_t java_name_index
	}, ; 1558
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 1416; uint32_t java_name_index
	}, ; 1559
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200012d, ; uint32_t type_token_id
		i32 1454; uint32_t java_name_index
	}, ; 1560
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000167, ; uint32_t type_token_id
		i32 1257; uint32_t java_name_index
	}, ; 1561
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000172, ; uint32_t type_token_id
		i32 97; uint32_t java_name_index
	}, ; 1562
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 137; uint32_t java_name_index
	}, ; 1563
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000b3, ; uint32_t type_token_id
		i32 1147; uint32_t java_name_index
	}, ; 1564
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000124, ; uint32_t type_token_id
		i32 55; uint32_t java_name_index
	}, ; 1565
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000482, ; uint32_t type_token_id
		i32 527; uint32_t java_name_index
	}, ; 1566
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x02000023, ; uint32_t type_token_id
		i32 1653; uint32_t java_name_index
	}, ; 1567
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200031e, ; uint32_t type_token_id
		i32 330; uint32_t java_name_index
	}, ; 1568
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000129, ; uint32_t type_token_id
		i32 60; uint32_t java_name_index
	}, ; 1569
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 69; uint32_t java_name_index
	}, ; 1570
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000f7, ; uint32_t type_token_id
		i32 1190; uint32_t java_name_index
	}, ; 1571
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1413; uint32_t java_name_index
	}, ; 1572
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 841; uint32_t java_name_index
	}, ; 1573
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 254; uint32_t java_name_index
	}, ; 1574
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 1309; uint32_t java_name_index
	}, ; 1575
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 1339; uint32_t java_name_index
	}, ; 1576
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 675; uint32_t java_name_index
	}, ; 1577
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x02000035, ; uint32_t type_token_id
		i32 1702; uint32_t java_name_index
	}, ; 1578
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000426, ; uint32_t type_token_id
		i32 474; uint32_t java_name_index
	}, ; 1579
	%struct.TypeMapJava {
		i32 38, ; uint32_t module_index
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 1348; uint32_t java_name_index
	}, ; 1580
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x020000ac, ; uint32_t type_token_id
		i32 774; uint32_t java_name_index
	}, ; 1581
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000415, ; uint32_t type_token_id
		i32 464; uint32_t java_name_index
	}, ; 1582
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 1745; uint32_t java_name_index
	}, ; 1583
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 236; uint32_t java_name_index
	}, ; 1584
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x020000a1, ; uint32_t type_token_id
		i32 768; uint32_t java_name_index
	}, ; 1585
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 452; uint32_t java_name_index
	}, ; 1586
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x02000066, ; uint32_t type_token_id
		i32 1728; uint32_t java_name_index
	}, ; 1587
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 754; uint32_t java_name_index
	}, ; 1588
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000aa, ; uint32_t type_token_id
		i32 935; uint32_t java_name_index
	}, ; 1589
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x02000078, ; uint32_t type_token_id
		i32 1736; uint32_t java_name_index
	}, ; 1590
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 246; uint32_t java_name_index
	}, ; 1591
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000076, ; uint32_t type_token_id
		i32 1060; uint32_t java_name_index
	}, ; 1592
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000d0, ; uint32_t type_token_id
		i32 1169; uint32_t java_name_index
	}, ; 1593
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200008c, ; uint32_t type_token_id
		i32 1120; uint32_t java_name_index
	}, ; 1594
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000161, ; uint32_t type_token_id
		i32 85; uint32_t java_name_index
	}, ; 1595
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000416, ; uint32_t type_token_id
		i32 465; uint32_t java_name_index
	}, ; 1596
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1732; uint32_t java_name_index
	}, ; 1597
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x0200034a, ; uint32_t type_token_id
		i32 1531; uint32_t java_name_index
	}, ; 1598
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 981; uint32_t java_name_index
	}, ; 1599
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1175; uint32_t java_name_index
	}, ; 1600
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 964; uint32_t java_name_index
	}, ; 1601
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x02000020, ; uint32_t type_token_id
		i32 993; uint32_t java_name_index
	}, ; 1602
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000164, ; uint32_t type_token_id
		i32 1255; uint32_t java_name_index
	}, ; 1603
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 744; uint32_t java_name_index
	}, ; 1604
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1265; uint32_t java_name_index
	}, ; 1605
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000315, ; uint32_t type_token_id
		i32 322; uint32_t java_name_index
	}, ; 1606
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 823; uint32_t java_name_index
	}, ; 1607
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 252; uint32_t java_name_index
	}, ; 1608
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 47; uint32_t java_name_index
	}, ; 1609
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 807; uint32_t java_name_index
	}, ; 1610
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1065; uint32_t java_name_index
	}, ; 1611
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1414; uint32_t java_name_index
	}, ; 1612
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004f7, ; uint32_t type_token_id
		i32 599; uint32_t java_name_index
	}, ; 1613
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 1772; uint32_t java_name_index
	}, ; 1614
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x02000006, ; uint32_t type_token_id
		i32 815; uint32_t java_name_index
	}, ; 1615
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000070, ; uint32_t type_token_id
		i32 1325; uint32_t java_name_index
	}, ; 1616
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 1122; uint32_t java_name_index
	}, ; 1617
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000168, ; uint32_t type_token_id
		i32 91; uint32_t java_name_index
	}, ; 1618
	%struct.TypeMapJava {
		i32 36, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1289; uint32_t java_name_index
	}, ; 1619
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000fc, ; uint32_t type_token_id
		i32 1193; uint32_t java_name_index
	}, ; 1620
	%struct.TypeMapJava {
		i32 53, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1704; uint32_t java_name_index
	}, ; 1621
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000023, ; uint32_t type_token_id
		i32 651; uint32_t java_name_index
	}, ; 1622
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000385, ; uint32_t type_token_id
		i32 363; uint32_t java_name_index
	}, ; 1623
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 460; uint32_t java_name_index
	}, ; 1624
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 1696; uint32_t java_name_index
	}, ; 1625
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 737; uint32_t java_name_index
	}, ; 1626
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000495, ; uint32_t type_token_id
		i32 538; uint32_t java_name_index
	}, ; 1627
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 1072; uint32_t java_name_index
	}, ; 1628
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x020000a8, ; uint32_t type_token_id
		i32 772; uint32_t java_name_index
	}, ; 1629
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 7; uint32_t java_name_index
	}, ; 1630
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 559; uint32_t java_name_index
	}, ; 1631
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index
		i32 u0x02000019, ; uint32_t type_token_id
		i32 802; uint32_t java_name_index
	}, ; 1632
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x020000f9, ; uint32_t type_token_id
		i32 782; uint32_t java_name_index
	}, ; 1633
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 673; uint32_t java_name_index
	}, ; 1634
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1714; uint32_t java_name_index
	}, ; 1635
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003ef, ; uint32_t type_token_id
		i32 1627; uint32_t java_name_index
	}, ; 1636
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000e5, ; uint32_t type_token_id
		i32 18; uint32_t java_name_index
	}, ; 1637
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003c6, ; uint32_t type_token_id
		i32 1594; uint32_t java_name_index
	}, ; 1638
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000499, ; uint32_t type_token_id
		i32 541; uint32_t java_name_index
	}, ; 1639
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200005f, ; uint32_t type_token_id
		i32 888; uint32_t java_name_index
	}, ; 1640
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000034, ; uint32_t type_token_id
		i32 1002; uint32_t java_name_index
	}, ; 1641
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000252, ; uint32_t type_token_id
		i32 238; uint32_t java_name_index
	}, ; 1642
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 1650; uint32_t java_name_index
	}, ; 1643
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index
		i32 u0x02000008, ; uint32_t type_token_id
		i32 800; uint32_t java_name_index
	}, ; 1644
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200005c, ; uint32_t type_token_id
		i32 1097; uint32_t java_name_index
	}, ; 1645
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004a5, ; uint32_t type_token_id
		i32 549; uint32_t java_name_index
	}, ; 1646
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200017a, ; uint32_t type_token_id
		i32 101; uint32_t java_name_index
	}, ; 1647
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1445; uint32_t java_name_index
	}, ; 1648
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000056, ; uint32_t type_token_id
		i32 881; uint32_t java_name_index
	}, ; 1649
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000074, ; uint32_t type_token_id
		i32 717; uint32_t java_name_index
	}, ; 1650
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1103; uint32_t java_name_index
	}, ; 1651
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 543; uint32_t java_name_index
	}, ; 1652
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 1296; uint32_t java_name_index
	}, ; 1653
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x020000b7, ; uint32_t type_token_id
		i32 1768; uint32_t java_name_index
	}, ; 1654
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004ce, ; uint32_t type_token_id
		i32 571; uint32_t java_name_index
	}, ; 1655
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003c9, ; uint32_t type_token_id
		i32 1597; uint32_t java_name_index
	}, ; 1656
	%struct.TypeMapJava {
		i32 35, ; uint32_t module_index
		i32 u0x02000077, ; uint32_t type_token_id
		i32 1281; uint32_t java_name_index
	}, ; 1657
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000519, ; uint32_t type_token_id
		i32 622; uint32_t java_name_index
	}, ; 1658
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x02000007, ; uint32_t type_token_id
		i32 816; uint32_t java_name_index
	}, ; 1659
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000102, ; uint32_t type_token_id
		i32 1196; uint32_t java_name_index
	}, ; 1660
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000128, ; uint32_t type_token_id
		i32 59; uint32_t java_name_index
	}, ; 1661
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 634; uint32_t java_name_index
	}, ; 1662
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000005, ; uint32_t type_token_id
		i32 645; uint32_t java_name_index
	}, ; 1663
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003bd, ; uint32_t type_token_id
		i32 409; uint32_t java_name_index
	}, ; 1664
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x02000028, ; uint32_t type_token_id
		i32 997; uint32_t java_name_index
	}, ; 1665
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1582; uint32_t java_name_index
	}, ; 1666
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 1085; uint32_t java_name_index
	}, ; 1667
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 133; uint32_t java_name_index
	}, ; 1668
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 239; uint32_t java_name_index
	}, ; 1669
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x020000a3, ; uint32_t type_token_id
		i32 1401; uint32_t java_name_index
	}, ; 1670
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003cd, ; uint32_t type_token_id
		i32 1601; uint32_t java_name_index
	}, ; 1671
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000061, ; uint32_t type_token_id
		i32 706; uint32_t java_name_index
	}, ; 1672
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000465, ; uint32_t type_token_id
		i32 507; uint32_t java_name_index
	}, ; 1673
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200011f, ; uint32_t type_token_id
		i32 50; uint32_t java_name_index
	}, ; 1674
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 838; uint32_t java_name_index
	}, ; 1675
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 882; uint32_t java_name_index
	}, ; 1676
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1209; uint32_t java_name_index
	}, ; 1677
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000057, ; uint32_t type_token_id
		i32 1092; uint32_t java_name_index
	}, ; 1678
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 347; uint32_t java_name_index
	}, ; 1679
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000476, ; uint32_t type_token_id
		i32 519; uint32_t java_name_index
	}, ; 1680
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001a6, ; uint32_t type_token_id
		i32 131; uint32_t java_name_index
	}, ; 1681
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000045, ; uint32_t type_token_id
		i32 1302; uint32_t java_name_index
	}, ; 1682
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200022b, ; uint32_t type_token_id
		i32 216; uint32_t java_name_index
	}, ; 1683
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 585; uint32_t java_name_index
	}, ; 1684
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002e5, ; uint32_t type_token_id
		i32 298; uint32_t java_name_index
	}, ; 1685
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000d8, ; uint32_t type_token_id
		i32 1174; uint32_t java_name_index
	}, ; 1686
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200022c, ; uint32_t type_token_id
		i32 217; uint32_t java_name_index
	}, ; 1687
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200032d, ; uint32_t type_token_id
		i32 337; uint32_t java_name_index
	}, ; 1688
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1111; uint32_t java_name_index
	}, ; 1689
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 668; uint32_t java_name_index
	}, ; 1690
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1109; uint32_t java_name_index
	}, ; 1691
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001a9, ; uint32_t type_token_id
		i32 132; uint32_t java_name_index
	}, ; 1692
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x020000a5, ; uint32_t type_token_id
		i32 1757; uint32_t java_name_index
	}, ; 1693
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000056, ; uint32_t type_token_id
		i32 1031; uint32_t java_name_index
	}, ; 1694
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000423, ; uint32_t type_token_id
		i32 473; uint32_t java_name_index
	}, ; 1695
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 926; uint32_t java_name_index
	}, ; 1696
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000ad, ; uint32_t type_token_id
		i32 938; uint32_t java_name_index
	}, ; 1697
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000038, ; uint32_t type_token_id
		i32 1295; uint32_t java_name_index
	}, ; 1698
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020000be, ; uint32_t type_token_id
		i32 1441; uint32_t java_name_index
	}, ; 1699
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 1733; uint32_t java_name_index
	}, ; 1700
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1409; uint32_t java_name_index
	}, ; 1701
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020003d6, ; uint32_t type_token_id
		i32 428; uint32_t java_name_index
	}, ; 1702
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1108; uint32_t java_name_index
	}, ; 1703
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1115; uint32_t java_name_index
	}, ; 1704
	%struct.TypeMapJava {
		i32 50, ; uint32_t module_index
		i32 u0x02000012, ; uint32_t type_token_id
		i32 1675; uint32_t java_name_index
	}, ; 1705
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x020000a8, ; uint32_t type_token_id
		i32 1138; uint32_t java_name_index
	}, ; 1706
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1592; uint32_t java_name_index
	}, ; 1707
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1014; uint32_t java_name_index
	}, ; 1708
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000167, ; uint32_t type_token_id
		i32 1481; uint32_t java_name_index
	}, ; 1709
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000039, ; uint32_t type_token_id
		i32 1007; uint32_t java_name_index
	}, ; 1710
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 580; uint32_t java_name_index
	}, ; 1711
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000041, ; uint32_t type_token_id
		i32 1076; uint32_t java_name_index
	}, ; 1712
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x02000076, ; uint32_t type_token_id
		i32 1329; uint32_t java_name_index
	}, ; 1713
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000c4, ; uint32_t type_token_id
		i32 955; uint32_t java_name_index
	}, ; 1714
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1746; uint32_t java_name_index
	}, ; 1715
	%struct.TypeMapJava {
		i32 48, ; uint32_t module_index
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 1657; uint32_t java_name_index
	}, ; 1716
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001e2, ; uint32_t type_token_id
		i32 164; uint32_t java_name_index
	}, ; 1717
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000139, ; uint32_t type_token_id
		i32 1226; uint32_t java_name_index
	}, ; 1718
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000483, ; uint32_t type_token_id
		i32 528; uint32_t java_name_index
	}, ; 1719
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x020000b3, ; uint32_t type_token_id
		i32 1766; uint32_t java_name_index
	}, ; 1720
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003af, ; uint32_t type_token_id
		i32 1585; uint32_t java_name_index
	}, ; 1721
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 911; uint32_t java_name_index
	}, ; 1722
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000056, ; uint32_t type_token_id
		i32 1091; uint32_t java_name_index
	}, ; 1723
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x020000bd, ; uint32_t type_token_id
		i32 948; uint32_t java_name_index
	}, ; 1724
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004ad, ; uint32_t type_token_id
		i32 555; uint32_t java_name_index
	}, ; 1725
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200032a, ; uint32_t type_token_id
		i32 334; uint32_t java_name_index
	}, ; 1726
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1101; uint32_t java_name_index
	}, ; 1727
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000099, ; uint32_t type_token_id
		i32 730; uint32_t java_name_index
	}, ; 1728
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020004fa, ; uint32_t type_token_id
		i32 602; uint32_t java_name_index
	}, ; 1729
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 924; uint32_t java_name_index
	}, ; 1730
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 897; uint32_t java_name_index
	}, ; 1731
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x02000024, ; uint32_t type_token_id
		i32 1692; uint32_t java_name_index
	}, ; 1732
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 1083; uint32_t java_name_index
	}, ; 1733
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000193, ; uint32_t type_token_id
		i32 117; uint32_t java_name_index
	}, ; 1734
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000317, ; uint32_t type_token_id
		i32 324; uint32_t java_name_index
	}, ; 1735
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x020002a3, ; uint32_t type_token_id
		i32 1443; uint32_t java_name_index
	}, ; 1736
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000301, ; uint32_t type_token_id
		i32 312; uint32_t java_name_index
	}, ; 1737
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200039f, ; uint32_t type_token_id
		i32 381; uint32_t java_name_index
	}, ; 1738
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 851; uint32_t java_name_index
	}, ; 1739
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1427; uint32_t java_name_index
	}, ; 1740
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 745; uint32_t java_name_index
	}, ; 1741
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 264; uint32_t java_name_index
	}, ; 1742
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 886; uint32_t java_name_index
	}, ; 1743
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 921; uint32_t java_name_index
	}, ; 1744
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000c9, ; uint32_t type_token_id
		i32 2; uint32_t java_name_index
	}, ; 1745
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1259; uint32_t java_name_index
	}, ; 1746
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x02000005, ; uint32_t type_token_id
		i32 814; uint32_t java_name_index
	}, ; 1747
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x02000363, ; uint32_t type_token_id
		i32 353; uint32_t java_name_index
	}, ; 1748
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200012c, ; uint32_t type_token_id
		i32 790; uint32_t java_name_index
	}, ; 1749
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 840; uint32_t java_name_index
	}, ; 1750
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000362, ; uint32_t type_token_id
		i32 1539; uint32_t java_name_index
	}, ; 1751
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x0200012b, ; uint32_t type_token_id
		i32 1452; uint32_t java_name_index
	}, ; 1752
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000171, ; uint32_t type_token_id
		i32 1490; uint32_t java_name_index
	}, ; 1753
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x02000053, ; uint32_t type_token_id
		i32 1088; uint32_t java_name_index
	}, ; 1754
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1365; uint32_t java_name_index
	}, ; 1755
	%struct.TypeMapJava {
		i32 37, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1307; uint32_t java_name_index
	}, ; 1756
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x02000069, ; uint32_t type_token_id
		i32 1730; uint32_t java_name_index
	}, ; 1757
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1124; uint32_t java_name_index
	}, ; 1758
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001f6, ; uint32_t type_token_id
		i32 177; uint32_t java_name_index
	}, ; 1759
	%struct.TypeMapJava {
		i32 52, ; uint32_t module_index
		i32 u0x02000019, ; uint32_t type_token_id
		i32 1684; uint32_t java_name_index
	}, ; 1760
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 623; uint32_t java_name_index
	}, ; 1761
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 1053; uint32_t java_name_index
	}, ; 1762
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 192; uint32_t java_name_index
	}, ; 1763
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000614, ; uint32_t type_token_id
		i32 1573; uint32_t java_name_index
	}, ; 1764
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x020003ea, ; uint32_t type_token_id
		i32 1620; uint32_t java_name_index
	}, ; 1765
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000074, ; uint32_t type_token_id
		i32 905; uint32_t java_name_index
	}, ; 1766
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 67; uint32_t java_name_index
	}, ; 1767
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020002fe, ; uint32_t type_token_id
		i32 310; uint32_t java_name_index
	}, ; 1768
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000033, ; uint32_t type_token_id
		i32 1001; uint32_t java_name_index
	}, ; 1769
	%struct.TypeMapJava {
		i32 46, ; uint32_t module_index
		i32 u0x02000395, ; uint32_t type_token_id
		i32 1564; uint32_t java_name_index
	}, ; 1770
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000083, ; uint32_t type_token_id
		i32 724; uint32_t java_name_index
	}, ; 1771
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200017b, ; uint32_t type_token_id
		i32 102; uint32_t java_name_index
	}, ; 1772
	%struct.TypeMapJava {
		i32 41, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1397; uint32_t java_name_index
	}, ; 1773
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020001d6, ; uint32_t type_token_id
		i32 156; uint32_t java_name_index
	}, ; 1774
	%struct.TypeMapJava {
		i32 42, ; uint32_t module_index
		i32 u0x02000166, ; uint32_t type_token_id
		i32 1480; uint32_t java_name_index
	}, ; 1775
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x0200042c, ; uint32_t type_token_id
		i32 477; uint32_t java_name_index
	}, ; 1776
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 524; uint32_t java_name_index
	}, ; 1777
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 76; uint32_t java_name_index
	}, ; 1778
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000050, ; uint32_t type_token_id
		i32 875; uint32_t java_name_index
	}, ; 1779
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x020000e9, ; uint32_t type_token_id
		i32 20; uint32_t java_name_index
	}, ; 1780
	%struct.TypeMapJava {
		i32 54, ; uint32_t module_index
		i32 u0x02000068, ; uint32_t type_token_id
		i32 1729; uint32_t java_name_index
	}, ; 1781
	%struct.TypeMapJava {
		i32 40, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 83; uint32_t java_name_index
	} ; 1782
], align 4

; Java type names
@java_type_names = dso_local local_unnamed_addr constant [1783 x ptr] [
	ptr @.str.0, ; 0
	ptr @.str.1, ; 1
	ptr @.str.2, ; 2
	ptr @.str.3, ; 3
	ptr @.str.4, ; 4
	ptr @.str.5, ; 5
	ptr @.str.6, ; 6
	ptr @.str.7, ; 7
	ptr @.str.8, ; 8
	ptr @.str.9, ; 9
	ptr @.str.10, ; 10
	ptr @.str.11, ; 11
	ptr @.str.12, ; 12
	ptr @.str.13, ; 13
	ptr @.str.14, ; 14
	ptr @.str.15, ; 15
	ptr @.str.16, ; 16
	ptr @.str.17, ; 17
	ptr @.str.18, ; 18
	ptr @.str.19, ; 19
	ptr @.str.20, ; 20
	ptr @.str.21, ; 21
	ptr @.str.22, ; 22
	ptr @.str.23, ; 23
	ptr @.str.24, ; 24
	ptr @.str.25, ; 25
	ptr @.str.26, ; 26
	ptr @.str.27, ; 27
	ptr @.str.28, ; 28
	ptr @.str.29, ; 29
	ptr @.str.30, ; 30
	ptr @.str.31, ; 31
	ptr @.str.32, ; 32
	ptr @.str.33, ; 33
	ptr @.str.34, ; 34
	ptr @.str.35, ; 35
	ptr @.str.36, ; 36
	ptr @.str.37, ; 37
	ptr @.str.38, ; 38
	ptr @.str.39, ; 39
	ptr @.str.40, ; 40
	ptr @.str.41, ; 41
	ptr @.str.42, ; 42
	ptr @.str.43, ; 43
	ptr @.str.44, ; 44
	ptr @.str.45, ; 45
	ptr @.str.46, ; 46
	ptr @.str.47, ; 47
	ptr @.str.48, ; 48
	ptr @.str.49, ; 49
	ptr @.str.50, ; 50
	ptr @.str.51, ; 51
	ptr @.str.52, ; 52
	ptr @.str.53, ; 53
	ptr @.str.54, ; 54
	ptr @.str.55, ; 55
	ptr @.str.56, ; 56
	ptr @.str.57, ; 57
	ptr @.str.58, ; 58
	ptr @.str.59, ; 59
	ptr @.str.60, ; 60
	ptr @.str.61, ; 61
	ptr @.str.62, ; 62
	ptr @.str.63, ; 63
	ptr @.str.64, ; 64
	ptr @.str.65, ; 65
	ptr @.str.66, ; 66
	ptr @.str.67, ; 67
	ptr @.str.68, ; 68
	ptr @.str.69, ; 69
	ptr @.str.70, ; 70
	ptr @.str.71, ; 71
	ptr @.str.72, ; 72
	ptr @.str.73, ; 73
	ptr @.str.74, ; 74
	ptr @.str.75, ; 75
	ptr @.str.76, ; 76
	ptr @.str.77, ; 77
	ptr @.str.78, ; 78
	ptr @.str.79, ; 79
	ptr @.str.80, ; 80
	ptr @.str.81, ; 81
	ptr @.str.82, ; 82
	ptr @.str.83, ; 83
	ptr @.str.84, ; 84
	ptr @.str.85, ; 85
	ptr @.str.86, ; 86
	ptr @.str.87, ; 87
	ptr @.str.88, ; 88
	ptr @.str.89, ; 89
	ptr @.str.90, ; 90
	ptr @.str.91, ; 91
	ptr @.str.92, ; 92
	ptr @.str.93, ; 93
	ptr @.str.94, ; 94
	ptr @.str.95, ; 95
	ptr @.str.96, ; 96
	ptr @.str.97, ; 97
	ptr @.str.98, ; 98
	ptr @.str.99, ; 99
	ptr @.str.100, ; 100
	ptr @.str.101, ; 101
	ptr @.str.102, ; 102
	ptr @.str.103, ; 103
	ptr @.str.104, ; 104
	ptr @.str.105, ; 105
	ptr @.str.106, ; 106
	ptr @.str.107, ; 107
	ptr @.str.108, ; 108
	ptr @.str.109, ; 109
	ptr @.str.110, ; 110
	ptr @.str.111, ; 111
	ptr @.str.112, ; 112
	ptr @.str.113, ; 113
	ptr @.str.114, ; 114
	ptr @.str.115, ; 115
	ptr @.str.116, ; 116
	ptr @.str.117, ; 117
	ptr @.str.118, ; 118
	ptr @.str.119, ; 119
	ptr @.str.120, ; 120
	ptr @.str.121, ; 121
	ptr @.str.122, ; 122
	ptr @.str.123, ; 123
	ptr @.str.124, ; 124
	ptr @.str.125, ; 125
	ptr @.str.126, ; 126
	ptr @.str.127, ; 127
	ptr @.str.128, ; 128
	ptr @.str.129, ; 129
	ptr @.str.130, ; 130
	ptr @.str.131, ; 131
	ptr @.str.132, ; 132
	ptr @.str.133, ; 133
	ptr @.str.134, ; 134
	ptr @.str.135, ; 135
	ptr @.str.136, ; 136
	ptr @.str.137, ; 137
	ptr @.str.138, ; 138
	ptr @.str.139, ; 139
	ptr @.str.140, ; 140
	ptr @.str.141, ; 141
	ptr @.str.142, ; 142
	ptr @.str.143, ; 143
	ptr @.str.144, ; 144
	ptr @.str.145, ; 145
	ptr @.str.146, ; 146
	ptr @.str.147, ; 147
	ptr @.str.148, ; 148
	ptr @.str.149, ; 149
	ptr @.str.150, ; 150
	ptr @.str.151, ; 151
	ptr @.str.152, ; 152
	ptr @.str.153, ; 153
	ptr @.str.154, ; 154
	ptr @.str.155, ; 155
	ptr @.str.156, ; 156
	ptr @.str.157, ; 157
	ptr @.str.158, ; 158
	ptr @.str.159, ; 159
	ptr @.str.160, ; 160
	ptr @.str.161, ; 161
	ptr @.str.162, ; 162
	ptr @.str.163, ; 163
	ptr @.str.164, ; 164
	ptr @.str.165, ; 165
	ptr @.str.166, ; 166
	ptr @.str.167, ; 167
	ptr @.str.168, ; 168
	ptr @.str.169, ; 169
	ptr @.str.170, ; 170
	ptr @.str.171, ; 171
	ptr @.str.172, ; 172
	ptr @.str.173, ; 173
	ptr @.str.174, ; 174
	ptr @.str.175, ; 175
	ptr @.str.176, ; 176
	ptr @.str.177, ; 177
	ptr @.str.178, ; 178
	ptr @.str.179, ; 179
	ptr @.str.180, ; 180
	ptr @.str.181, ; 181
	ptr @.str.182, ; 182
	ptr @.str.183, ; 183
	ptr @.str.184, ; 184
	ptr @.str.185, ; 185
	ptr @.str.186, ; 186
	ptr @.str.187, ; 187
	ptr @.str.188, ; 188
	ptr @.str.189, ; 189
	ptr @.str.190, ; 190
	ptr @.str.191, ; 191
	ptr @.str.192, ; 192
	ptr @.str.193, ; 193
	ptr @.str.194, ; 194
	ptr @.str.195, ; 195
	ptr @.str.196, ; 196
	ptr @.str.197, ; 197
	ptr @.str.198, ; 198
	ptr @.str.199, ; 199
	ptr @.str.200, ; 200
	ptr @.str.201, ; 201
	ptr @.str.202, ; 202
	ptr @.str.203, ; 203
	ptr @.str.204, ; 204
	ptr @.str.205, ; 205
	ptr @.str.206, ; 206
	ptr @.str.207, ; 207
	ptr @.str.208, ; 208
	ptr @.str.209, ; 209
	ptr @.str.210, ; 210
	ptr @.str.211, ; 211
	ptr @.str.212, ; 212
	ptr @.str.213, ; 213
	ptr @.str.214, ; 214
	ptr @.str.215, ; 215
	ptr @.str.216, ; 216
	ptr @.str.217, ; 217
	ptr @.str.218, ; 218
	ptr @.str.219, ; 219
	ptr @.str.220, ; 220
	ptr @.str.221, ; 221
	ptr @.str.222, ; 222
	ptr @.str.223, ; 223
	ptr @.str.224, ; 224
	ptr @.str.225, ; 225
	ptr @.str.226, ; 226
	ptr @.str.227, ; 227
	ptr @.str.228, ; 228
	ptr @.str.229, ; 229
	ptr @.str.230, ; 230
	ptr @.str.231, ; 231
	ptr @.str.232, ; 232
	ptr @.str.233, ; 233
	ptr @.str.234, ; 234
	ptr @.str.235, ; 235
	ptr @.str.236, ; 236
	ptr @.str.237, ; 237
	ptr @.str.238, ; 238
	ptr @.str.239, ; 239
	ptr @.str.240, ; 240
	ptr @.str.241, ; 241
	ptr @.str.242, ; 242
	ptr @.str.243, ; 243
	ptr @.str.244, ; 244
	ptr @.str.245, ; 245
	ptr @.str.246, ; 246
	ptr @.str.247, ; 247
	ptr @.str.248, ; 248
	ptr @.str.249, ; 249
	ptr @.str.250, ; 250
	ptr @.str.251, ; 251
	ptr @.str.252, ; 252
	ptr @.str.253, ; 253
	ptr @.str.254, ; 254
	ptr @.str.255, ; 255
	ptr @.str.256, ; 256
	ptr @.str.257, ; 257
	ptr @.str.258, ; 258
	ptr @.str.259, ; 259
	ptr @.str.260, ; 260
	ptr @.str.261, ; 261
	ptr @.str.262, ; 262
	ptr @.str.263, ; 263
	ptr @.str.264, ; 264
	ptr @.str.265, ; 265
	ptr @.str.266, ; 266
	ptr @.str.267, ; 267
	ptr @.str.268, ; 268
	ptr @.str.269, ; 269
	ptr @.str.270, ; 270
	ptr @.str.271, ; 271
	ptr @.str.272, ; 272
	ptr @.str.273, ; 273
	ptr @.str.274, ; 274
	ptr @.str.275, ; 275
	ptr @.str.276, ; 276
	ptr @.str.277, ; 277
	ptr @.str.278, ; 278
	ptr @.str.279, ; 279
	ptr @.str.280, ; 280
	ptr @.str.281, ; 281
	ptr @.str.282, ; 282
	ptr @.str.283, ; 283
	ptr @.str.284, ; 284
	ptr @.str.285, ; 285
	ptr @.str.286, ; 286
	ptr @.str.287, ; 287
	ptr @.str.288, ; 288
	ptr @.str.289, ; 289
	ptr @.str.290, ; 290
	ptr @.str.291, ; 291
	ptr @.str.292, ; 292
	ptr @.str.293, ; 293
	ptr @.str.294, ; 294
	ptr @.str.295, ; 295
	ptr @.str.296, ; 296
	ptr @.str.297, ; 297
	ptr @.str.298, ; 298
	ptr @.str.299, ; 299
	ptr @.str.300, ; 300
	ptr @.str.301, ; 301
	ptr @.str.302, ; 302
	ptr @.str.303, ; 303
	ptr @.str.304, ; 304
	ptr @.str.305, ; 305
	ptr @.str.306, ; 306
	ptr @.str.307, ; 307
	ptr @.str.308, ; 308
	ptr @.str.309, ; 309
	ptr @.str.310, ; 310
	ptr @.str.311, ; 311
	ptr @.str.312, ; 312
	ptr @.str.313, ; 313
	ptr @.str.314, ; 314
	ptr @.str.315, ; 315
	ptr @.str.316, ; 316
	ptr @.str.317, ; 317
	ptr @.str.318, ; 318
	ptr @.str.319, ; 319
	ptr @.str.320, ; 320
	ptr @.str.321, ; 321
	ptr @.str.322, ; 322
	ptr @.str.323, ; 323
	ptr @.str.324, ; 324
	ptr @.str.325, ; 325
	ptr @.str.326, ; 326
	ptr @.str.327, ; 327
	ptr @.str.328, ; 328
	ptr @.str.329, ; 329
	ptr @.str.330, ; 330
	ptr @.str.331, ; 331
	ptr @.str.332, ; 332
	ptr @.str.333, ; 333
	ptr @.str.334, ; 334
	ptr @.str.335, ; 335
	ptr @.str.336, ; 336
	ptr @.str.337, ; 337
	ptr @.str.338, ; 338
	ptr @.str.339, ; 339
	ptr @.str.340, ; 340
	ptr @.str.341, ; 341
	ptr @.str.342, ; 342
	ptr @.str.343, ; 343
	ptr @.str.344, ; 344
	ptr @.str.345, ; 345
	ptr @.str.346, ; 346
	ptr @.str.347, ; 347
	ptr @.str.348, ; 348
	ptr @.str.349, ; 349
	ptr @.str.350, ; 350
	ptr @.str.351, ; 351
	ptr @.str.352, ; 352
	ptr @.str.353, ; 353
	ptr @.str.354, ; 354
	ptr @.str.355, ; 355
	ptr @.str.356, ; 356
	ptr @.str.357, ; 357
	ptr @.str.358, ; 358
	ptr @.str.359, ; 359
	ptr @.str.360, ; 360
	ptr @.str.361, ; 361
	ptr @.str.362, ; 362
	ptr @.str.363, ; 363
	ptr @.str.364, ; 364
	ptr @.str.365, ; 365
	ptr @.str.366, ; 366
	ptr @.str.367, ; 367
	ptr @.str.368, ; 368
	ptr @.str.369, ; 369
	ptr @.str.370, ; 370
	ptr @.str.371, ; 371
	ptr @.str.372, ; 372
	ptr @.str.373, ; 373
	ptr @.str.374, ; 374
	ptr @.str.375, ; 375
	ptr @.str.376, ; 376
	ptr @.str.377, ; 377
	ptr @.str.378, ; 378
	ptr @.str.379, ; 379
	ptr @.str.380, ; 380
	ptr @.str.381, ; 381
	ptr @.str.382, ; 382
	ptr @.str.383, ; 383
	ptr @.str.384, ; 384
	ptr @.str.385, ; 385
	ptr @.str.386, ; 386
	ptr @.str.387, ; 387
	ptr @.str.388, ; 388
	ptr @.str.389, ; 389
	ptr @.str.390, ; 390
	ptr @.str.391, ; 391
	ptr @.str.392, ; 392
	ptr @.str.393, ; 393
	ptr @.str.394, ; 394
	ptr @.str.395, ; 395
	ptr @.str.396, ; 396
	ptr @.str.397, ; 397
	ptr @.str.398, ; 398
	ptr @.str.399, ; 399
	ptr @.str.400, ; 400
	ptr @.str.401, ; 401
	ptr @.str.402, ; 402
	ptr @.str.403, ; 403
	ptr @.str.404, ; 404
	ptr @.str.405, ; 405
	ptr @.str.406, ; 406
	ptr @.str.407, ; 407
	ptr @.str.408, ; 408
	ptr @.str.409, ; 409
	ptr @.str.410, ; 410
	ptr @.str.411, ; 411
	ptr @.str.412, ; 412
	ptr @.str.413, ; 413
	ptr @.str.414, ; 414
	ptr @.str.415, ; 415
	ptr @.str.416, ; 416
	ptr @.str.417, ; 417
	ptr @.str.418, ; 418
	ptr @.str.419, ; 419
	ptr @.str.420, ; 420
	ptr @.str.421, ; 421
	ptr @.str.422, ; 422
	ptr @.str.423, ; 423
	ptr @.str.424, ; 424
	ptr @.str.425, ; 425
	ptr @.str.426, ; 426
	ptr @.str.427, ; 427
	ptr @.str.428, ; 428
	ptr @.str.429, ; 429
	ptr @.str.430, ; 430
	ptr @.str.431, ; 431
	ptr @.str.432, ; 432
	ptr @.str.433, ; 433
	ptr @.str.434, ; 434
	ptr @.str.435, ; 435
	ptr @.str.436, ; 436
	ptr @.str.437, ; 437
	ptr @.str.438, ; 438
	ptr @.str.439, ; 439
	ptr @.str.440, ; 440
	ptr @.str.441, ; 441
	ptr @.str.442, ; 442
	ptr @.str.443, ; 443
	ptr @.str.444, ; 444
	ptr @.str.445, ; 445
	ptr @.str.446, ; 446
	ptr @.str.447, ; 447
	ptr @.str.448, ; 448
	ptr @.str.449, ; 449
	ptr @.str.450, ; 450
	ptr @.str.451, ; 451
	ptr @.str.452, ; 452
	ptr @.str.453, ; 453
	ptr @.str.454, ; 454
	ptr @.str.455, ; 455
	ptr @.str.456, ; 456
	ptr @.str.457, ; 457
	ptr @.str.458, ; 458
	ptr @.str.459, ; 459
	ptr @.str.460, ; 460
	ptr @.str.461, ; 461
	ptr @.str.462, ; 462
	ptr @.str.463, ; 463
	ptr @.str.464, ; 464
	ptr @.str.465, ; 465
	ptr @.str.466, ; 466
	ptr @.str.467, ; 467
	ptr @.str.468, ; 468
	ptr @.str.469, ; 469
	ptr @.str.470, ; 470
	ptr @.str.471, ; 471
	ptr @.str.472, ; 472
	ptr @.str.473, ; 473
	ptr @.str.474, ; 474
	ptr @.str.475, ; 475
	ptr @.str.476, ; 476
	ptr @.str.477, ; 477
	ptr @.str.478, ; 478
	ptr @.str.479, ; 479
	ptr @.str.480, ; 480
	ptr @.str.481, ; 481
	ptr @.str.482, ; 482
	ptr @.str.483, ; 483
	ptr @.str.484, ; 484
	ptr @.str.485, ; 485
	ptr @.str.486, ; 486
	ptr @.str.487, ; 487
	ptr @.str.488, ; 488
	ptr @.str.489, ; 489
	ptr @.str.490, ; 490
	ptr @.str.491, ; 491
	ptr @.str.492, ; 492
	ptr @.str.493, ; 493
	ptr @.str.494, ; 494
	ptr @.str.495, ; 495
	ptr @.str.496, ; 496
	ptr @.str.497, ; 497
	ptr @.str.498, ; 498
	ptr @.str.499, ; 499
	ptr @.str.500, ; 500
	ptr @.str.501, ; 501
	ptr @.str.502, ; 502
	ptr @.str.503, ; 503
	ptr @.str.504, ; 504
	ptr @.str.505, ; 505
	ptr @.str.506, ; 506
	ptr @.str.507, ; 507
	ptr @.str.508, ; 508
	ptr @.str.509, ; 509
	ptr @.str.510, ; 510
	ptr @.str.511, ; 511
	ptr @.str.512, ; 512
	ptr @.str.513, ; 513
	ptr @.str.514, ; 514
	ptr @.str.515, ; 515
	ptr @.str.516, ; 516
	ptr @.str.517, ; 517
	ptr @.str.518, ; 518
	ptr @.str.519, ; 519
	ptr @.str.520, ; 520
	ptr @.str.521, ; 521
	ptr @.str.522, ; 522
	ptr @.str.523, ; 523
	ptr @.str.524, ; 524
	ptr @.str.525, ; 525
	ptr @.str.526, ; 526
	ptr @.str.527, ; 527
	ptr @.str.528, ; 528
	ptr @.str.529, ; 529
	ptr @.str.530, ; 530
	ptr @.str.531, ; 531
	ptr @.str.532, ; 532
	ptr @.str.533, ; 533
	ptr @.str.534, ; 534
	ptr @.str.535, ; 535
	ptr @.str.536, ; 536
	ptr @.str.537, ; 537
	ptr @.str.538, ; 538
	ptr @.str.539, ; 539
	ptr @.str.540, ; 540
	ptr @.str.541, ; 541
	ptr @.str.542, ; 542
	ptr @.str.543, ; 543
	ptr @.str.544, ; 544
	ptr @.str.545, ; 545
	ptr @.str.546, ; 546
	ptr @.str.547, ; 547
	ptr @.str.548, ; 548
	ptr @.str.549, ; 549
	ptr @.str.550, ; 550
	ptr @.str.551, ; 551
	ptr @.str.552, ; 552
	ptr @.str.553, ; 553
	ptr @.str.554, ; 554
	ptr @.str.555, ; 555
	ptr @.str.556, ; 556
	ptr @.str.557, ; 557
	ptr @.str.558, ; 558
	ptr @.str.559, ; 559
	ptr @.str.560, ; 560
	ptr @.str.561, ; 561
	ptr @.str.562, ; 562
	ptr @.str.563, ; 563
	ptr @.str.564, ; 564
	ptr @.str.565, ; 565
	ptr @.str.566, ; 566
	ptr @.str.567, ; 567
	ptr @.str.568, ; 568
	ptr @.str.569, ; 569
	ptr @.str.570, ; 570
	ptr @.str.571, ; 571
	ptr @.str.572, ; 572
	ptr @.str.573, ; 573
	ptr @.str.574, ; 574
	ptr @.str.575, ; 575
	ptr @.str.576, ; 576
	ptr @.str.577, ; 577
	ptr @.str.578, ; 578
	ptr @.str.579, ; 579
	ptr @.str.580, ; 580
	ptr @.str.581, ; 581
	ptr @.str.582, ; 582
	ptr @.str.583, ; 583
	ptr @.str.584, ; 584
	ptr @.str.585, ; 585
	ptr @.str.586, ; 586
	ptr @.str.587, ; 587
	ptr @.str.588, ; 588
	ptr @.str.589, ; 589
	ptr @.str.590, ; 590
	ptr @.str.591, ; 591
	ptr @.str.592, ; 592
	ptr @.str.593, ; 593
	ptr @.str.594, ; 594
	ptr @.str.595, ; 595
	ptr @.str.596, ; 596
	ptr @.str.597, ; 597
	ptr @.str.598, ; 598
	ptr @.str.599, ; 599
	ptr @.str.600, ; 600
	ptr @.str.601, ; 601
	ptr @.str.602, ; 602
	ptr @.str.603, ; 603
	ptr @.str.604, ; 604
	ptr @.str.605, ; 605
	ptr @.str.606, ; 606
	ptr @.str.607, ; 607
	ptr @.str.608, ; 608
	ptr @.str.609, ; 609
	ptr @.str.610, ; 610
	ptr @.str.611, ; 611
	ptr @.str.612, ; 612
	ptr @.str.613, ; 613
	ptr @.str.614, ; 614
	ptr @.str.615, ; 615
	ptr @.str.616, ; 616
	ptr @.str.617, ; 617
	ptr @.str.618, ; 618
	ptr @.str.619, ; 619
	ptr @.str.620, ; 620
	ptr @.str.621, ; 621
	ptr @.str.622, ; 622
	ptr @.str.623, ; 623
	ptr @.str.624, ; 624
	ptr @.str.625, ; 625
	ptr @.str.626, ; 626
	ptr @.str.627, ; 627
	ptr @.str.628, ; 628
	ptr @.str.629, ; 629
	ptr @.str.630, ; 630
	ptr @.str.631, ; 631
	ptr @.str.632, ; 632
	ptr @.str.633, ; 633
	ptr @.str.634, ; 634
	ptr @.str.635, ; 635
	ptr @.str.636, ; 636
	ptr @.str.637, ; 637
	ptr @.str.638, ; 638
	ptr @.str.639, ; 639
	ptr @.str.640, ; 640
	ptr @.str.641, ; 641
	ptr @.str.642, ; 642
	ptr @.str.643, ; 643
	ptr @.str.644, ; 644
	ptr @.str.645, ; 645
	ptr @.str.646, ; 646
	ptr @.str.647, ; 647
	ptr @.str.648, ; 648
	ptr @.str.649, ; 649
	ptr @.str.650, ; 650
	ptr @.str.651, ; 651
	ptr @.str.652, ; 652
	ptr @.str.653, ; 653
	ptr @.str.654, ; 654
	ptr @.str.655, ; 655
	ptr @.str.656, ; 656
	ptr @.str.657, ; 657
	ptr @.str.658, ; 658
	ptr @.str.659, ; 659
	ptr @.str.660, ; 660
	ptr @.str.661, ; 661
	ptr @.str.662, ; 662
	ptr @.str.663, ; 663
	ptr @.str.664, ; 664
	ptr @.str.665, ; 665
	ptr @.str.666, ; 666
	ptr @.str.667, ; 667
	ptr @.str.668, ; 668
	ptr @.str.669, ; 669
	ptr @.str.670, ; 670
	ptr @.str.671, ; 671
	ptr @.str.672, ; 672
	ptr @.str.673, ; 673
	ptr @.str.674, ; 674
	ptr @.str.675, ; 675
	ptr @.str.676, ; 676
	ptr @.str.677, ; 677
	ptr @.str.678, ; 678
	ptr @.str.679, ; 679
	ptr @.str.680, ; 680
	ptr @.str.681, ; 681
	ptr @.str.682, ; 682
	ptr @.str.683, ; 683
	ptr @.str.684, ; 684
	ptr @.str.685, ; 685
	ptr @.str.686, ; 686
	ptr @.str.687, ; 687
	ptr @.str.688, ; 688
	ptr @.str.689, ; 689
	ptr @.str.690, ; 690
	ptr @.str.691, ; 691
	ptr @.str.692, ; 692
	ptr @.str.693, ; 693
	ptr @.str.694, ; 694
	ptr @.str.695, ; 695
	ptr @.str.696, ; 696
	ptr @.str.697, ; 697
	ptr @.str.698, ; 698
	ptr @.str.699, ; 699
	ptr @.str.700, ; 700
	ptr @.str.701, ; 701
	ptr @.str.702, ; 702
	ptr @.str.703, ; 703
	ptr @.str.704, ; 704
	ptr @.str.705, ; 705
	ptr @.str.706, ; 706
	ptr @.str.707, ; 707
	ptr @.str.708, ; 708
	ptr @.str.709, ; 709
	ptr @.str.710, ; 710
	ptr @.str.711, ; 711
	ptr @.str.712, ; 712
	ptr @.str.713, ; 713
	ptr @.str.714, ; 714
	ptr @.str.715, ; 715
	ptr @.str.716, ; 716
	ptr @.str.717, ; 717
	ptr @.str.718, ; 718
	ptr @.str.719, ; 719
	ptr @.str.720, ; 720
	ptr @.str.721, ; 721
	ptr @.str.722, ; 722
	ptr @.str.723, ; 723
	ptr @.str.724, ; 724
	ptr @.str.725, ; 725
	ptr @.str.726, ; 726
	ptr @.str.727, ; 727
	ptr @.str.728, ; 728
	ptr @.str.729, ; 729
	ptr @.str.730, ; 730
	ptr @.str.731, ; 731
	ptr @.str.732, ; 732
	ptr @.str.733, ; 733
	ptr @.str.734, ; 734
	ptr @.str.735, ; 735
	ptr @.str.736, ; 736
	ptr @.str.737, ; 737
	ptr @.str.738, ; 738
	ptr @.str.739, ; 739
	ptr @.str.740, ; 740
	ptr @.str.741, ; 741
	ptr @.str.742, ; 742
	ptr @.str.743, ; 743
	ptr @.str.744, ; 744
	ptr @.str.745, ; 745
	ptr @.str.746, ; 746
	ptr @.str.747, ; 747
	ptr @.str.748, ; 748
	ptr @.str.749, ; 749
	ptr @.str.750, ; 750
	ptr @.str.751, ; 751
	ptr @.str.752, ; 752
	ptr @.str.753, ; 753
	ptr @.str.754, ; 754
	ptr @.str.755, ; 755
	ptr @.str.756, ; 756
	ptr @.str.757, ; 757
	ptr @.str.758, ; 758
	ptr @.str.759, ; 759
	ptr @.str.760, ; 760
	ptr @.str.761, ; 761
	ptr @.str.762, ; 762
	ptr @.str.763, ; 763
	ptr @.str.764, ; 764
	ptr @.str.765, ; 765
	ptr @.str.766, ; 766
	ptr @.str.767, ; 767
	ptr @.str.768, ; 768
	ptr @.str.769, ; 769
	ptr @.str.770, ; 770
	ptr @.str.771, ; 771
	ptr @.str.772, ; 772
	ptr @.str.773, ; 773
	ptr @.str.774, ; 774
	ptr @.str.775, ; 775
	ptr @.str.776, ; 776
	ptr @.str.777, ; 777
	ptr @.str.778, ; 778
	ptr @.str.779, ; 779
	ptr @.str.780, ; 780
	ptr @.str.781, ; 781
	ptr @.str.782, ; 782
	ptr @.str.783, ; 783
	ptr @.str.784, ; 784
	ptr @.str.785, ; 785
	ptr @.str.786, ; 786
	ptr @.str.787, ; 787
	ptr @.str.788, ; 788
	ptr @.str.789, ; 789
	ptr @.str.790, ; 790
	ptr @.str.791, ; 791
	ptr @.str.792, ; 792
	ptr @.str.793, ; 793
	ptr @.str.794, ; 794
	ptr @.str.795, ; 795
	ptr @.str.796, ; 796
	ptr @.str.797, ; 797
	ptr @.str.798, ; 798
	ptr @.str.799, ; 799
	ptr @.str.800, ; 800
	ptr @.str.801, ; 801
	ptr @.str.802, ; 802
	ptr @.str.803, ; 803
	ptr @.str.804, ; 804
	ptr @.str.805, ; 805
	ptr @.str.806, ; 806
	ptr @.str.807, ; 807
	ptr @.str.808, ; 808
	ptr @.str.809, ; 809
	ptr @.str.810, ; 810
	ptr @.str.811, ; 811
	ptr @.str.812, ; 812
	ptr @.str.813, ; 813
	ptr @.str.814, ; 814
	ptr @.str.815, ; 815
	ptr @.str.816, ; 816
	ptr @.str.817, ; 817
	ptr @.str.818, ; 818
	ptr @.str.819, ; 819
	ptr @.str.820, ; 820
	ptr @.str.821, ; 821
	ptr @.str.822, ; 822
	ptr @.str.823, ; 823
	ptr @.str.824, ; 824
	ptr @.str.825, ; 825
	ptr @.str.826, ; 826
	ptr @.str.827, ; 827
	ptr @.str.828, ; 828
	ptr @.str.829, ; 829
	ptr @.str.830, ; 830
	ptr @.str.831, ; 831
	ptr @.str.832, ; 832
	ptr @.str.833, ; 833
	ptr @.str.834, ; 834
	ptr @.str.835, ; 835
	ptr @.str.836, ; 836
	ptr @.str.837, ; 837
	ptr @.str.838, ; 838
	ptr @.str.839, ; 839
	ptr @.str.840, ; 840
	ptr @.str.841, ; 841
	ptr @.str.842, ; 842
	ptr @.str.843, ; 843
	ptr @.str.844, ; 844
	ptr @.str.845, ; 845
	ptr @.str.846, ; 846
	ptr @.str.847, ; 847
	ptr @.str.848, ; 848
	ptr @.str.849, ; 849
	ptr @.str.850, ; 850
	ptr @.str.851, ; 851
	ptr @.str.852, ; 852
	ptr @.str.853, ; 853
	ptr @.str.854, ; 854
	ptr @.str.855, ; 855
	ptr @.str.856, ; 856
	ptr @.str.857, ; 857
	ptr @.str.858, ; 858
	ptr @.str.859, ; 859
	ptr @.str.860, ; 860
	ptr @.str.861, ; 861
	ptr @.str.862, ; 862
	ptr @.str.863, ; 863
	ptr @.str.864, ; 864
	ptr @.str.865, ; 865
	ptr @.str.866, ; 866
	ptr @.str.867, ; 867
	ptr @.str.868, ; 868
	ptr @.str.869, ; 869
	ptr @.str.870, ; 870
	ptr @.str.871, ; 871
	ptr @.str.872, ; 872
	ptr @.str.873, ; 873
	ptr @.str.874, ; 874
	ptr @.str.875, ; 875
	ptr @.str.876, ; 876
	ptr @.str.877, ; 877
	ptr @.str.878, ; 878
	ptr @.str.879, ; 879
	ptr @.str.880, ; 880
	ptr @.str.881, ; 881
	ptr @.str.882, ; 882
	ptr @.str.883, ; 883
	ptr @.str.884, ; 884
	ptr @.str.885, ; 885
	ptr @.str.886, ; 886
	ptr @.str.887, ; 887
	ptr @.str.888, ; 888
	ptr @.str.889, ; 889
	ptr @.str.890, ; 890
	ptr @.str.891, ; 891
	ptr @.str.892, ; 892
	ptr @.str.893, ; 893
	ptr @.str.894, ; 894
	ptr @.str.895, ; 895
	ptr @.str.896, ; 896
	ptr @.str.897, ; 897
	ptr @.str.898, ; 898
	ptr @.str.899, ; 899
	ptr @.str.900, ; 900
	ptr @.str.901, ; 901
	ptr @.str.902, ; 902
	ptr @.str.903, ; 903
	ptr @.str.904, ; 904
	ptr @.str.905, ; 905
	ptr @.str.906, ; 906
	ptr @.str.907, ; 907
	ptr @.str.908, ; 908
	ptr @.str.909, ; 909
	ptr @.str.910, ; 910
	ptr @.str.911, ; 911
	ptr @.str.912, ; 912
	ptr @.str.913, ; 913
	ptr @.str.914, ; 914
	ptr @.str.915, ; 915
	ptr @.str.916, ; 916
	ptr @.str.917, ; 917
	ptr @.str.918, ; 918
	ptr @.str.919, ; 919
	ptr @.str.920, ; 920
	ptr @.str.921, ; 921
	ptr @.str.922, ; 922
	ptr @.str.923, ; 923
	ptr @.str.924, ; 924
	ptr @.str.925, ; 925
	ptr @.str.926, ; 926
	ptr @.str.927, ; 927
	ptr @.str.928, ; 928
	ptr @.str.929, ; 929
	ptr @.str.930, ; 930
	ptr @.str.931, ; 931
	ptr @.str.932, ; 932
	ptr @.str.933, ; 933
	ptr @.str.934, ; 934
	ptr @.str.935, ; 935
	ptr @.str.936, ; 936
	ptr @.str.937, ; 937
	ptr @.str.938, ; 938
	ptr @.str.939, ; 939
	ptr @.str.940, ; 940
	ptr @.str.941, ; 941
	ptr @.str.942, ; 942
	ptr @.str.943, ; 943
	ptr @.str.944, ; 944
	ptr @.str.945, ; 945
	ptr @.str.946, ; 946
	ptr @.str.947, ; 947
	ptr @.str.948, ; 948
	ptr @.str.949, ; 949
	ptr @.str.950, ; 950
	ptr @.str.951, ; 951
	ptr @.str.952, ; 952
	ptr @.str.953, ; 953
	ptr @.str.954, ; 954
	ptr @.str.955, ; 955
	ptr @.str.956, ; 956
	ptr @.str.957, ; 957
	ptr @.str.958, ; 958
	ptr @.str.959, ; 959
	ptr @.str.960, ; 960
	ptr @.str.961, ; 961
	ptr @.str.962, ; 962
	ptr @.str.963, ; 963
	ptr @.str.964, ; 964
	ptr @.str.965, ; 965
	ptr @.str.966, ; 966
	ptr @.str.967, ; 967
	ptr @.str.968, ; 968
	ptr @.str.969, ; 969
	ptr @.str.970, ; 970
	ptr @.str.971, ; 971
	ptr @.str.972, ; 972
	ptr @.str.973, ; 973
	ptr @.str.974, ; 974
	ptr @.str.975, ; 975
	ptr @.str.976, ; 976
	ptr @.str.977, ; 977
	ptr @.str.978, ; 978
	ptr @.str.979, ; 979
	ptr @.str.980, ; 980
	ptr @.str.981, ; 981
	ptr @.str.982, ; 982
	ptr @.str.983, ; 983
	ptr @.str.984, ; 984
	ptr @.str.985, ; 985
	ptr @.str.986, ; 986
	ptr @.str.987, ; 987
	ptr @.str.988, ; 988
	ptr @.str.989, ; 989
	ptr @.str.990, ; 990
	ptr @.str.991, ; 991
	ptr @.str.992, ; 992
	ptr @.str.993, ; 993
	ptr @.str.994, ; 994
	ptr @.str.995, ; 995
	ptr @.str.996, ; 996
	ptr @.str.997, ; 997
	ptr @.str.998, ; 998
	ptr @.str.999, ; 999
	ptr @.str.1000, ; 1000
	ptr @.str.1001, ; 1001
	ptr @.str.1002, ; 1002
	ptr @.str.1003, ; 1003
	ptr @.str.1004, ; 1004
	ptr @.str.1005, ; 1005
	ptr @.str.1006, ; 1006
	ptr @.str.1007, ; 1007
	ptr @.str.1008, ; 1008
	ptr @.str.1009, ; 1009
	ptr @.str.1010, ; 1010
	ptr @.str.1011, ; 1011
	ptr @.str.1012, ; 1012
	ptr @.str.1013, ; 1013
	ptr @.str.1014, ; 1014
	ptr @.str.1015, ; 1015
	ptr @.str.1016, ; 1016
	ptr @.str.1017, ; 1017
	ptr @.str.1018, ; 1018
	ptr @.str.1019, ; 1019
	ptr @.str.1020, ; 1020
	ptr @.str.1021, ; 1021
	ptr @.str.1022, ; 1022
	ptr @.str.1023, ; 1023
	ptr @.str.1024, ; 1024
	ptr @.str.1025, ; 1025
	ptr @.str.1026, ; 1026
	ptr @.str.1027, ; 1027
	ptr @.str.1028, ; 1028
	ptr @.str.1029, ; 1029
	ptr @.str.1030, ; 1030
	ptr @.str.1031, ; 1031
	ptr @.str.1032, ; 1032
	ptr @.str.1033, ; 1033
	ptr @.str.1034, ; 1034
	ptr @.str.1035, ; 1035
	ptr @.str.1036, ; 1036
	ptr @.str.1037, ; 1037
	ptr @.str.1038, ; 1038
	ptr @.str.1039, ; 1039
	ptr @.str.1040, ; 1040
	ptr @.str.1041, ; 1041
	ptr @.str.1042, ; 1042
	ptr @.str.1043, ; 1043
	ptr @.str.1044, ; 1044
	ptr @.str.1045, ; 1045
	ptr @.str.1046, ; 1046
	ptr @.str.1047, ; 1047
	ptr @.str.1048, ; 1048
	ptr @.str.1049, ; 1049
	ptr @.str.1050, ; 1050
	ptr @.str.1051, ; 1051
	ptr @.str.1052, ; 1052
	ptr @.str.1053, ; 1053
	ptr @.str.1054, ; 1054
	ptr @.str.1055, ; 1055
	ptr @.str.1056, ; 1056
	ptr @.str.1057, ; 1057
	ptr @.str.1058, ; 1058
	ptr @.str.1059, ; 1059
	ptr @.str.1060, ; 1060
	ptr @.str.1061, ; 1061
	ptr @.str.1062, ; 1062
	ptr @.str.1063, ; 1063
	ptr @.str.1064, ; 1064
	ptr @.str.1065, ; 1065
	ptr @.str.1066, ; 1066
	ptr @.str.1067, ; 1067
	ptr @.str.1068, ; 1068
	ptr @.str.1069, ; 1069
	ptr @.str.1070, ; 1070
	ptr @.str.1071, ; 1071
	ptr @.str.1072, ; 1072
	ptr @.str.1073, ; 1073
	ptr @.str.1074, ; 1074
	ptr @.str.1075, ; 1075
	ptr @.str.1076, ; 1076
	ptr @.str.1077, ; 1077
	ptr @.str.1078, ; 1078
	ptr @.str.1079, ; 1079
	ptr @.str.1080, ; 1080
	ptr @.str.1081, ; 1081
	ptr @.str.1082, ; 1082
	ptr @.str.1083, ; 1083
	ptr @.str.1084, ; 1084
	ptr @.str.1085, ; 1085
	ptr @.str.1086, ; 1086
	ptr @.str.1087, ; 1087
	ptr @.str.1088, ; 1088
	ptr @.str.1089, ; 1089
	ptr @.str.1090, ; 1090
	ptr @.str.1091, ; 1091
	ptr @.str.1092, ; 1092
	ptr @.str.1093, ; 1093
	ptr @.str.1094, ; 1094
	ptr @.str.1095, ; 1095
	ptr @.str.1096, ; 1096
	ptr @.str.1097, ; 1097
	ptr @.str.1098, ; 1098
	ptr @.str.1099, ; 1099
	ptr @.str.1100, ; 1100
	ptr @.str.1101, ; 1101
	ptr @.str.1102, ; 1102
	ptr @.str.1103, ; 1103
	ptr @.str.1104, ; 1104
	ptr @.str.1105, ; 1105
	ptr @.str.1106, ; 1106
	ptr @.str.1107, ; 1107
	ptr @.str.1108, ; 1108
	ptr @.str.1109, ; 1109
	ptr @.str.1110, ; 1110
	ptr @.str.1111, ; 1111
	ptr @.str.1112, ; 1112
	ptr @.str.1113, ; 1113
	ptr @.str.1114, ; 1114
	ptr @.str.1115, ; 1115
	ptr @.str.1116, ; 1116
	ptr @.str.1117, ; 1117
	ptr @.str.1118, ; 1118
	ptr @.str.1119, ; 1119
	ptr @.str.1120, ; 1120
	ptr @.str.1121, ; 1121
	ptr @.str.1122, ; 1122
	ptr @.str.1123, ; 1123
	ptr @.str.1124, ; 1124
	ptr @.str.1125, ; 1125
	ptr @.str.1126, ; 1126
	ptr @.str.1127, ; 1127
	ptr @.str.1128, ; 1128
	ptr @.str.1129, ; 1129
	ptr @.str.1130, ; 1130
	ptr @.str.1131, ; 1131
	ptr @.str.1132, ; 1132
	ptr @.str.1133, ; 1133
	ptr @.str.1134, ; 1134
	ptr @.str.1135, ; 1135
	ptr @.str.1136, ; 1136
	ptr @.str.1137, ; 1137
	ptr @.str.1138, ; 1138
	ptr @.str.1139, ; 1139
	ptr @.str.1140, ; 1140
	ptr @.str.1141, ; 1141
	ptr @.str.1142, ; 1142
	ptr @.str.1143, ; 1143
	ptr @.str.1144, ; 1144
	ptr @.str.1145, ; 1145
	ptr @.str.1146, ; 1146
	ptr @.str.1147, ; 1147
	ptr @.str.1148, ; 1148
	ptr @.str.1149, ; 1149
	ptr @.str.1150, ; 1150
	ptr @.str.1151, ; 1151
	ptr @.str.1152, ; 1152
	ptr @.str.1153, ; 1153
	ptr @.str.1154, ; 1154
	ptr @.str.1155, ; 1155
	ptr @.str.1156, ; 1156
	ptr @.str.1157, ; 1157
	ptr @.str.1158, ; 1158
	ptr @.str.1159, ; 1159
	ptr @.str.1160, ; 1160
	ptr @.str.1161, ; 1161
	ptr @.str.1162, ; 1162
	ptr @.str.1163, ; 1163
	ptr @.str.1164, ; 1164
	ptr @.str.1165, ; 1165
	ptr @.str.1166, ; 1166
	ptr @.str.1167, ; 1167
	ptr @.str.1168, ; 1168
	ptr @.str.1169, ; 1169
	ptr @.str.1170, ; 1170
	ptr @.str.1171, ; 1171
	ptr @.str.1172, ; 1172
	ptr @.str.1173, ; 1173
	ptr @.str.1174, ; 1174
	ptr @.str.1175, ; 1175
	ptr @.str.1176, ; 1176
	ptr @.str.1177, ; 1177
	ptr @.str.1178, ; 1178
	ptr @.str.1179, ; 1179
	ptr @.str.1180, ; 1180
	ptr @.str.1181, ; 1181
	ptr @.str.1182, ; 1182
	ptr @.str.1183, ; 1183
	ptr @.str.1184, ; 1184
	ptr @.str.1185, ; 1185
	ptr @.str.1186, ; 1186
	ptr @.str.1187, ; 1187
	ptr @.str.1188, ; 1188
	ptr @.str.1189, ; 1189
	ptr @.str.1190, ; 1190
	ptr @.str.1191, ; 1191
	ptr @.str.1192, ; 1192
	ptr @.str.1193, ; 1193
	ptr @.str.1194, ; 1194
	ptr @.str.1195, ; 1195
	ptr @.str.1196, ; 1196
	ptr @.str.1197, ; 1197
	ptr @.str.1198, ; 1198
	ptr @.str.1199, ; 1199
	ptr @.str.1200, ; 1200
	ptr @.str.1201, ; 1201
	ptr @.str.1202, ; 1202
	ptr @.str.1203, ; 1203
	ptr @.str.1204, ; 1204
	ptr @.str.1205, ; 1205
	ptr @.str.1206, ; 1206
	ptr @.str.1207, ; 1207
	ptr @.str.1208, ; 1208
	ptr @.str.1209, ; 1209
	ptr @.str.1210, ; 1210
	ptr @.str.1211, ; 1211
	ptr @.str.1212, ; 1212
	ptr @.str.1213, ; 1213
	ptr @.str.1214, ; 1214
	ptr @.str.1215, ; 1215
	ptr @.str.1216, ; 1216
	ptr @.str.1217, ; 1217
	ptr @.str.1218, ; 1218
	ptr @.str.1219, ; 1219
	ptr @.str.1220, ; 1220
	ptr @.str.1221, ; 1221
	ptr @.str.1222, ; 1222
	ptr @.str.1223, ; 1223
	ptr @.str.1224, ; 1224
	ptr @.str.1225, ; 1225
	ptr @.str.1226, ; 1226
	ptr @.str.1227, ; 1227
	ptr @.str.1228, ; 1228
	ptr @.str.1229, ; 1229
	ptr @.str.1230, ; 1230
	ptr @.str.1231, ; 1231
	ptr @.str.1232, ; 1232
	ptr @.str.1233, ; 1233
	ptr @.str.1234, ; 1234
	ptr @.str.1235, ; 1235
	ptr @.str.1236, ; 1236
	ptr @.str.1237, ; 1237
	ptr @.str.1238, ; 1238
	ptr @.str.1239, ; 1239
	ptr @.str.1240, ; 1240
	ptr @.str.1241, ; 1241
	ptr @.str.1242, ; 1242
	ptr @.str.1243, ; 1243
	ptr @.str.1244, ; 1244
	ptr @.str.1245, ; 1245
	ptr @.str.1246, ; 1246
	ptr @.str.1247, ; 1247
	ptr @.str.1248, ; 1248
	ptr @.str.1249, ; 1249
	ptr @.str.1250, ; 1250
	ptr @.str.1251, ; 1251
	ptr @.str.1252, ; 1252
	ptr @.str.1253, ; 1253
	ptr @.str.1254, ; 1254
	ptr @.str.1255, ; 1255
	ptr @.str.1256, ; 1256
	ptr @.str.1257, ; 1257
	ptr @.str.1258, ; 1258
	ptr @.str.1259, ; 1259
	ptr @.str.1260, ; 1260
	ptr @.str.1261, ; 1261
	ptr @.str.1262, ; 1262
	ptr @.str.1263, ; 1263
	ptr @.str.1264, ; 1264
	ptr @.str.1265, ; 1265
	ptr @.str.1266, ; 1266
	ptr @.str.1267, ; 1267
	ptr @.str.1268, ; 1268
	ptr @.str.1269, ; 1269
	ptr @.str.1270, ; 1270
	ptr @.str.1271, ; 1271
	ptr @.str.1272, ; 1272
	ptr @.str.1273, ; 1273
	ptr @.str.1274, ; 1274
	ptr @.str.1275, ; 1275
	ptr @.str.1276, ; 1276
	ptr @.str.1277, ; 1277
	ptr @.str.1278, ; 1278
	ptr @.str.1279, ; 1279
	ptr @.str.1280, ; 1280
	ptr @.str.1281, ; 1281
	ptr @.str.1282, ; 1282
	ptr @.str.1283, ; 1283
	ptr @.str.1284, ; 1284
	ptr @.str.1285, ; 1285
	ptr @.str.1286, ; 1286
	ptr @.str.1287, ; 1287
	ptr @.str.1288, ; 1288
	ptr @.str.1289, ; 1289
	ptr @.str.1290, ; 1290
	ptr @.str.1291, ; 1291
	ptr @.str.1292, ; 1292
	ptr @.str.1293, ; 1293
	ptr @.str.1294, ; 1294
	ptr @.str.1295, ; 1295
	ptr @.str.1296, ; 1296
	ptr @.str.1297, ; 1297
	ptr @.str.1298, ; 1298
	ptr @.str.1299, ; 1299
	ptr @.str.1300, ; 1300
	ptr @.str.1301, ; 1301
	ptr @.str.1302, ; 1302
	ptr @.str.1303, ; 1303
	ptr @.str.1304, ; 1304
	ptr @.str.1305, ; 1305
	ptr @.str.1306, ; 1306
	ptr @.str.1307, ; 1307
	ptr @.str.1308, ; 1308
	ptr @.str.1309, ; 1309
	ptr @.str.1310, ; 1310
	ptr @.str.1311, ; 1311
	ptr @.str.1312, ; 1312
	ptr @.str.1313, ; 1313
	ptr @.str.1314, ; 1314
	ptr @.str.1315, ; 1315
	ptr @.str.1316, ; 1316
	ptr @.str.1317, ; 1317
	ptr @.str.1318, ; 1318
	ptr @.str.1319, ; 1319
	ptr @.str.1320, ; 1320
	ptr @.str.1321, ; 1321
	ptr @.str.1322, ; 1322
	ptr @.str.1323, ; 1323
	ptr @.str.1324, ; 1324
	ptr @.str.1325, ; 1325
	ptr @.str.1326, ; 1326
	ptr @.str.1327, ; 1327
	ptr @.str.1328, ; 1328
	ptr @.str.1329, ; 1329
	ptr @.str.1330, ; 1330
	ptr @.str.1331, ; 1331
	ptr @.str.1332, ; 1332
	ptr @.str.1333, ; 1333
	ptr @.str.1334, ; 1334
	ptr @.str.1335, ; 1335
	ptr @.str.1336, ; 1336
	ptr @.str.1337, ; 1337
	ptr @.str.1338, ; 1338
	ptr @.str.1339, ; 1339
	ptr @.str.1340, ; 1340
	ptr @.str.1341, ; 1341
	ptr @.str.1342, ; 1342
	ptr @.str.1343, ; 1343
	ptr @.str.1344, ; 1344
	ptr @.str.1345, ; 1345
	ptr @.str.1346, ; 1346
	ptr @.str.1347, ; 1347
	ptr @.str.1348, ; 1348
	ptr @.str.1349, ; 1349
	ptr @.str.1350, ; 1350
	ptr @.str.1351, ; 1351
	ptr @.str.1352, ; 1352
	ptr @.str.1353, ; 1353
	ptr @.str.1354, ; 1354
	ptr @.str.1355, ; 1355
	ptr @.str.1356, ; 1356
	ptr @.str.1357, ; 1357
	ptr @.str.1358, ; 1358
	ptr @.str.1359, ; 1359
	ptr @.str.1360, ; 1360
	ptr @.str.1361, ; 1361
	ptr @.str.1362, ; 1362
	ptr @.str.1363, ; 1363
	ptr @.str.1364, ; 1364
	ptr @.str.1365, ; 1365
	ptr @.str.1366, ; 1366
	ptr @.str.1367, ; 1367
	ptr @.str.1368, ; 1368
	ptr @.str.1369, ; 1369
	ptr @.str.1370, ; 1370
	ptr @.str.1371, ; 1371
	ptr @.str.1372, ; 1372
	ptr @.str.1373, ; 1373
	ptr @.str.1374, ; 1374
	ptr @.str.1375, ; 1375
	ptr @.str.1376, ; 1376
	ptr @.str.1377, ; 1377
	ptr @.str.1378, ; 1378
	ptr @.str.1379, ; 1379
	ptr @.str.1380, ; 1380
	ptr @.str.1381, ; 1381
	ptr @.str.1382, ; 1382
	ptr @.str.1383, ; 1383
	ptr @.str.1384, ; 1384
	ptr @.str.1385, ; 1385
	ptr @.str.1386, ; 1386
	ptr @.str.1387, ; 1387
	ptr @.str.1388, ; 1388
	ptr @.str.1389, ; 1389
	ptr @.str.1390, ; 1390
	ptr @.str.1391, ; 1391
	ptr @.str.1392, ; 1392
	ptr @.str.1393, ; 1393
	ptr @.str.1394, ; 1394
	ptr @.str.1395, ; 1395
	ptr @.str.1396, ; 1396
	ptr @.str.1397, ; 1397
	ptr @.str.1398, ; 1398
	ptr @.str.1399, ; 1399
	ptr @.str.1400, ; 1400
	ptr @.str.1401, ; 1401
	ptr @.str.1402, ; 1402
	ptr @.str.1403, ; 1403
	ptr @.str.1404, ; 1404
	ptr @.str.1405, ; 1405
	ptr @.str.1406, ; 1406
	ptr @.str.1407, ; 1407
	ptr @.str.1408, ; 1408
	ptr @.str.1409, ; 1409
	ptr @.str.1410, ; 1410
	ptr @.str.1411, ; 1411
	ptr @.str.1412, ; 1412
	ptr @.str.1413, ; 1413
	ptr @.str.1414, ; 1414
	ptr @.str.1415, ; 1415
	ptr @.str.1416, ; 1416
	ptr @.str.1417, ; 1417
	ptr @.str.1418, ; 1418
	ptr @.str.1419, ; 1419
	ptr @.str.1420, ; 1420
	ptr @.str.1421, ; 1421
	ptr @.str.1422, ; 1422
	ptr @.str.1423, ; 1423
	ptr @.str.1424, ; 1424
	ptr @.str.1425, ; 1425
	ptr @.str.1426, ; 1426
	ptr @.str.1427, ; 1427
	ptr @.str.1428, ; 1428
	ptr @.str.1429, ; 1429
	ptr @.str.1430, ; 1430
	ptr @.str.1431, ; 1431
	ptr @.str.1432, ; 1432
	ptr @.str.1433, ; 1433
	ptr @.str.1434, ; 1434
	ptr @.str.1435, ; 1435
	ptr @.str.1436, ; 1436
	ptr @.str.1437, ; 1437
	ptr @.str.1438, ; 1438
	ptr @.str.1439, ; 1439
	ptr @.str.1440, ; 1440
	ptr @.str.1441, ; 1441
	ptr @.str.1442, ; 1442
	ptr @.str.1443, ; 1443
	ptr @.str.1444, ; 1444
	ptr @.str.1445, ; 1445
	ptr @.str.1446, ; 1446
	ptr @.str.1447, ; 1447
	ptr @.str.1448, ; 1448
	ptr @.str.1449, ; 1449
	ptr @.str.1450, ; 1450
	ptr @.str.1451, ; 1451
	ptr @.str.1452, ; 1452
	ptr @.str.1453, ; 1453
	ptr @.str.1454, ; 1454
	ptr @.str.1455, ; 1455
	ptr @.str.1456, ; 1456
	ptr @.str.1457, ; 1457
	ptr @.str.1458, ; 1458
	ptr @.str.1459, ; 1459
	ptr @.str.1460, ; 1460
	ptr @.str.1461, ; 1461
	ptr @.str.1462, ; 1462
	ptr @.str.1463, ; 1463
	ptr @.str.1464, ; 1464
	ptr @.str.1465, ; 1465
	ptr @.str.1466, ; 1466
	ptr @.str.1467, ; 1467
	ptr @.str.1468, ; 1468
	ptr @.str.1469, ; 1469
	ptr @.str.1470, ; 1470
	ptr @.str.1471, ; 1471
	ptr @.str.1472, ; 1472
	ptr @.str.1473, ; 1473
	ptr @.str.1474, ; 1474
	ptr @.str.1475, ; 1475
	ptr @.str.1476, ; 1476
	ptr @.str.1477, ; 1477
	ptr @.str.1478, ; 1478
	ptr @.str.1479, ; 1479
	ptr @.str.1480, ; 1480
	ptr @.str.1481, ; 1481
	ptr @.str.1482, ; 1482
	ptr @.str.1483, ; 1483
	ptr @.str.1484, ; 1484
	ptr @.str.1485, ; 1485
	ptr @.str.1486, ; 1486
	ptr @.str.1487, ; 1487
	ptr @.str.1488, ; 1488
	ptr @.str.1489, ; 1489
	ptr @.str.1490, ; 1490
	ptr @.str.1491, ; 1491
	ptr @.str.1492, ; 1492
	ptr @.str.1493, ; 1493
	ptr @.str.1494, ; 1494
	ptr @.str.1495, ; 1495
	ptr @.str.1496, ; 1496
	ptr @.str.1497, ; 1497
	ptr @.str.1498, ; 1498
	ptr @.str.1499, ; 1499
	ptr @.str.1500, ; 1500
	ptr @.str.1501, ; 1501
	ptr @.str.1502, ; 1502
	ptr @.str.1503, ; 1503
	ptr @.str.1504, ; 1504
	ptr @.str.1505, ; 1505
	ptr @.str.1506, ; 1506
	ptr @.str.1507, ; 1507
	ptr @.str.1508, ; 1508
	ptr @.str.1509, ; 1509
	ptr @.str.1510, ; 1510
	ptr @.str.1511, ; 1511
	ptr @.str.1512, ; 1512
	ptr @.str.1513, ; 1513
	ptr @.str.1514, ; 1514
	ptr @.str.1515, ; 1515
	ptr @.str.1516, ; 1516
	ptr @.str.1517, ; 1517
	ptr @.str.1518, ; 1518
	ptr @.str.1519, ; 1519
	ptr @.str.1520, ; 1520
	ptr @.str.1521, ; 1521
	ptr @.str.1522, ; 1522
	ptr @.str.1523, ; 1523
	ptr @.str.1524, ; 1524
	ptr @.str.1525, ; 1525
	ptr @.str.1526, ; 1526
	ptr @.str.1527, ; 1527
	ptr @.str.1528, ; 1528
	ptr @.str.1529, ; 1529
	ptr @.str.1530, ; 1530
	ptr @.str.1531, ; 1531
	ptr @.str.1532, ; 1532
	ptr @.str.1533, ; 1533
	ptr @.str.1534, ; 1534
	ptr @.str.1535, ; 1535
	ptr @.str.1536, ; 1536
	ptr @.str.1537, ; 1537
	ptr @.str.1538, ; 1538
	ptr @.str.1539, ; 1539
	ptr @.str.1540, ; 1540
	ptr @.str.1541, ; 1541
	ptr @.str.1542, ; 1542
	ptr @.str.1543, ; 1543
	ptr @.str.1544, ; 1544
	ptr @.str.1545, ; 1545
	ptr @.str.1546, ; 1546
	ptr @.str.1547, ; 1547
	ptr @.str.1548, ; 1548
	ptr @.str.1549, ; 1549
	ptr @.str.1550, ; 1550
	ptr @.str.1551, ; 1551
	ptr @.str.1552, ; 1552
	ptr @.str.1553, ; 1553
	ptr @.str.1554, ; 1554
	ptr @.str.1555, ; 1555
	ptr @.str.1556, ; 1556
	ptr @.str.1557, ; 1557
	ptr @.str.1558, ; 1558
	ptr @.str.1559, ; 1559
	ptr @.str.1560, ; 1560
	ptr @.str.1561, ; 1561
	ptr @.str.1562, ; 1562
	ptr @.str.1563, ; 1563
	ptr @.str.1564, ; 1564
	ptr @.str.1565, ; 1565
	ptr @.str.1566, ; 1566
	ptr @.str.1567, ; 1567
	ptr @.str.1568, ; 1568
	ptr @.str.1569, ; 1569
	ptr @.str.1570, ; 1570
	ptr @.str.1571, ; 1571
	ptr @.str.1572, ; 1572
	ptr @.str.1573, ; 1573
	ptr @.str.1574, ; 1574
	ptr @.str.1575, ; 1575
	ptr @.str.1576, ; 1576
	ptr @.str.1577, ; 1577
	ptr @.str.1578, ; 1578
	ptr @.str.1579, ; 1579
	ptr @.str.1580, ; 1580
	ptr @.str.1581, ; 1581
	ptr @.str.1582, ; 1582
	ptr @.str.1583, ; 1583
	ptr @.str.1584, ; 1584
	ptr @.str.1585, ; 1585
	ptr @.str.1586, ; 1586
	ptr @.str.1587, ; 1587
	ptr @.str.1588, ; 1588
	ptr @.str.1589, ; 1589
	ptr @.str.1590, ; 1590
	ptr @.str.1591, ; 1591
	ptr @.str.1592, ; 1592
	ptr @.str.1593, ; 1593
	ptr @.str.1594, ; 1594
	ptr @.str.1595, ; 1595
	ptr @.str.1596, ; 1596
	ptr @.str.1597, ; 1597
	ptr @.str.1598, ; 1598
	ptr @.str.1599, ; 1599
	ptr @.str.1600, ; 1600
	ptr @.str.1601, ; 1601
	ptr @.str.1602, ; 1602
	ptr @.str.1603, ; 1603
	ptr @.str.1604, ; 1604
	ptr @.str.1605, ; 1605
	ptr @.str.1606, ; 1606
	ptr @.str.1607, ; 1607
	ptr @.str.1608, ; 1608
	ptr @.str.1609, ; 1609
	ptr @.str.1610, ; 1610
	ptr @.str.1611, ; 1611
	ptr @.str.1612, ; 1612
	ptr @.str.1613, ; 1613
	ptr @.str.1614, ; 1614
	ptr @.str.1615, ; 1615
	ptr @.str.1616, ; 1616
	ptr @.str.1617, ; 1617
	ptr @.str.1618, ; 1618
	ptr @.str.1619, ; 1619
	ptr @.str.1620, ; 1620
	ptr @.str.1621, ; 1621
	ptr @.str.1622, ; 1622
	ptr @.str.1623, ; 1623
	ptr @.str.1624, ; 1624
	ptr @.str.1625, ; 1625
	ptr @.str.1626, ; 1626
	ptr @.str.1627, ; 1627
	ptr @.str.1628, ; 1628
	ptr @.str.1629, ; 1629
	ptr @.str.1630, ; 1630
	ptr @.str.1631, ; 1631
	ptr @.str.1632, ; 1632
	ptr @.str.1633, ; 1633
	ptr @.str.1634, ; 1634
	ptr @.str.1635, ; 1635
	ptr @.str.1636, ; 1636
	ptr @.str.1637, ; 1637
	ptr @.str.1638, ; 1638
	ptr @.str.1639, ; 1639
	ptr @.str.1640, ; 1640
	ptr @.str.1641, ; 1641
	ptr @.str.1642, ; 1642
	ptr @.str.1643, ; 1643
	ptr @.str.1644, ; 1644
	ptr @.str.1645, ; 1645
	ptr @.str.1646, ; 1646
	ptr @.str.1647, ; 1647
	ptr @.str.1648, ; 1648
	ptr @.str.1649, ; 1649
	ptr @.str.1650, ; 1650
	ptr @.str.1651, ; 1651
	ptr @.str.1652, ; 1652
	ptr @.str.1653, ; 1653
	ptr @.str.1654, ; 1654
	ptr @.str.1655, ; 1655
	ptr @.str.1656, ; 1656
	ptr @.str.1657, ; 1657
	ptr @.str.1658, ; 1658
	ptr @.str.1659, ; 1659
	ptr @.str.1660, ; 1660
	ptr @.str.1661, ; 1661
	ptr @.str.1662, ; 1662
	ptr @.str.1663, ; 1663
	ptr @.str.1664, ; 1664
	ptr @.str.1665, ; 1665
	ptr @.str.1666, ; 1666
	ptr @.str.1667, ; 1667
	ptr @.str.1668, ; 1668
	ptr @.str.1669, ; 1669
	ptr @.str.1670, ; 1670
	ptr @.str.1671, ; 1671
	ptr @.str.1672, ; 1672
	ptr @.str.1673, ; 1673
	ptr @.str.1674, ; 1674
	ptr @.str.1675, ; 1675
	ptr @.str.1676, ; 1676
	ptr @.str.1677, ; 1677
	ptr @.str.1678, ; 1678
	ptr @.str.1679, ; 1679
	ptr @.str.1680, ; 1680
	ptr @.str.1681, ; 1681
	ptr @.str.1682, ; 1682
	ptr @.str.1683, ; 1683
	ptr @.str.1684, ; 1684
	ptr @.str.1685, ; 1685
	ptr @.str.1686, ; 1686
	ptr @.str.1687, ; 1687
	ptr @.str.1688, ; 1688
	ptr @.str.1689, ; 1689
	ptr @.str.1690, ; 1690
	ptr @.str.1691, ; 1691
	ptr @.str.1692, ; 1692
	ptr @.str.1693, ; 1693
	ptr @.str.1694, ; 1694
	ptr @.str.1695, ; 1695
	ptr @.str.1696, ; 1696
	ptr @.str.1697, ; 1697
	ptr @.str.1698, ; 1698
	ptr @.str.1699, ; 1699
	ptr @.str.1700, ; 1700
	ptr @.str.1701, ; 1701
	ptr @.str.1702, ; 1702
	ptr @.str.1703, ; 1703
	ptr @.str.1704, ; 1704
	ptr @.str.1705, ; 1705
	ptr @.str.1706, ; 1706
	ptr @.str.1707, ; 1707
	ptr @.str.1708, ; 1708
	ptr @.str.1709, ; 1709
	ptr @.str.1710, ; 1710
	ptr @.str.1711, ; 1711
	ptr @.str.1712, ; 1712
	ptr @.str.1713, ; 1713
	ptr @.str.1714, ; 1714
	ptr @.str.1715, ; 1715
	ptr @.str.1716, ; 1716
	ptr @.str.1717, ; 1717
	ptr @.str.1718, ; 1718
	ptr @.str.1719, ; 1719
	ptr @.str.1720, ; 1720
	ptr @.str.1721, ; 1721
	ptr @.str.1722, ; 1722
	ptr @.str.1723, ; 1723
	ptr @.str.1724, ; 1724
	ptr @.str.1725, ; 1725
	ptr @.str.1726, ; 1726
	ptr @.str.1727, ; 1727
	ptr @.str.1728, ; 1728
	ptr @.str.1729, ; 1729
	ptr @.str.1730, ; 1730
	ptr @.str.1731, ; 1731
	ptr @.str.1732, ; 1732
	ptr @.str.1733, ; 1733
	ptr @.str.1734, ; 1734
	ptr @.str.1735, ; 1735
	ptr @.str.1736, ; 1736
	ptr @.str.1737, ; 1737
	ptr @.str.1738, ; 1738
	ptr @.str.1739, ; 1739
	ptr @.str.1740, ; 1740
	ptr @.str.1741, ; 1741
	ptr @.str.1742, ; 1742
	ptr @.str.1743, ; 1743
	ptr @.str.1744, ; 1744
	ptr @.str.1745, ; 1745
	ptr @.str.1746, ; 1746
	ptr @.str.1747, ; 1747
	ptr @.str.1748, ; 1748
	ptr @.str.1749, ; 1749
	ptr @.str.1750, ; 1750
	ptr @.str.1751, ; 1751
	ptr @.str.1752, ; 1752
	ptr @.str.1753, ; 1753
	ptr @.str.1754, ; 1754
	ptr @.str.1755, ; 1755
	ptr @.str.1756, ; 1756
	ptr @.str.1757, ; 1757
	ptr @.str.1758, ; 1758
	ptr @.str.1759, ; 1759
	ptr @.str.1760, ; 1760
	ptr @.str.1761, ; 1761
	ptr @.str.1762, ; 1762
	ptr @.str.1763, ; 1763
	ptr @.str.1764, ; 1764
	ptr @.str.1765, ; 1765
	ptr @.str.1766, ; 1766
	ptr @.str.1767, ; 1767
	ptr @.str.1768, ; 1768
	ptr @.str.1769, ; 1769
	ptr @.str.1770, ; 1770
	ptr @.str.1771, ; 1771
	ptr @.str.1772, ; 1772
	ptr @.str.1773, ; 1773
	ptr @.str.1774, ; 1774
	ptr @.str.1775, ; 1775
	ptr @.str.1776, ; 1776
	ptr @.str.1777, ; 1777
	ptr @.str.1778, ; 1778
	ptr @.str.1779, ; 1779
	ptr @.str.1780, ; 1780
	ptr @.str.1781, ; 1781
	ptr @.str.1782 ; 1782
], align 8

; Strings
@.str.0 = private unnamed_addr constant [29 x i8] c"org/xmlpull/v1/XmlPullParser\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"org/xmlpull/v1/XmlPullParserException\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"javax/security/cert/Certificate\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"javax/security/cert/X509Certificate\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"javax/security/auth/Subject\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"javax/net/SocketFactory\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"javax/net/ssl/HttpsURLConnection\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/HostnameVerifier\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/KeyManager\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/SSLSession\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"javax/net/ssl/SSLSessionContext\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"javax/net/ssl/TrustManager\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"javax/net/ssl/KeyManagerFactory\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/SSLContext\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/SSLSocketFactory\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"javax/net/ssl/TrustManagerFactory\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"javax/microedition/khronos/opengles/GL\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"javax/microedition/khronos/opengles/GL10\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"javax/microedition/khronos/egl/EGLContext\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"javax/microedition/khronos/egl/EGLConfig\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"javax/microedition/khronos/egl/EGLDisplay\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"javax/microedition/khronos/egl/EGLSurface\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"javax/microedition/khronos/egl/EGL\00", align 1
@.str.23 = private unnamed_addr constant [51 x i8] c"mono/internal/javax/microedition/khronos/egl/EGL10\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"javax/microedition/khronos/egl/EGL10\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"android/window/BackEvent\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"android/window/InputTransferToken\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"android/window/OnBackInvokedCallback\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"android/window/OnBackInvokedDispatcher\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"android/window/TrustedPresentationThresholds\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"android/webkit/CookieManager\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"android/webkit/ValueCallback\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"android/webkit/WebResourceRequest\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"android/webkit/MimeTypeMap\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"android/webkit/RenderProcessGoneDetail\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"android/webkit/WebChromeClient\00", align 1
@.str.36 = private unnamed_addr constant [49 x i8] c"android/webkit/WebChromeClient$FileChooserParams\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"android/webkit/WebMessage\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"android/webkit/WebResourceError\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"android/webkit/WebResourceResponse\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"android/webkit/WebSettings\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"android/webkit/WebView\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"android/webkit/WebViewClient\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"android/speech/RecognitionListener\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"android/speech/SpeechRecognizer\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"android/speech/tts/TextToSpeech\00", align 1
@.str.46 = private unnamed_addr constant [47 x i8] c"android/speech/tts/TextToSpeech$OnInitListener\00", align 1
@.str.47 = private unnamed_addr constant [61 x i8] c"android/speech/tts/TextToSpeech$OnUtteranceCompletedListener\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"android/service/notification/StatusBarNotification\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"android/provider/DocumentsContract\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"android/provider/MediaStore\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"android/provider/MediaStore$Audio\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"android/provider/MediaStore$Audio$Media\00", align 1
@.str.53 = private unnamed_addr constant [35 x i8] c"android/provider/MediaStore$Images\00", align 1
@.str.54 = private unnamed_addr constant [41 x i8] c"android/provider/MediaStore$Images$Media\00", align 1
@.str.55 = private unnamed_addr constant [34 x i8] c"android/provider/MediaStore$Video\00", align 1
@.str.56 = private unnamed_addr constant [40 x i8] c"android/provider/MediaStore$Video$Media\00", align 1
@.str.57 = private unnamed_addr constant [26 x i8] c"android/provider/Settings\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"android/provider/Settings$Global\00", align 1
@.str.59 = private unnamed_addr constant [41 x i8] c"android/provider/Settings$NameValueTable\00", align 1
@.str.60 = private unnamed_addr constant [33 x i8] c"android/database/CharArrayBuffer\00", align 1
@.str.61 = private unnamed_addr constant [33 x i8] c"android/database/ContentObserver\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"android/database/DataSetObserver\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"android/database/Cursor\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"android/widget/AbsListView\00", align 1
@.str.65 = private unnamed_addr constant [44 x i8] c"android/widget/AbsListView$OnScrollListener\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"android/widget/AdapterView\00", align 1
@.str.67 = private unnamed_addr constant [47 x i8] c"android/widget/AdapterView$OnItemClickListener\00", align 1
@.str.68 = private unnamed_addr constant [63 x i8] c"mono/android/widget/AdapterView_OnItemClickListenerImplementor\00", align 1
@.str.69 = private unnamed_addr constant [51 x i8] c"android/widget/AdapterView$OnItemLongClickListener\00", align 1
@.str.70 = private unnamed_addr constant [50 x i8] c"android/widget/AdapterView$OnItemSelectedListener\00", align 1
@.str.71 = private unnamed_addr constant [36 x i8] c"android/widget/AutoCompleteTextView\00", align 1
@.str.72 = private unnamed_addr constant [27 x i8] c"android/widget/BaseAdapter\00", align 1
@.str.73 = private unnamed_addr constant [26 x i8] c"android/widget/DatePicker\00", align 1
@.str.74 = private unnamed_addr constant [24 x i8] c"android/widget/TextView\00", align 1
@.str.75 = private unnamed_addr constant [35 x i8] c"android/widget/TextView$BufferType\00", align 1
@.str.76 = private unnamed_addr constant [47 x i8] c"android/widget/TextView$OnEditorActionListener\00", align 1
@.str.77 = private unnamed_addr constant [63 x i8] c"mono/android/widget/TextView_OnEditorActionListenerImplementor\00", align 1
@.str.78 = private unnamed_addr constant [30 x i8] c"android/widget/AbsoluteLayout\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c"android/widget/AbsSeekBar\00", align 1
@.str.80 = private unnamed_addr constant [22 x i8] c"android/widget/Button\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"android/widget/CheckBox\00", align 1
@.str.82 = private unnamed_addr constant [30 x i8] c"android/widget/CompoundButton\00", align 1
@.str.83 = private unnamed_addr constant [54 x i8] c"android/widget/CompoundButton$OnCheckedChangeListener\00", align 1
@.str.84 = private unnamed_addr constant [70 x i8] c"mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor\00", align 1
@.str.85 = private unnamed_addr constant [26 x i8] c"android/widget/EdgeEffect\00", align 1
@.str.86 = private unnamed_addr constant [24 x i8] c"android/widget/EditText\00", align 1
@.str.87 = private unnamed_addr constant [22 x i8] c"android/widget/Filter\00", align 1
@.str.88 = private unnamed_addr constant [36 x i8] c"android/widget/Filter$FilterResults\00", align 1
@.str.89 = private unnamed_addr constant [27 x i8] c"android/widget/FrameLayout\00", align 1
@.str.90 = private unnamed_addr constant [40 x i8] c"android/widget/FrameLayout$LayoutParams\00", align 1
@.str.91 = private unnamed_addr constant [36 x i8] c"android/widget/HorizontalScrollView\00", align 1
@.str.92 = private unnamed_addr constant [23 x i8] c"android/widget/Adapter\00", align 1
@.str.93 = private unnamed_addr constant [26 x i8] c"android/widget/Filterable\00", align 1
@.str.94 = private unnamed_addr constant [35 x i8] c"android/widget/FilterQueryProvider\00", align 1
@.str.95 = private unnamed_addr constant [27 x i8] c"android/widget/ListAdapter\00", align 1
@.str.96 = private unnamed_addr constant [27 x i8] c"android/widget/ImageButton\00", align 1
@.str.97 = private unnamed_addr constant [25 x i8] c"android/widget/ImageView\00", align 1
@.str.98 = private unnamed_addr constant [35 x i8] c"android/widget/ImageView$ScaleType\00", align 1
@.str.99 = private unnamed_addr constant [30 x i8] c"android/widget/SectionIndexer\00", align 1
@.str.100 = private unnamed_addr constant [30 x i8] c"android/widget/SpinnerAdapter\00", align 1
@.str.101 = private unnamed_addr constant [28 x i8] c"android/widget/LinearLayout\00", align 1
@.str.102 = private unnamed_addr constant [41 x i8] c"android/widget/LinearLayout$LayoutParams\00", align 1
@.str.103 = private unnamed_addr constant [24 x i8] c"android/widget/ListView\00", align 1
@.str.104 = private unnamed_addr constant [28 x i8] c"android/widget/OverScroller\00", align 1
@.str.105 = private unnamed_addr constant [27 x i8] c"android/widget/PopupWindow\00", align 1
@.str.106 = private unnamed_addr constant [45 x i8] c"android/widget/PopupWindow$OnDismissListener\00", align 1
@.str.107 = private unnamed_addr constant [61 x i8] c"mono/android/widget/PopupWindow_OnDismissListenerImplementor\00", align 1
@.str.108 = private unnamed_addr constant [27 x i8] c"android/widget/ProgressBar\00", align 1
@.str.109 = private unnamed_addr constant [27 x i8] c"android/widget/RadioButton\00", align 1
@.str.110 = private unnamed_addr constant [30 x i8] c"android/widget/RelativeLayout\00", align 1
@.str.111 = private unnamed_addr constant [43 x i8] c"android/widget/RelativeLayout$LayoutParams\00", align 1
@.str.112 = private unnamed_addr constant [27 x i8] c"android/widget/RemoteViews\00", align 1
@.str.113 = private unnamed_addr constant [26 x i8] c"android/widget/ScrollView\00", align 1
@.str.114 = private unnamed_addr constant [26 x i8] c"android/widget/SearchView\00", align 1
@.str.115 = private unnamed_addr constant [23 x i8] c"android/widget/SeekBar\00", align 1
@.str.116 = private unnamed_addr constant [47 x i8] c"android/widget/SeekBar$OnSeekBarChangeListener\00", align 1
@.str.117 = private unnamed_addr constant [22 x i8] c"android/widget/Switch\00", align 1
@.str.118 = private unnamed_addr constant [26 x i8] c"android/widget/TimePicker\00", align 1
@.str.119 = private unnamed_addr constant [17 x i8] c"android/util/Log\00", align 1
@.str.120 = private unnamed_addr constant [28 x i8] c"android/util/DisplayMetrics\00", align 1
@.str.121 = private unnamed_addr constant [26 x i8] c"android/util/AttributeSet\00", align 1
@.str.122 = private unnamed_addr constant [18 x i8] c"android/util/Pair\00", align 1
@.str.123 = private unnamed_addr constant [19 x i8] c"android/util/Range\00", align 1
@.str.124 = private unnamed_addr constant [22 x i8] c"android/util/Rational\00", align 1
@.str.125 = private unnamed_addr constant [18 x i8] c"android/util/Size\00", align 1
@.str.126 = private unnamed_addr constant [19 x i8] c"android/util/SizeF\00", align 1
@.str.127 = private unnamed_addr constant [25 x i8] c"android/util/SparseArray\00", align 1
@.str.128 = private unnamed_addr constant [22 x i8] c"android/util/StateSet\00", align 1
@.str.129 = private unnamed_addr constant [24 x i8] c"android/util/TypedValue\00", align 1
@.str.130 = private unnamed_addr constant [17 x i8] c"android/util/Xml\00", align 1
@.str.131 = private unnamed_addr constant [41 x i8] c"mono/android/text/TextWatcherImplementor\00", align 1
@.str.132 = private unnamed_addr constant [18 x i8] c"android/text/Html\00", align 1
@.str.133 = private unnamed_addr constant [22 x i8] c"android/text/Editable\00", align 1
@.str.134 = private unnamed_addr constant [22 x i8] c"android/text/GetChars\00", align 1
@.str.135 = private unnamed_addr constant [38 x i8] c"android/text/InputFilter$LengthFilter\00", align 1
@.str.136 = private unnamed_addr constant [25 x i8] c"android/text/InputFilter\00", align 1
@.str.137 = private unnamed_addr constant [24 x i8] c"android/text/NoCopySpan\00", align 1
@.str.138 = private unnamed_addr constant [23 x i8] c"android/text/Spannable\00", align 1
@.str.139 = private unnamed_addr constant [21 x i8] c"android/text/Spanned\00", align 1
@.str.140 = private unnamed_addr constant [36 x i8] c"android/text/TextDirectionHeuristic\00", align 1
@.str.141 = private unnamed_addr constant [25 x i8] c"android/text/TextWatcher\00", align 1
@.str.142 = private unnamed_addr constant [20 x i8] c"android/text/Layout\00", align 1
@.str.143 = private unnamed_addr constant [30 x i8] c"android/text/Layout$Alignment\00", align 1
@.str.144 = private unnamed_addr constant [29 x i8] c"android/text/SpannableString\00", align 1
@.str.145 = private unnamed_addr constant [36 x i8] c"android/text/SpannableStringBuilder\00", align 1
@.str.146 = private unnamed_addr constant [37 x i8] c"android/text/SpannableStringInternal\00", align 1
@.str.147 = private unnamed_addr constant [26 x i8] c"android/text/StaticLayout\00", align 1
@.str.148 = private unnamed_addr constant [34 x i8] c"android/text/StaticLayout$Builder\00", align 1
@.str.149 = private unnamed_addr constant [23 x i8] c"android/text/TextPaint\00", align 1
@.str.150 = private unnamed_addr constant [23 x i8] c"android/text/TextUtils\00", align 1
@.str.151 = private unnamed_addr constant [34 x i8] c"android/text/TextUtils$TruncateAt\00", align 1
@.str.152 = private unnamed_addr constant [39 x i8] c"android/text/style/BackgroundColorSpan\00", align 1
@.str.153 = private unnamed_addr constant [30 x i8] c"android/text/style/BulletSpan\00", align 1
@.str.154 = private unnamed_addr constant [34 x i8] c"android/text/style/CharacterStyle\00", align 1
@.str.155 = private unnamed_addr constant [33 x i8] c"android/text/style/ClickableSpan\00", align 1
@.str.156 = private unnamed_addr constant [39 x i8] c"android/text/style/ForegroundColorSpan\00", align 1
@.str.157 = private unnamed_addr constant [34 x i8] c"android/text/style/LineHeightSpan\00", align 1
@.str.158 = private unnamed_addr constant [34 x i8] c"android/text/style/ParagraphStyle\00", align 1
@.str.159 = private unnamed_addr constant [36 x i8] c"android/text/style/WrapTogetherSpan\00", align 1
@.str.160 = private unnamed_addr constant [39 x i8] c"android/text/style/MetricAffectingSpan\00", align 1
@.str.161 = private unnamed_addr constant [37 x i8] c"android/text/style/StrikethroughSpan\00", align 1
@.str.162 = private unnamed_addr constant [29 x i8] c"android/text/style/StyleSpan\00", align 1
@.str.163 = private unnamed_addr constant [33 x i8] c"android/text/style/SubscriptSpan\00", align 1
@.str.164 = private unnamed_addr constant [35 x i8] c"android/text/style/SuperscriptSpan\00", align 1
@.str.165 = private unnamed_addr constant [32 x i8] c"android/text/style/TypefaceSpan\00", align 1
@.str.166 = private unnamed_addr constant [33 x i8] c"android/text/style/UnderlineSpan\00", align 1
@.str.167 = private unnamed_addr constant [36 x i8] c"android/text/method/BaseKeyListener\00", align 1
@.str.168 = private unnamed_addr constant [38 x i8] c"android/text/method/DigitsKeyListener\00", align 1
@.str.169 = private unnamed_addr constant [32 x i8] c"android/text/method/KeyListener\00", align 1
@.str.170 = private unnamed_addr constant [35 x i8] c"android/text/method/MovementMethod\00", align 1
@.str.171 = private unnamed_addr constant [39 x i8] c"android/text/method/MetaKeyKeyListener\00", align 1
@.str.172 = private unnamed_addr constant [38 x i8] c"android/text/method/NumberKeyListener\00", align 1
@.str.173 = private unnamed_addr constant [31 x i8] c"android/text/format/DateFormat\00", align 1
@.str.174 = private unnamed_addr constant [37 x i8] c"android/preference/PreferenceManager\00", align 1
@.str.175 = private unnamed_addr constant [29 x i8] c"android/opengl/GLSurfaceView\00", align 1
@.str.176 = private unnamed_addr constant [38 x i8] c"android/opengl/GLSurfaceView$Renderer\00", align 1
@.str.177 = private unnamed_addr constant [29 x i8] c"android/opengl/GLDebugHelper\00", align 1
@.str.178 = private unnamed_addr constant [22 x i8] c"android/opengl/GLES10\00", align 1
@.str.179 = private unnamed_addr constant [22 x i8] c"android/opengl/GLES20\00", align 1
@.str.180 = private unnamed_addr constant [22 x i8] c"android/opengl/Matrix\00", align 1
@.str.181 = private unnamed_addr constant [19 x i8] c"android/os/Handler\00", align 1
@.str.182 = private unnamed_addr constant [28 x i8] c"android/os/Handler$Callback\00", align 1
@.str.183 = private unnamed_addr constant [19 x i8] c"android/os/Message\00", align 1
@.str.184 = private unnamed_addr constant [24 x i8] c"android/os/PowerManager\00", align 1
@.str.185 = private unnamed_addr constant [22 x i8] c"android/os/BaseBundle\00", align 1
@.str.186 = private unnamed_addr constant [18 x i8] c"android/os/Binder\00", align 1
@.str.187 = private unnamed_addr constant [17 x i8] c"android/os/Build\00", align 1
@.str.188 = private unnamed_addr constant [25 x i8] c"android/os/Build$VERSION\00", align 1
@.str.189 = private unnamed_addr constant [18 x i8] c"android/os/Bundle\00", align 1
@.str.190 = private unnamed_addr constant [30 x i8] c"android/os/CancellationSignal\00", align 1
@.str.191 = private unnamed_addr constant [23 x i8] c"android/os/Environment\00", align 1
@.str.192 = private unnamed_addr constant [34 x i8] c"android/os/IBinder$DeathRecipient\00", align 1
@.str.193 = private unnamed_addr constant [19 x i8] c"android/os/IBinder\00", align 1
@.str.194 = private unnamed_addr constant [22 x i8] c"android/os/IInterface\00", align 1
@.str.195 = private unnamed_addr constant [30 x i8] c"android/os/Parcelable$Creator\00", align 1
@.str.196 = private unnamed_addr constant [22 x i8] c"android/os/Parcelable\00", align 1
@.str.197 = private unnamed_addr constant [22 x i8] c"android/os/LocaleList\00", align 1
@.str.198 = private unnamed_addr constant [18 x i8] c"android/os/Looper\00", align 1
@.str.199 = private unnamed_addr constant [18 x i8] c"android/os/Parcel\00", align 1
@.str.200 = private unnamed_addr constant [32 x i8] c"android/os/ParcelFileDescriptor\00", align 1
@.str.201 = private unnamed_addr constant [29 x i8] c"android/os/PersistableBundle\00", align 1
@.str.202 = private unnamed_addr constant [26 x i8] c"android/os/ResultReceiver\00", align 1
@.str.203 = private unnamed_addr constant [22 x i8] c"android/os/UserHandle\00", align 1
@.str.204 = private unnamed_addr constant [37 x i8] c"android/media/MediaMetadataRetriever\00", align 1
@.str.205 = private unnamed_addr constant [30 x i8] c"android/media/AudioAttributes\00", align 1
@.str.206 = private unnamed_addr constant [30 x i8] c"android/media/AudioDeviceInfo\00", align 1
@.str.207 = private unnamed_addr constant [20 x i8] c"android/media/Image\00", align 1
@.str.208 = private unnamed_addr constant [26 x i8] c"android/media/Image$Plane\00", align 1
@.str.209 = private unnamed_addr constant [25 x i8] c"android/media/MediaCodec\00", align 1
@.str.210 = private unnamed_addr constant [36 x i8] c"android/media/MediaCodec$CryptoInfo\00", align 1
@.str.211 = private unnamed_addr constant [26 x i8] c"android/media/MediaFormat\00", align 1
@.str.212 = private unnamed_addr constant [35 x i8] c"android/media/session/MediaSession\00", align 1
@.str.213 = private unnamed_addr constant [41 x i8] c"android/media/session/MediaSession$Token\00", align 1
@.str.214 = private unnamed_addr constant [42 x i8] c"android/media/session/MediaSessionManager\00", align 1
@.str.215 = private unnamed_addr constant [57 x i8] c"android/media/session/MediaSessionManager$RemoteUserInfo\00", align 1
@.str.216 = private unnamed_addr constant [35 x i8] c"android/media/metrics/LogSessionId\00", align 1
@.str.217 = private unnamed_addr constant [26 x i8] c"android/location/Location\00", align 1
@.str.218 = private unnamed_addr constant [27 x i8] c"android/animation/Animator\00", align 1
@.str.219 = private unnamed_addr constant [44 x i8] c"android/animation/Animator$AnimatorListener\00", align 1
@.str.220 = private unnamed_addr constant [47 x i8] c"mono/android/animation/AnimatorEventDispatcher\00", align 1
@.str.221 = private unnamed_addr constant [32 x i8] c"android/animation/ValueAnimator\00", align 1
@.str.222 = private unnamed_addr constant [55 x i8] c"android/animation/ValueAnimator$AnimatorUpdateListener\00", align 1
@.str.223 = private unnamed_addr constant [71 x i8] c"mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor\00", align 1
@.str.224 = private unnamed_addr constant [60 x i8] c"android/animation/ValueAnimator$DurationScaleChangeListener\00", align 1
@.str.225 = private unnamed_addr constant [42 x i8] c"android/animation/AnimatorListenerAdapter\00", align 1
@.str.226 = private unnamed_addr constant [35 x i8] c"android/animation/TimeInterpolator\00", align 1
@.str.227 = private unnamed_addr constant [40 x i8] c"android/view/WindowManager$LayoutParams\00", align 1
@.str.228 = private unnamed_addr constant [18 x i8] c"android/view/View\00", align 1
@.str.229 = private unnamed_addr constant [40 x i8] c"android/view/View$AccessibilityDelegate\00", align 1
@.str.230 = private unnamed_addr constant [36 x i8] c"android/view/View$DragShadowBuilder\00", align 1
@.str.231 = private unnamed_addr constant [30 x i8] c"android/view/View$MeasureSpec\00", align 1
@.str.232 = private unnamed_addr constant [46 x i8] c"android/view/View$OnAttachStateChangeListener\00", align 1
@.str.233 = private unnamed_addr constant [62 x i8] c"mono/android/view/View_OnAttachStateChangeListenerImplementor\00", align 1
@.str.234 = private unnamed_addr constant [34 x i8] c"android/view/View$OnClickListener\00", align 1
@.str.235 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnClickListenerImplementor\00", align 1
@.str.236 = private unnamed_addr constant [33 x i8] c"android/view/View$OnDragListener\00", align 1
@.str.237 = private unnamed_addr constant [40 x i8] c"android/view/View$OnFocusChangeListener\00", align 1
@.str.238 = private unnamed_addr constant [56 x i8] c"mono/android/view/View_OnFocusChangeListenerImplementor\00", align 1
@.str.239 = private unnamed_addr constant [34 x i8] c"android/view/View$OnHoverListener\00", align 1
@.str.240 = private unnamed_addr constant [32 x i8] c"android/view/View$OnKeyListener\00", align 1
@.str.241 = private unnamed_addr constant [48 x i8] c"mono/android/view/View_OnKeyListenerImplementor\00", align 1
@.str.242 = private unnamed_addr constant [41 x i8] c"android/view/View$OnLayoutChangeListener\00", align 1
@.str.243 = private unnamed_addr constant [57 x i8] c"mono/android/view/View_OnLayoutChangeListenerImplementor\00", align 1
@.str.244 = private unnamed_addr constant [41 x i8] c"android/view/View$OnScrollChangeListener\00", align 1
@.str.245 = private unnamed_addr constant [57 x i8] c"mono/android/view/View_OnScrollChangeListenerImplementor\00", align 1
@.str.246 = private unnamed_addr constant [34 x i8] c"android/view/View$OnTouchListener\00", align 1
@.str.247 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnTouchListenerImplementor\00", align 1
@.str.248 = private unnamed_addr constant [22 x i8] c"android/view/KeyEvent\00", align 1
@.str.249 = private unnamed_addr constant [28 x i8] c"android/view/LayoutInflater\00", align 1
@.str.250 = private unnamed_addr constant [25 x i8] c"android/view/MotionEvent\00", align 1
@.str.251 = private unnamed_addr constant [30 x i8] c"android/view/ViewTreeObserver\00", align 1
@.str.252 = private unnamed_addr constant [53 x i8] c"android/view/ViewTreeObserver$OnGlobalLayoutListener\00", align 1
@.str.253 = private unnamed_addr constant [20 x i8] c"android/view/Window\00", align 1
@.str.254 = private unnamed_addr constant [29 x i8] c"android/view/Window$Callback\00", align 1
@.str.255 = private unnamed_addr constant [24 x i8] c"android/view/ActionMode\00", align 1
@.str.256 = private unnamed_addr constant [33 x i8] c"android/view/ActionMode$Callback\00", align 1
@.str.257 = private unnamed_addr constant [28 x i8] c"android/view/ActionProvider\00", align 1
@.str.258 = private unnamed_addr constant [27 x i8] c"android/view/Choreographer\00", align 1
@.str.259 = private unnamed_addr constant [25 x i8] c"android/view/ContentInfo\00", align 1
@.str.260 = private unnamed_addr constant [33 x i8] c"android/view/ContextThemeWrapper\00", align 1
@.str.261 = private unnamed_addr constant [21 x i8] c"android/view/Display\00", align 1
@.str.262 = private unnamed_addr constant [23 x i8] c"android/view/DragEvent\00", align 1
@.str.263 = private unnamed_addr constant [29 x i8] c"android/view/GestureDetector\00", align 1
@.str.264 = private unnamed_addr constant [49 x i8] c"android/view/GestureDetector$OnDoubleTapListener\00", align 1
@.str.265 = private unnamed_addr constant [47 x i8] c"android/view/GestureDetector$OnGestureListener\00", align 1
@.str.266 = private unnamed_addr constant [53 x i8] c"android/view/GestureDetector$SimpleOnGestureListener\00", align 1
@.str.267 = private unnamed_addr constant [41 x i8] c"android/view/ContextMenu$ContextMenuInfo\00", align 1
@.str.268 = private unnamed_addr constant [25 x i8] c"android/view/ContextMenu\00", align 1
@.str.269 = private unnamed_addr constant [18 x i8] c"android/view/Menu\00", align 1
@.str.270 = private unnamed_addr constant [45 x i8] c"android/view/MenuItem$OnActionExpandListener\00", align 1
@.str.271 = private unnamed_addr constant [46 x i8] c"android/view/MenuItem$OnMenuItemClickListener\00", align 1
@.str.272 = private unnamed_addr constant [22 x i8] c"android/view/MenuItem\00", align 1
@.str.273 = private unnamed_addr constant [24 x i8] c"android/view/InputEvent\00", align 1
@.str.274 = private unnamed_addr constant [21 x i8] c"android/view/SubMenu\00", align 1
@.str.275 = private unnamed_addr constant [41 x i8] c"android/view/SurfaceControlInputReceiver\00", align 1
@.str.276 = private unnamed_addr constant [36 x i8] c"android/view/SurfaceHolder$Callback\00", align 1
@.str.277 = private unnamed_addr constant [27 x i8] c"android/view/SurfaceHolder\00", align 1
@.str.278 = private unnamed_addr constant [25 x i8] c"android/view/ViewManager\00", align 1
@.str.279 = private unnamed_addr constant [24 x i8] c"android/view/ViewParent\00", align 1
@.str.280 = private unnamed_addr constant [45 x i8] c"android/view/WindowInsetsAnimationController\00", align 1
@.str.281 = private unnamed_addr constant [50 x i8] c"android/view/WindowInsetsAnimationControlListener\00", align 1
@.str.282 = private unnamed_addr constant [36 x i8] c"android/view/WindowInsetsController\00", align 1
@.str.283 = private unnamed_addr constant [72 x i8] c"android/view/WindowInsetsController$OnControllableInsetsChangedListener\00", align 1
@.str.284 = private unnamed_addr constant [27 x i8] c"android/view/WindowManager\00", align 1
@.str.285 = private unnamed_addr constant [35 x i8] c"android/view/KeyboardShortcutGroup\00", align 1
@.str.286 = private unnamed_addr constant [34 x i8] c"android/view/KeyboardShortcutInfo\00", align 1
@.str.287 = private unnamed_addr constant [26 x i8] c"android/view/MenuInflater\00", align 1
@.str.288 = private unnamed_addr constant [38 x i8] c"android/view/OrientationEventListener\00", align 1
@.str.289 = private unnamed_addr constant [34 x i8] c"android/view/ScaleGestureDetector\00", align 1
@.str.290 = private unnamed_addr constant [57 x i8] c"android/view/ScaleGestureDetector$OnScaleGestureListener\00", align 1
@.str.291 = private unnamed_addr constant [63 x i8] c"android/view/ScaleGestureDetector$SimpleOnScaleGestureListener\00", align 1
@.str.292 = private unnamed_addr constant [25 x i8] c"android/view/SearchEvent\00", align 1
@.str.293 = private unnamed_addr constant [21 x i8] c"android/view/Surface\00", align 1
@.str.294 = private unnamed_addr constant [28 x i8] c"android/view/SurfaceControl\00", align 1
@.str.295 = private unnamed_addr constant [25 x i8] c"android/view/SurfaceView\00", align 1
@.str.296 = private unnamed_addr constant [25 x i8] c"android/view/TextureView\00", align 1
@.str.297 = private unnamed_addr constant [48 x i8] c"android/view/TextureView$SurfaceTextureListener\00", align 1
@.str.298 = private unnamed_addr constant [31 x i8] c"android/view/ViewConfiguration\00", align 1
@.str.299 = private unnamed_addr constant [23 x i8] c"android/view/ViewGroup\00", align 1
@.str.300 = private unnamed_addr constant [36 x i8] c"android/view/ViewGroup$LayoutParams\00", align 1
@.str.301 = private unnamed_addr constant [42 x i8] c"android/view/ViewGroup$MarginLayoutParams\00", align 1
@.str.302 = private unnamed_addr constant [49 x i8] c"android/view/ViewGroup$OnHierarchyChangeListener\00", align 1
@.str.303 = private unnamed_addr constant [65 x i8] c"mono/android/view/ViewGroup_OnHierarchyChangeListenerImplementor\00", align 1
@.str.304 = private unnamed_addr constant [34 x i8] c"android/view/ViewPropertyAnimator\00", align 1
@.str.305 = private unnamed_addr constant [27 x i8] c"android/view/ViewStructure\00", align 1
@.str.306 = private unnamed_addr constant [26 x i8] c"android/view/WindowInsets\00", align 1
@.str.307 = private unnamed_addr constant [31 x i8] c"android/view/WindowInsets$Type\00", align 1
@.str.308 = private unnamed_addr constant [35 x i8] c"android/view/WindowInsetsAnimation\00", align 1
@.str.309 = private unnamed_addr constant [42 x i8] c"android/view/WindowInsetsAnimation$Bounds\00", align 1
@.str.310 = private unnamed_addr constant [27 x i8] c"android/view/WindowMetrics\00", align 1
@.str.311 = private unnamed_addr constant [50 x i8] c"android/view/contentcapture/ContentCaptureSession\00", align 1
@.str.312 = private unnamed_addr constant [33 x i8] c"android/view/autofill/AutofillId\00", align 1
@.str.313 = private unnamed_addr constant [33 x i8] c"android/view/animation/Animation\00", align 1
@.str.314 = private unnamed_addr constant [51 x i8] c"android/view/animation/Animation$AnimationListener\00", align 1
@.str.315 = private unnamed_addr constant [67 x i8] c"mono/android/view/animation/Animation_AnimationListenerImplementor\00", align 1
@.str.316 = private unnamed_addr constant [36 x i8] c"android/view/animation/AnimationSet\00", align 1
@.str.317 = private unnamed_addr constant [38 x i8] c"android/view/animation/AnimationUtils\00", align 1
@.str.318 = private unnamed_addr constant [40 x i8] c"android/view/animation/BaseInterpolator\00", align 1
@.str.319 = private unnamed_addr constant [46 x i8] c"android/view/animation/DecelerateInterpolator\00", align 1
@.str.320 = private unnamed_addr constant [36 x i8] c"android/view/animation/Interpolator\00", align 1
@.str.321 = private unnamed_addr constant [42 x i8] c"android/view/animation/LinearInterpolator\00", align 1
@.str.322 = private unnamed_addr constant [42 x i8] c"android/view/animation/TranslateAnimation\00", align 1
@.str.323 = private unnamed_addr constant [44 x i8] c"android/view/inputmethod/InputMethodManager\00", align 1
@.str.324 = private unnamed_addr constant [45 x i8] c"android/view/inputmethod/BaseInputConnection\00", align 1
@.str.325 = private unnamed_addr constant [40 x i8] c"android/view/inputmethod/CompletionInfo\00", align 1
@.str.326 = private unnamed_addr constant [40 x i8] c"android/view/inputmethod/CorrectionInfo\00", align 1
@.str.327 = private unnamed_addr constant [36 x i8] c"android/view/inputmethod/EditorInfo\00", align 1
@.str.328 = private unnamed_addr constant [39 x i8] c"android/view/inputmethod/ExtractedText\00", align 1
@.str.329 = private unnamed_addr constant [46 x i8] c"android/view/inputmethod/ExtractedTextRequest\00", align 1
@.str.330 = private unnamed_addr constant [44 x i8] c"android/view/inputmethod/HandwritingGesture\00", align 1
@.str.331 = private unnamed_addr constant [41 x i8] c"android/view/inputmethod/InputConnection\00", align 1
@.str.332 = private unnamed_addr constant [42 x i8] c"android/view/inputmethod/InputContentInfo\00", align 1
@.str.333 = private unnamed_addr constant [55 x i8] c"android/view/inputmethod/PreviewableHandwritingGesture\00", align 1
@.str.334 = private unnamed_addr constant [41 x i8] c"android/view/inputmethod/SurroundingText\00", align 1
@.str.335 = private unnamed_addr constant [39 x i8] c"android/view/inputmethod/TextAttribute\00", align 1
@.str.336 = private unnamed_addr constant [38 x i8] c"android/view/inputmethod/TextSnapshot\00", align 1
@.str.337 = private unnamed_addr constant [46 x i8] c"android/view/accessibility/AccessibilityEvent\00", align 1
@.str.338 = private unnamed_addr constant [48 x i8] c"android/view/accessibility/AccessibilityManager\00", align 1
@.str.339 = private unnamed_addr constant [81 x i8] c"android/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener\00", align 1
@.str.340 = private unnamed_addr constant [49 x i8] c"android/view/accessibility/AccessibilityNodeInfo\00", align 1
@.str.341 = private unnamed_addr constant [68 x i8] c"android/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo\00", align 1
@.str.342 = private unnamed_addr constant [47 x i8] c"android/view/accessibility/AccessibilityRecord\00", align 1
@.str.343 = private unnamed_addr constant [51 x i8] c"android/view/accessibility/AccessibilityWindowInfo\00", align 1
@.str.344 = private unnamed_addr constant [45 x i8] c"android/view/accessibility/CaptioningManager\00", align 1
@.str.345 = private unnamed_addr constant [58 x i8] c"android/view/accessibility/CaptioningManager$CaptionStyle\00", align 1
@.str.346 = private unnamed_addr constant [40 x i8] c"mono/android/runtime/InputStreamAdapter\00", align 1
@.str.347 = private unnamed_addr constant [31 x i8] c"mono/android/runtime/JavaArray\00", align 1
@.str.348 = private unnamed_addr constant [21 x i8] c"java/util/Collection\00", align 1
@.str.349 = private unnamed_addr constant [18 x i8] c"java/util/HashMap\00", align 1
@.str.350 = private unnamed_addr constant [20 x i8] c"java/util/ArrayList\00", align 1
@.str.351 = private unnamed_addr constant [32 x i8] c"mono/android/runtime/JavaObject\00", align 1
@.str.352 = private unnamed_addr constant [35 x i8] c"android/runtime/JavaProxyThrowable\00", align 1
@.str.353 = private unnamed_addr constant [18 x i8] c"java/util/HashSet\00", align 1
@.str.354 = private unnamed_addr constant [41 x i8] c"mono/android/runtime/OutputStreamAdapter\00", align 1
@.str.355 = private unnamed_addr constant [40 x i8] c"android/runtime/XmlReaderResourceParser\00", align 1
@.str.356 = private unnamed_addr constant [36 x i8] c"android/runtime/XmlReaderPullParser\00", align 1
@.str.357 = private unnamed_addr constant [16 x i8] c"android/net/Uri\00", align 1
@.str.358 = private unnamed_addr constant [46 x i8] c"android/hardware/camera2/CameraCaptureSession\00", align 1
@.str.359 = private unnamed_addr constant [60 x i8] c"android/hardware/camera2/CameraCaptureSession$StateCallback\00", align 1
@.str.360 = private unnamed_addr constant [47 x i8] c"android/hardware/camera2/CameraCharacteristics\00", align 1
@.str.361 = private unnamed_addr constant [51 x i8] c"android/hardware/camera2/CameraCharacteristics$Key\00", align 1
@.str.362 = private unnamed_addr constant [38 x i8] c"android/hardware/camera2/CameraDevice\00", align 1
@.str.363 = private unnamed_addr constant [52 x i8] c"android/hardware/camera2/CameraDevice$StateCallback\00", align 1
@.str.364 = private unnamed_addr constant [39 x i8] c"android/hardware/camera2/CameraManager\00", align 1
@.str.365 = private unnamed_addr constant [60 x i8] c"android/hardware/camera2/CameraManager$AvailabilityCallback\00", align 1
@.str.366 = private unnamed_addr constant [40 x i8] c"android/hardware/camera2/CameraMetadata\00", align 1
@.str.367 = private unnamed_addr constant [39 x i8] c"android/hardware/camera2/CaptureResult\00", align 1
@.str.368 = private unnamed_addr constant [51 x i8] c"android/hardware/camera2/params/InputConfiguration\00", align 1
@.str.369 = private unnamed_addr constant [55 x i8] c"android/hardware/camera2/params/StreamConfigurationMap\00", align 1
@.str.370 = private unnamed_addr constant [24 x i8] c"android/graphics/Bitmap\00", align 1
@.str.371 = private unnamed_addr constant [39 x i8] c"android/graphics/Bitmap$CompressFormat\00", align 1
@.str.372 = private unnamed_addr constant [31 x i8] c"android/graphics/Bitmap$Config\00", align 1
@.str.373 = private unnamed_addr constant [24 x i8] c"android/graphics/Canvas\00", align 1
@.str.374 = private unnamed_addr constant [31 x i8] c"android/graphics/BitmapFactory\00", align 1
@.str.375 = private unnamed_addr constant [39 x i8] c"android/graphics/BitmapFactory$Options\00", align 1
@.str.376 = private unnamed_addr constant [30 x i8] c"android/graphics/BitmapShader\00", align 1
@.str.377 = private unnamed_addr constant [27 x i8] c"android/graphics/BlendMode\00", align 1
@.str.378 = private unnamed_addr constant [32 x i8] c"android/graphics/BlurMaskFilter\00", align 1
@.str.379 = private unnamed_addr constant [37 x i8] c"android/graphics/BlurMaskFilter$Blur\00", align 1
@.str.380 = private unnamed_addr constant [29 x i8] c"android/graphics/ColorFilter\00", align 1
@.str.381 = private unnamed_addr constant [23 x i8] c"android/graphics/Color\00", align 1
@.str.382 = private unnamed_addr constant [32 x i8] c"android/graphics/DashPathEffect\00", align 1
@.str.383 = private unnamed_addr constant [24 x i8] c"android/graphics/Insets\00", align 1
@.str.384 = private unnamed_addr constant [32 x i8] c"android/graphics/LinearGradient\00", align 1
@.str.385 = private unnamed_addr constant [28 x i8] c"android/graphics/MaskFilter\00", align 1
@.str.386 = private unnamed_addr constant [24 x i8] c"android/graphics/Matrix\00", align 1
@.str.387 = private unnamed_addr constant [23 x i8] c"android/graphics/Paint\00", align 1
@.str.388 = private unnamed_addr constant [27 x i8] c"android/graphics/Paint$Cap\00", align 1
@.str.389 = private unnamed_addr constant [35 x i8] c"android/graphics/Paint$FontMetrics\00", align 1
@.str.390 = private unnamed_addr constant [38 x i8] c"android/graphics/Paint$FontMetricsInt\00", align 1
@.str.391 = private unnamed_addr constant [28 x i8] c"android/graphics/Paint$Join\00", align 1
@.str.392 = private unnamed_addr constant [29 x i8] c"android/graphics/Paint$Style\00", align 1
@.str.393 = private unnamed_addr constant [22 x i8] c"android/graphics/Path\00", align 1
@.str.394 = private unnamed_addr constant [32 x i8] c"android/graphics/Path$Direction\00", align 1
@.str.395 = private unnamed_addr constant [31 x i8] c"android/graphics/Path$FillType\00", align 1
@.str.396 = private unnamed_addr constant [25 x i8] c"android/graphics/Path$Op\00", align 1
@.str.397 = private unnamed_addr constant [28 x i8] c"android/graphics/PathEffect\00", align 1
@.str.398 = private unnamed_addr constant [23 x i8] c"android/graphics/Point\00", align 1
@.str.399 = private unnamed_addr constant [24 x i8] c"android/graphics/PointF\00", align 1
@.str.400 = private unnamed_addr constant [28 x i8] c"android/graphics/PorterDuff\00", align 1
@.str.401 = private unnamed_addr constant [33 x i8] c"android/graphics/PorterDuff$Mode\00", align 1
@.str.402 = private unnamed_addr constant [36 x i8] c"android/graphics/PorterDuffXfermode\00", align 1
@.str.403 = private unnamed_addr constant [32 x i8] c"android/graphics/RadialGradient\00", align 1
@.str.404 = private unnamed_addr constant [22 x i8] c"android/graphics/Rect\00", align 1
@.str.405 = private unnamed_addr constant [23 x i8] c"android/graphics/RectF\00", align 1
@.str.406 = private unnamed_addr constant [24 x i8] c"android/graphics/Region\00", align 1
@.str.407 = private unnamed_addr constant [27 x i8] c"android/graphics/Region$Op\00", align 1
@.str.408 = private unnamed_addr constant [24 x i8] c"android/graphics/Shader\00", align 1
@.str.409 = private unnamed_addr constant [33 x i8] c"android/graphics/Shader$TileMode\00", align 1
@.str.410 = private unnamed_addr constant [32 x i8] c"android/graphics/SurfaceTexture\00", align 1
@.str.411 = private unnamed_addr constant [26 x i8] c"android/graphics/Typeface\00", align 1
@.str.412 = private unnamed_addr constant [26 x i8] c"android/graphics/Xfermode\00", align 1
@.str.413 = private unnamed_addr constant [35 x i8] c"android/graphics/drawable/Drawable\00", align 1
@.str.414 = private unnamed_addr constant [49 x i8] c"android/graphics/drawable/Drawable$ConstantState\00", align 1
@.str.415 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/DrawableContainer\00", align 1
@.str.416 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/InsetDrawable\00", align 1
@.str.417 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/LayerDrawable\00", align 1
@.str.418 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/AnimationDrawable\00", align 1
@.str.419 = private unnamed_addr constant [41 x i8] c"android/graphics/drawable/BitmapDrawable\00", align 1
@.str.420 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/ColorDrawable\00", align 1
@.str.421 = private unnamed_addr constant [42 x i8] c"android/graphics/drawable/DrawableWrapper\00", align 1
@.str.422 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/GradientDrawable\00", align 1
@.str.423 = private unnamed_addr constant [55 x i8] c"android/graphics/drawable/GradientDrawable$Orientation\00", align 1
@.str.424 = private unnamed_addr constant [37 x i8] c"android/graphics/drawable/Animatable\00", align 1
@.str.425 = private unnamed_addr constant [31 x i8] c"android/graphics/drawable/Icon\00", align 1
@.str.426 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/PaintDrawable\00", align 1
@.str.427 = private unnamed_addr constant [41 x i8] c"android/graphics/drawable/RippleDrawable\00", align 1
@.str.428 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/ShapeDrawable\00", align 1
@.str.429 = private unnamed_addr constant [54 x i8] c"android/graphics/drawable/ShapeDrawable$ShaderFactory\00", align 1
@.str.430 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/StateListDrawable\00", align 1
@.str.431 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/shapes/OvalShape\00", align 1
@.str.432 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/shapes/RectShape\00", align 1
@.str.433 = private unnamed_addr constant [39 x i8] c"android/graphics/drawable/shapes/Shape\00", align 1
@.str.434 = private unnamed_addr constant [32 x i8] c"android/content/ContentProvider\00", align 1
@.str.435 = private unnamed_addr constant [30 x i8] c"android/content/ContentValues\00", align 1
@.str.436 = private unnamed_addr constant [24 x i8] c"android/content/Context\00", align 1
@.str.437 = private unnamed_addr constant [23 x i8] c"android/content/Intent\00", align 1
@.str.438 = private unnamed_addr constant [34 x i8] c"android/content/BroadcastReceiver\00", align 1
@.str.439 = private unnamed_addr constant [25 x i8] c"android/content/ClipData\00", align 1
@.str.440 = private unnamed_addr constant [30 x i8] c"android/content/ClipData$Item\00", align 1
@.str.441 = private unnamed_addr constant [32 x i8] c"android/content/ClipDescription\00", align 1
@.str.442 = private unnamed_addr constant [30 x i8] c"android/content/ComponentName\00", align 1
@.str.443 = private unnamed_addr constant [32 x i8] c"android/content/ContentResolver\00", align 1
@.str.444 = private unnamed_addr constant [31 x i8] c"android/content/ContextWrapper\00", align 1
@.str.445 = private unnamed_addr constant [49 x i8] c"android/content/DialogInterface$OnCancelListener\00", align 1
@.str.446 = private unnamed_addr constant [65 x i8] c"mono/android/content/DialogInterface_OnCancelListenerImplementor\00", align 1
@.str.447 = private unnamed_addr constant [48 x i8] c"android/content/DialogInterface$OnClickListener\00", align 1
@.str.448 = private unnamed_addr constant [64 x i8] c"mono/android/content/DialogInterface_OnClickListenerImplementor\00", align 1
@.str.449 = private unnamed_addr constant [50 x i8] c"android/content/DialogInterface$OnDismissListener\00", align 1
@.str.450 = private unnamed_addr constant [66 x i8] c"mono/android/content/DialogInterface_OnDismissListenerImplementor\00", align 1
@.str.451 = private unnamed_addr constant [46 x i8] c"android/content/DialogInterface$OnKeyListener\00", align 1
@.str.452 = private unnamed_addr constant [59 x i8] c"android/content/DialogInterface$OnMultiChoiceClickListener\00", align 1
@.str.453 = private unnamed_addr constant [47 x i8] c"android/content/DialogInterface$OnShowListener\00", align 1
@.str.454 = private unnamed_addr constant [63 x i8] c"mono/android/content/DialogInterface_OnShowListenerImplementor\00", align 1
@.str.455 = private unnamed_addr constant [32 x i8] c"android/content/DialogInterface\00", align 1
@.str.456 = private unnamed_addr constant [29 x i8] c"android/content/IntentFilter\00", align 1
@.str.457 = private unnamed_addr constant [29 x i8] c"android/content/IntentSender\00", align 1
@.str.458 = private unnamed_addr constant [34 x i8] c"android/content/ServiceConnection\00", align 1
@.str.459 = private unnamed_addr constant [41 x i8] c"android/content/SharedPreferences$Editor\00", align 1
@.str.460 = private unnamed_addr constant [67 x i8] c"android/content/SharedPreferences$OnSharedPreferenceChangeListener\00", align 1
@.str.461 = private unnamed_addr constant [34 x i8] c"android/content/SharedPreferences\00", align 1
@.str.462 = private unnamed_addr constant [24 x i8] c"android/content/LocusId\00", align 1
@.str.463 = private unnamed_addr constant [38 x i8] c"android/content/res/XmlResourceParser\00", align 1
@.str.464 = private unnamed_addr constant [40 x i8] c"android/content/res/AssetFileDescriptor\00", align 1
@.str.465 = private unnamed_addr constant [33 x i8] c"android/content/res/AssetManager\00", align 1
@.str.466 = private unnamed_addr constant [35 x i8] c"android/content/res/ColorStateList\00", align 1
@.str.467 = private unnamed_addr constant [34 x i8] c"android/content/res/Configuration\00", align 1
@.str.468 = private unnamed_addr constant [30 x i8] c"android/content/res/Resources\00", align 1
@.str.469 = private unnamed_addr constant [36 x i8] c"android/content/res/Resources$Theme\00", align 1
@.str.470 = private unnamed_addr constant [31 x i8] c"android/content/res/TypedArray\00", align 1
@.str.471 = private unnamed_addr constant [34 x i8] c"android/content/pm/PackageManager\00", align 1
@.str.472 = private unnamed_addr constant [35 x i8] c"android/content/pm/ApplicationInfo\00", align 1
@.str.473 = private unnamed_addr constant [37 x i8] c"android/content/pm/ConfigurationInfo\00", align 1
@.str.474 = private unnamed_addr constant [31 x i8] c"android/content/pm/PackageInfo\00", align 1
@.str.475 = private unnamed_addr constant [35 x i8] c"android/content/pm/PackageItemInfo\00", align 1
@.str.476 = private unnamed_addr constant [32 x i8] c"android/content/pm/ShortcutInfo\00", align 1
@.str.477 = private unnamed_addr constant [40 x i8] c"android/content/pm/ShortcutInfo$Builder\00", align 1
@.str.478 = private unnamed_addr constant [35 x i8] c"android/content/pm/ShortcutManager\00", align 1
@.str.479 = private unnamed_addr constant [29 x i8] c"android/content/pm/Signature\00", align 1
@.str.480 = private unnamed_addr constant [22 x i8] c"android/app/ActionBar\00", align 1
@.str.481 = private unnamed_addr constant [35 x i8] c"android/app/ActionBar$LayoutParams\00", align 1
@.str.482 = private unnamed_addr constant [21 x i8] c"android/app/Activity\00", align 1
@.str.483 = private unnamed_addr constant [28 x i8] c"android/app/ActivityManager\00", align 1
@.str.484 = private unnamed_addr constant [24 x i8] c"android/app/AlertDialog\00", align 1
@.str.485 = private unnamed_addr constant [32 x i8] c"android/app/AlertDialog$Builder\00", align 1
@.str.486 = private unnamed_addr constant [24 x i8] c"android/app/Application\00", align 1
@.str.487 = private unnamed_addr constant [51 x i8] c"android/app/Application$ActivityLifecycleCallbacks\00", align 1
@.str.488 = private unnamed_addr constant [29 x i8] c"android/app/DatePickerDialog\00", align 1
@.str.489 = private unnamed_addr constant [47 x i8] c"android/app/DatePickerDialog$OnDateSetListener\00", align 1
@.str.490 = private unnamed_addr constant [63 x i8] c"mono/android/app/DatePickerDialog_OnDateSetListenerImplementor\00", align 1
@.str.491 = private unnamed_addr constant [19 x i8] c"android/app/Dialog\00", align 1
@.str.492 = private unnamed_addr constant [25 x i8] c"android/app/Notification\00", align 1
@.str.493 = private unnamed_addr constant [40 x i8] c"android/app/Notification$BubbleMetadata\00", align 1
@.str.494 = private unnamed_addr constant [33 x i8] c"android/app/Notification$Builder\00", align 1
@.str.495 = private unnamed_addr constant [32 x i8] c"android/app/NotificationManager\00", align 1
@.str.496 = private unnamed_addr constant [29 x i8] c"android/app/TimePickerDialog\00", align 1
@.str.497 = private unnamed_addr constant [47 x i8] c"android/app/TimePickerDialog$OnTimeSetListener\00", align 1
@.str.498 = private unnamed_addr constant [63 x i8] c"mono/android/app/TimePickerDialog_OnTimeSetListenerImplementor\00", align 1
@.str.499 = private unnamed_addr constant [26 x i8] c"android/app/UiModeManager\00", align 1
@.str.500 = private unnamed_addr constant [32 x i8] c"android/app/NotificationChannel\00", align 1
@.str.501 = private unnamed_addr constant [37 x i8] c"android/app/NotificationChannelGroup\00", align 1
@.str.502 = private unnamed_addr constant [26 x i8] c"android/app/PendingIntent\00", align 1
@.str.503 = private unnamed_addr constant [19 x i8] c"android/app/Person\00", align 1
@.str.504 = private unnamed_addr constant [27 x i8] c"android/app/SearchableInfo\00", align 1
@.str.505 = private unnamed_addr constant [20 x i8] c"android/app/Service\00", align 1
@.str.506 = private unnamed_addr constant [24 x i8] c"java/text/DecimalFormat\00", align 1
@.str.507 = private unnamed_addr constant [31 x i8] c"java/text/DecimalFormatSymbols\00", align 1
@.str.508 = private unnamed_addr constant [23 x i8] c"java/text/NumberFormat\00", align 1
@.str.509 = private unnamed_addr constant [17 x i8] c"java/text/Format\00", align 1
@.str.510 = private unnamed_addr constant [26 x i8] c"java/net/ConnectException\00", align 1
@.str.511 = private unnamed_addr constant [27 x i8] c"java/net/HttpURLConnection\00", align 1
@.str.512 = private unnamed_addr constant [27 x i8] c"java/net/InetSocketAddress\00", align 1
@.str.513 = private unnamed_addr constant [27 x i8] c"java/net/ProtocolException\00", align 1
@.str.514 = private unnamed_addr constant [15 x i8] c"java/net/Proxy\00", align 1
@.str.515 = private unnamed_addr constant [20 x i8] c"java/net/Proxy$Type\00", align 1
@.str.516 = private unnamed_addr constant [23 x i8] c"java/net/SocketAddress\00", align 1
@.str.517 = private unnamed_addr constant [25 x i8] c"java/net/SocketException\00", align 1
@.str.518 = private unnamed_addr constant [32 x i8] c"java/net/SocketTimeoutException\00", align 1
@.str.519 = private unnamed_addr constant [33 x i8] c"java/net/UnknownServiceException\00", align 1
@.str.520 = private unnamed_addr constant [13 x i8] c"java/net/URL\00", align 1
@.str.521 = private unnamed_addr constant [23 x i8] c"java/net/URLConnection\00", align 1
@.str.522 = private unnamed_addr constant [18 x i8] c"java/security/Key\00", align 1
@.str.523 = private unnamed_addr constant [24 x i8] c"java/security/Principal\00", align 1
@.str.524 = private unnamed_addr constant [25 x i8] c"java/security/PrivateKey\00", align 1
@.str.525 = private unnamed_addr constant [25 x i8] c"java/security/KeyFactory\00", align 1
@.str.526 = private unnamed_addr constant [23 x i8] c"java/security/KeyStore\00", align 1
@.str.527 = private unnamed_addr constant [27 x i8] c"java/security/SecureRandom\00", align 1
@.str.528 = private unnamed_addr constant [34 x i8] c"java/security/spec/EncodedKeySpec\00", align 1
@.str.529 = private unnamed_addr constant [27 x i8] c"java/security/spec/KeySpec\00", align 1
@.str.530 = private unnamed_addr constant [39 x i8] c"java/security/spec/PKCS8EncodedKeySpec\00", align 1
@.str.531 = private unnamed_addr constant [31 x i8] c"java/security/cert/Certificate\00", align 1
@.str.532 = private unnamed_addr constant [16 x i8] c"java/nio/Buffer\00", align 1
@.str.533 = private unnamed_addr constant [20 x i8] c"java/nio/ByteBuffer\00", align 1
@.str.534 = private unnamed_addr constant [19 x i8] c"java/nio/ByteOrder\00", align 1
@.str.535 = private unnamed_addr constant [21 x i8] c"java/nio/FloatBuffer\00", align 1
@.str.536 = private unnamed_addr constant [19 x i8] c"java/nio/IntBuffer\00", align 1
@.str.537 = private unnamed_addr constant [30 x i8] c"java/nio/channels/FileChannel\00", align 1
@.str.538 = private unnamed_addr constant [51 x i8] c"java/nio/channels/spi/AbstractInterruptibleChannel\00", align 1
@.str.539 = private unnamed_addr constant [13 x i8] c"java/io/File\00", align 1
@.str.540 = private unnamed_addr constant [23 x i8] c"java/io/FileDescriptor\00", align 1
@.str.541 = private unnamed_addr constant [24 x i8] c"java/io/FileInputStream\00", align 1
@.str.542 = private unnamed_addr constant [30 x i8] c"java/io/FileNotFoundException\00", align 1
@.str.543 = private unnamed_addr constant [18 x i8] c"java/io/Closeable\00", align 1
@.str.544 = private unnamed_addr constant [20 x i8] c"java/io/InputStream\00", align 1
@.str.545 = private unnamed_addr constant [31 x i8] c"java/io/InterruptedIOException\00", align 1
@.str.546 = private unnamed_addr constant [20 x i8] c"java/io/IOException\00", align 1
@.str.547 = private unnamed_addr constant [21 x i8] c"java/io/Serializable\00", align 1
@.str.548 = private unnamed_addr constant [21 x i8] c"java/io/OutputStream\00", align 1
@.str.549 = private unnamed_addr constant [20 x i8] c"java/io/PrintWriter\00", align 1
@.str.550 = private unnamed_addr constant [25 x i8] c"java/io/RandomAccessFile\00", align 1
@.str.551 = private unnamed_addr constant [15 x i8] c"java/io/Reader\00", align 1
@.str.552 = private unnamed_addr constant [21 x i8] c"java/io/StringWriter\00", align 1
@.str.553 = private unnamed_addr constant [15 x i8] c"java/io/Writer\00", align 1
@.str.554 = private unnamed_addr constant [15 x i8] c"java/util/List\00", align 1
@.str.555 = private unnamed_addr constant [29 x i8] c"java/util/AbstractCollection\00", align 1
@.str.556 = private unnamed_addr constant [22 x i8] c"java/util/AbstractMap\00", align 1
@.str.557 = private unnamed_addr constant [22 x i8] c"java/util/AbstractSet\00", align 1
@.str.558 = private unnamed_addr constant [21 x i8] c"java/util/Comparator\00", align 1
@.str.559 = private unnamed_addr constant [22 x i8] c"java/util/Enumeration\00", align 1
@.str.560 = private unnamed_addr constant [19 x i8] c"java/util/Iterator\00", align 1
@.str.561 = private unnamed_addr constant [23 x i8] c"java/util/ListIterator\00", align 1
@.str.562 = private unnamed_addr constant [30 x i8] c"java/util/SequencedCollection\00", align 1
@.str.563 = private unnamed_addr constant [23 x i8] c"java/util/SequencedSet\00", align 1
@.str.564 = private unnamed_addr constant [14 x i8] c"java/util/Set\00", align 1
@.str.565 = private unnamed_addr constant [22 x i8] c"java/util/Spliterator\00", align 1
@.str.566 = private unnamed_addr constant [24 x i8] c"java/util/LinkedHashSet\00", align 1
@.str.567 = private unnamed_addr constant [17 x i8] c"java/util/Locale\00", align 1
@.str.568 = private unnamed_addr constant [17 x i8] c"java/util/Random\00", align 1
@.str.569 = private unnamed_addr constant [16 x i8] c"java/util/Timer\00", align 1
@.str.570 = private unnamed_addr constant [20 x i8] c"java/util/TimerTask\00", align 1
@.str.571 = private unnamed_addr constant [18 x i8] c"java/util/TreeMap\00", align 1
@.str.572 = private unnamed_addr constant [15 x i8] c"java/util/UUID\00", align 1
@.str.573 = private unnamed_addr constant [28 x i8] c"java/util/function/Consumer\00", align 1
@.str.574 = private unnamed_addr constant [28 x i8] c"java/util/function/Function\00", align 1
@.str.575 = private unnamed_addr constant [31 x i8] c"java/util/function/IntConsumer\00", align 1
@.str.576 = private unnamed_addr constant [31 x i8] c"java/util/function/IntFunction\00", align 1
@.str.577 = private unnamed_addr constant [29 x i8] c"java/util/function/Predicate\00", align 1
@.str.578 = private unnamed_addr constant [36 x i8] c"java/util/function/ToDoubleFunction\00", align 1
@.str.579 = private unnamed_addr constant [33 x i8] c"java/util/function/ToIntFunction\00", align 1
@.str.580 = private unnamed_addr constant [34 x i8] c"java/util/function/ToLongFunction\00", align 1
@.str.581 = private unnamed_addr constant [33 x i8] c"java/util/function/UnaryOperator\00", align 1
@.str.582 = private unnamed_addr constant [31 x i8] c"java/util/concurrent/Executors\00", align 1
@.str.583 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/Callable\00", align 1
@.str.584 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/Executor\00", align 1
@.str.585 = private unnamed_addr constant [37 x i8] c"java/util/concurrent/ExecutorService\00", align 1
@.str.586 = private unnamed_addr constant [28 x i8] c"java/util/concurrent/Future\00", align 1
@.str.587 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/TimeUnit\00", align 1
@.str.588 = private unnamed_addr constant [18 x i8] c"java/lang/Boolean\00", align 1
@.str.589 = private unnamed_addr constant [15 x i8] c"java/lang/Byte\00", align 1
@.str.590 = private unnamed_addr constant [20 x i8] c"java/lang/Character\00", align 1
@.str.591 = private unnamed_addr constant [16 x i8] c"java/lang/Class\00", align 1
@.str.592 = private unnamed_addr constant [33 x i8] c"java/lang/ClassNotFoundException\00", align 1
@.str.593 = private unnamed_addr constant [17 x i8] c"java/lang/Double\00", align 1
@.str.594 = private unnamed_addr constant [20 x i8] c"java/lang/Exception\00", align 1
@.str.595 = private unnamed_addr constant [16 x i8] c"java/lang/Float\00", align 1
@.str.596 = private unnamed_addr constant [23 x i8] c"java/lang/CharSequence\00", align 1
@.str.597 = private unnamed_addr constant [33 x i8] c"java/lang/IllegalAccessException\00", align 1
@.str.598 = private unnamed_addr constant [18 x i8] c"java/lang/Integer\00", align 1
@.str.599 = private unnamed_addr constant [15 x i8] c"java/lang/Long\00", align 1
@.str.600 = private unnamed_addr constant [31 x i8] c"java/lang/NoSuchFieldException\00", align 1
@.str.601 = private unnamed_addr constant [17 x i8] c"java/lang/Object\00", align 1
@.str.602 = private unnamed_addr constant [24 x i8] c"mono/java/lang/Runnable\00", align 1
@.str.603 = private unnamed_addr constant [27 x i8] c"java/lang/RuntimeException\00", align 1
@.str.604 = private unnamed_addr constant [16 x i8] c"java/lang/Short\00", align 1
@.str.605 = private unnamed_addr constant [17 x i8] c"java/lang/String\00", align 1
@.str.606 = private unnamed_addr constant [24 x i8] c"java/lang/StringBuilder\00", align 1
@.str.607 = private unnamed_addr constant [17 x i8] c"java/lang/Thread\00", align 1
@.str.608 = private unnamed_addr constant [35 x i8] c"mono/java/lang/RunnableImplementor\00", align 1
@.str.609 = private unnamed_addr constant [20 x i8] c"java/lang/Throwable\00", align 1
@.str.610 = private unnamed_addr constant [30 x i8] c"java/lang/AbstractMethodError\00", align 1
@.str.611 = private unnamed_addr constant [32 x i8] c"java/lang/AbstractStringBuilder\00", align 1
@.str.612 = private unnamed_addr constant [29 x i8] c"java/lang/ClassCastException\00", align 1
@.str.613 = private unnamed_addr constant [22 x i8] c"java/lang/ClassLoader\00", align 1
@.str.614 = private unnamed_addr constant [15 x i8] c"java/lang/Enum\00", align 1
@.str.615 = private unnamed_addr constant [16 x i8] c"java/lang/Error\00", align 1
@.str.616 = private unnamed_addr constant [21 x i8] c"java/lang/Appendable\00", align 1
@.str.617 = private unnamed_addr constant [24 x i8] c"java/lang/AutoCloseable\00", align 1
@.str.618 = private unnamed_addr constant [19 x i8] c"java/lang/Iterable\00", align 1
@.str.619 = private unnamed_addr constant [35 x i8] c"java/lang/IllegalArgumentException\00", align 1
@.str.620 = private unnamed_addr constant [32 x i8] c"java/lang/IllegalStateException\00", align 1
@.str.621 = private unnamed_addr constant [39 x i8] c"java/lang/IncompatibleClassChangeError\00", align 1
@.str.622 = private unnamed_addr constant [36 x i8] c"java/lang/IndexOutOfBoundsException\00", align 1
@.str.623 = private unnamed_addr constant [19 x i8] c"java/lang/Runnable\00", align 1
@.str.624 = private unnamed_addr constant [23 x i8] c"java/lang/LinkageError\00", align 1
@.str.625 = private unnamed_addr constant [15 x i8] c"java/lang/Math\00", align 1
@.str.626 = private unnamed_addr constant [31 x i8] c"java/lang/NoClassDefFoundError\00", align 1
@.str.627 = private unnamed_addr constant [31 x i8] c"java/lang/NullPointerException\00", align 1
@.str.628 = private unnamed_addr constant [17 x i8] c"java/lang/Number\00", align 1
@.str.629 = private unnamed_addr constant [39 x i8] c"java/lang/ReflectiveOperationException\00", align 1
@.str.630 = private unnamed_addr constant [28 x i8] c"java/lang/SecurityException\00", align 1
@.str.631 = private unnamed_addr constant [28 x i8] c"java/lang/StackTraceElement\00", align 1
@.str.632 = private unnamed_addr constant [40 x i8] c"java/lang/UnsupportedOperationException\00", align 1
@.str.633 = private unnamed_addr constant [15 x i8] c"java/lang/Void\00", align 1
@.str.634 = private unnamed_addr constant [32 x i8] c"java/lang/annotation/Annotation\00", align 1
@.str.635 = private unnamed_addr constant [35 x i8] c"java/lang/reflect/AccessibleObject\00", align 1
@.str.636 = private unnamed_addr constant [24 x i8] c"java/lang/reflect/Field\00", align 1
@.str.637 = private unnamed_addr constant [25 x i8] c"mono/android/TypeManager\00", align 1
@.str.638 = private unnamed_addr constant [34 x i8] c"androidx/navigation/NavController\00", align 1
@.str.639 = private unnamed_addr constant [63 x i8] c"androidx/navigation/NavController$OnDestinationChangedListener\00", align 1
@.str.640 = private unnamed_addr constant [79 x i8] c"mono/androidx/navigation/NavController_OnDestinationChangedListenerImplementor\00", align 1
@.str.641 = private unnamed_addr constant [39 x i8] c"androidx/navigation/NavDeepLinkBuilder\00", align 1
@.str.642 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavHostController\00", align 1
@.str.643 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavInflater\00", align 1
@.str.644 = private unnamed_addr constant [39 x i8] c"crc64396a3fe5f8138e3f/KeepAliveService\00", align 1
@.str.645 = private unnamed_addr constant [55 x i8] c"androidx/browser/customtabs/CustomTabColorSchemeParams\00", align 1
@.str.646 = private unnamed_addr constant [45 x i8] c"androidx/browser/customtabs/CustomTabsIntent\00", align 1
@.str.647 = private unnamed_addr constant [53 x i8] c"androidx/browser/customtabs/CustomTabsIntent$Builder\00", align 1
@.str.648 = private unnamed_addr constant [46 x i8] c"androidx/browser/customtabs/CustomTabsSession\00", align 1
@.str.649 = private unnamed_addr constant [61 x i8] c"androidx/browser/customtabs/CustomTabsSession$PendingSession\00", align 1
@.str.650 = private unnamed_addr constant [54 x i8] c"androidx/browser/customtabs/EngagementSignalsCallback\00", align 1
@.str.651 = private unnamed_addr constant [39 x i8] c"androidx/fragment/app/FragmentActivity\00", align 1
@.str.652 = private unnamed_addr constant [37 x i8] c"androidx/fragment/app/DialogFragment\00", align 1
@.str.653 = private unnamed_addr constant [31 x i8] c"androidx/fragment/app/Fragment\00", align 1
@.str.654 = private unnamed_addr constant [42 x i8] c"androidx/fragment/app/Fragment$SavedState\00", align 1
@.str.655 = private unnamed_addr constant [40 x i8] c"androidx/fragment/app/FragmentContainer\00", align 1
@.str.656 = private unnamed_addr constant [44 x i8] c"androidx/fragment/app/FragmentContainerView\00", align 1
@.str.657 = private unnamed_addr constant [38 x i8] c"androidx/fragment/app/FragmentFactory\00", align 1
@.str.658 = private unnamed_addr constant [43 x i8] c"androidx/fragment/app/FragmentHostCallback\00", align 1
@.str.659 = private unnamed_addr constant [38 x i8] c"androidx/fragment/app/FragmentManager\00", align 1
@.str.660 = private unnamed_addr constant [53 x i8] c"androidx/fragment/app/FragmentManager$BackStackEntry\00", align 1
@.str.661 = private unnamed_addr constant [65 x i8] c"androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks\00", align 1
@.str.662 = private unnamed_addr constant [65 x i8] c"androidx/fragment/app/FragmentManager$OnBackStackChangedListener\00", align 1
@.str.663 = private unnamed_addr constant [81 x i8] c"mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor\00", align 1
@.str.664 = private unnamed_addr constant [42 x i8] c"androidx/fragment/app/FragmentTransaction\00", align 1
@.str.665 = private unnamed_addr constant [47 x i8] c"androidx/fragment/app/FragmentOnAttachListener\00", align 1
@.str.666 = private unnamed_addr constant [63 x i8] c"mono/androidx/fragment/app/FragmentOnAttachListenerImplementor\00", align 1
@.str.667 = private unnamed_addr constant [45 x i8] c"androidx/fragment/app/FragmentResultListener\00", align 1
@.str.668 = private unnamed_addr constant [52 x i8] c"androidx/fragment/app/strictmode/FragmentStrictMode\00", align 1
@.str.669 = private unnamed_addr constant [59 x i8] c"androidx/fragment/app/strictmode/FragmentStrictMode$Policy\00", align 1
@.str.670 = private unnamed_addr constant [43 x i8] c"androidx/fragment/app/strictmode/Violation\00", align 1
@.str.671 = private unnamed_addr constant [39 x i8] c"androidx/viewpager/widget/PagerAdapter\00", align 1
@.str.672 = private unnamed_addr constant [36 x i8] c"androidx/viewpager/widget/ViewPager\00", align 1
@.str.673 = private unnamed_addr constant [60 x i8] c"androidx/viewpager/widget/ViewPager$OnAdapterChangeListener\00", align 1
@.str.674 = private unnamed_addr constant [76 x i8] c"mono/androidx/viewpager/widget/ViewPager_OnAdapterChangeListenerImplementor\00", align 1
@.str.675 = private unnamed_addr constant [57 x i8] c"androidx/viewpager/widget/ViewPager$OnPageChangeListener\00", align 1
@.str.676 = private unnamed_addr constant [73 x i8] c"mono/androidx/viewpager/widget/ViewPager_OnPageChangeListenerImplementor\00", align 1
@.str.677 = private unnamed_addr constant [52 x i8] c"androidx/viewpager/widget/ViewPager$PageTransformer\00", align 1
@.str.678 = private unnamed_addr constant [50 x i8] c"crc64f1558ff7e185dbfc/CameraManager_ImageCallBack\00", align 1
@.str.679 = private unnamed_addr constant [53 x i8] c"crc64f1558ff7e185dbfc/CameraManager_ResolutionFilter\00", align 1
@.str.680 = private unnamed_addr constant [56 x i8] c"crc64f1558ff7e185dbfc/CameraManager_OrientationListener\00", align 1
@.str.681 = private unnamed_addr constant [37 x i8] c"crc64f1558ff7e185dbfc/CameraConsumer\00", align 1
@.str.682 = private unnamed_addr constant [39 x i8] c"androidx/lifecycle/ViewModelStoreOwner\00", align 1
@.str.683 = private unnamed_addr constant [29 x i8] c"androidx/lifecycle/ViewModel\00", align 1
@.str.684 = private unnamed_addr constant [37 x i8] c"androidx/lifecycle/ViewModelProvider\00", align 1
@.str.685 = private unnamed_addr constant [55 x i8] c"androidx/lifecycle/ViewModelProvider$Factory$Companion\00", align 1
@.str.686 = private unnamed_addr constant [45 x i8] c"androidx/lifecycle/ViewModelProvider$Factory\00", align 1
@.str.687 = private unnamed_addr constant [34 x i8] c"androidx/lifecycle/ViewModelStore\00", align 1
@.str.688 = private unnamed_addr constant [44 x i8] c"androidx/lifecycle/viewmodel/CreationExtras\00", align 1
@.str.689 = private unnamed_addr constant [48 x i8] c"androidx/lifecycle/viewmodel/CreationExtras$Key\00", align 1
@.str.690 = private unnamed_addr constant [50 x i8] c"androidx/lifecycle/viewmodel/ViewModelInitializer\00", align 1
@.str.691 = private unnamed_addr constant [47 x i8] c"androidx/recyclerview/widget/GridLayoutManager\00", align 1
@.str.692 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup\00", align 1
@.str.693 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/ItemTouchUIUtil\00", align 1
@.str.694 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/ItemTouchHelper\00", align 1
@.str.695 = private unnamed_addr constant [54 x i8] c"androidx/recyclerview/widget/ItemTouchHelper$Callback\00", align 1
@.str.696 = private unnamed_addr constant [49 x i8] c"androidx/recyclerview/widget/LinearLayoutManager\00", align 1
@.str.697 = private unnamed_addr constant [50 x i8] c"androidx/recyclerview/widget/LinearSmoothScroller\00", align 1
@.str.698 = private unnamed_addr constant [46 x i8] c"androidx/recyclerview/widget/LinearSnapHelper\00", align 1
@.str.699 = private unnamed_addr constant [47 x i8] c"androidx/recyclerview/widget/OrientationHelper\00", align 1
@.str.700 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/PagerSnapHelper\00", align 1
@.str.701 = private unnamed_addr constant [42 x i8] c"androidx/recyclerview/widget/RecyclerView\00", align 1
@.str.702 = private unnamed_addr constant [50 x i8] c"androidx/recyclerview/widget/RecyclerView$Adapter\00", align 1
@.str.703 = private unnamed_addr constant [73 x i8] c"androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy\00", align 1
@.str.704 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/RecyclerView$AdapterDataObserver\00", align 1
@.str.705 = private unnamed_addr constant [68 x i8] c"androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback\00", align 1
@.str.706 = private unnamed_addr constant [60 x i8] c"androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory\00", align 1
@.str.707 = private unnamed_addr constant [55 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator\00", align 1
@.str.708 = private unnamed_addr constant [84 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener\00", align 1
@.str.709 = private unnamed_addr constant [70 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo\00", align 1
@.str.710 = private unnamed_addr constant [57 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemDecoration\00", align 1
@.str.711 = private unnamed_addr constant [56 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager\00", align 1
@.str.712 = private unnamed_addr constant [79 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry\00", align 1
@.str.713 = private unnamed_addr constant [67 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties\00", align 1
@.str.714 = private unnamed_addr constant [55 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutParams\00", align 1
@.str.715 = private unnamed_addr constant [75 x i8] c"androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener\00", align 1
@.str.716 = private unnamed_addr constant [91 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor\00", align 1
@.str.717 = private unnamed_addr constant [58 x i8] c"androidx/recyclerview/widget/RecyclerView$OnFlingListener\00", align 1
@.str.718 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/RecyclerView$OnItemTouchListener\00", align 1
@.str.719 = private unnamed_addr constant [78 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_OnItemTouchListenerImplementor\00", align 1
@.str.720 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$OnScrollListener\00", align 1
@.str.721 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$RecycledViewPool\00", align 1
@.str.722 = private unnamed_addr constant [51 x i8] c"androidx/recyclerview/widget/RecyclerView$Recycler\00", align 1
@.str.723 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$RecyclerListener\00", align 1
@.str.724 = private unnamed_addr constant [75 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_RecyclerListenerImplementor\00", align 1
@.str.725 = private unnamed_addr constant [57 x i8] c"androidx/recyclerview/widget/RecyclerView$SmoothScroller\00", align 1
@.str.726 = private unnamed_addr constant [64 x i8] c"androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action\00", align 1
@.str.727 = private unnamed_addr constant [48 x i8] c"androidx/recyclerview/widget/RecyclerView$State\00", align 1
@.str.728 = private unnamed_addr constant [61 x i8] c"androidx/recyclerview/widget/RecyclerView$ViewCacheExtension\00", align 1
@.str.729 = private unnamed_addr constant [53 x i8] c"androidx/recyclerview/widget/RecyclerView$ViewHolder\00", align 1
@.str.730 = private unnamed_addr constant [63 x i8] c"androidx/recyclerview/widget/RecyclerViewAccessibilityDelegate\00", align 1
@.str.731 = private unnamed_addr constant [40 x i8] c"androidx/recyclerview/widget/SnapHelper\00", align 1
@.str.732 = private unnamed_addr constant [50 x i8] c"androidx/appcompat/content/res/AppCompatResources\00", align 1
@.str.733 = private unnamed_addr constant [59 x i8] c"androidx/appcompat/graphics/drawable/DrawableWrapperCompat\00", align 1
@.str.734 = private unnamed_addr constant [38 x i8] c"androidx/media3/session/CommandButton\00", align 1
@.str.735 = private unnamed_addr constant [37 x i8] c"androidx/media3/session/MediaSession\00", align 1
@.str.736 = private unnamed_addr constant [45 x i8] c"androidx/media3/session/MediaSession$Builder\00", align 1
@.str.737 = private unnamed_addr constant [46 x i8] c"androidx/media3/session/MediaSession$Callback\00", align 1
@.str.738 = private unnamed_addr constant [54 x i8] c"androidx/media3/session/MediaSession$ConnectionResult\00", align 1
@.str.739 = private unnamed_addr constant [52 x i8] c"androidx/media3/session/MediaSession$ControllerInfo\00", align 1
@.str.740 = private unnamed_addr constant [53 x i8] c"androidx/media3/session/MediaStyleNotificationHelper\00", align 1
@.str.741 = private unnamed_addr constant [64 x i8] c"androidx/media3/session/MediaStyleNotificationHelper$MediaStyle\00", align 1
@.str.742 = private unnamed_addr constant [39 x i8] c"androidx/media3/session/SessionCommand\00", align 1
@.str.743 = private unnamed_addr constant [40 x i8] c"androidx/media3/session/SessionCommands\00", align 1
@.str.744 = private unnamed_addr constant [48 x i8] c"androidx/media3/session/SessionCommands$Builder\00", align 1
@.str.745 = private unnamed_addr constant [37 x i8] c"androidx/media3/session/SessionError\00", align 1
@.str.746 = private unnamed_addr constant [37 x i8] c"androidx/media3/session/SessionToken\00", align 1
@.str.747 = private unnamed_addr constant [50 x i8] c"androidx/camera/camera2/interop/Camera2CameraInfo\00", align 1
@.str.748 = private unnamed_addr constant [63 x i8] c"androidx/camera/camera2/internal/Camera2PhysicalCameraInfoImpl\00", align 1
@.str.749 = private unnamed_addr constant [68 x i8] c"androidx/camera/camera2/internal/compat/CameraCharacteristicsCompat\00", align 1
@.str.750 = private unnamed_addr constant [60 x i8] c"androidx/camera/camera2/internal/compat/CameraManagerCompat\00", align 1
@.str.751 = private unnamed_addr constant [84 x i8] c"androidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl\00", align 1
@.str.752 = private unnamed_addr constant [69 x i8] c"androidx/camera/camera2/internal/compat/StreamConfigurationMapCompat\00", align 1
@.str.753 = private unnamed_addr constant [43 x i8] c"crc643f2b18b2570eaa5a/PlatformGraphicsView\00", align 1
@.str.754 = private unnamed_addr constant [34 x i8] c"kotlinx/coroutines/CoroutineScope\00", align 1
@.str.755 = private unnamed_addr constant [29 x i8] c"kotlinx/coroutines/flow/Flow\00", align 1
@.str.756 = private unnamed_addr constant [38 x i8] c"kotlinx/coroutines/flow/FlowCollector\00", align 1
@.str.757 = private unnamed_addr constant [35 x i8] c"kotlinx/coroutines/flow/SharedFlow\00", align 1
@.str.758 = private unnamed_addr constant [34 x i8] c"kotlinx/coroutines/flow/StateFlow\00", align 1
@.str.759 = private unnamed_addr constant [50 x i8] c"crc640360c8a960a6805b/CustomAccessibilityDelegate\00", align 1
@.str.760 = private unnamed_addr constant [50 x i8] c"crc640360c8a960a6805b/CustomAccessibilityProvider\00", align 1
@.str.761 = private unnamed_addr constant [39 x i8] c"crc640360c8a960a6805b/StaticTextLayout\00", align 1
@.str.762 = private unnamed_addr constant [43 x i8] c"crc640360c8a960a6805b/PlatformSignaturePad\00", align 1
@.str.763 = private unnamed_addr constant [46 x i8] c"crc6481e5b28a6b4dd87a/NativeCustomScrolLayout\00", align 1
@.str.764 = private unnamed_addr constant [39 x i8] c"crc6481e5b28a6b4dd87a/NativeSnapLayout\00", align 1
@.str.765 = private unnamed_addr constant [60 x i8] c"crc6481e5b28a6b4dd87a/NativeSnapLayout_FlingGestureListener\00", align 1
@.str.766 = private unnamed_addr constant [33 x i8] c"crc64f5844edce43316e7/ButtonView\00", align 1
@.str.767 = private unnamed_addr constant [38 x i8] c"crc64f5844edce43316e7/CustomImageView\00", align 1
@.str.768 = private unnamed_addr constant [37 x i8] c"crc64f5844edce43316e7/ItemViewHolder\00", align 1
@.str.769 = private unnamed_addr constant [52 x i8] c"crc64f5844edce43316e7/SfRotatorFlingGestureListener\00", align 1
@.str.770 = private unnamed_addr constant [38 x i8] c"crc64f5844edce43316e7/OnTouchListener\00", align 1
@.str.771 = private unnamed_addr constant [31 x i8] c"crc64f5844edce43316e7/TabStrip\00", align 1
@.str.772 = private unnamed_addr constant [37 x i8] c"crc64f5844edce43316e7/ThumbnailStrip\00", align 1
@.str.773 = private unnamed_addr constant [38 x i8] c"crc64f5844edce43316e7/PlatformRotator\00", align 1
@.str.774 = private unnamed_addr constant [31 x i8] c"crc64f5844edce43316e7/ProTimer\00", align 1
@.str.775 = private unnamed_addr constant [49 x i8] c"crc64f5844edce43316e7/Mapping_CustomPathDrawable\00", align 1
@.str.776 = private unnamed_addr constant [42 x i8] c"crc64f5844edce43316e7/PlatformRotatorItem\00", align 1
@.str.777 = private unnamed_addr constant [52 x i8] c"crc6479d6f9e48582dc67/GestureDetector_ScaleListener\00", align 1
@.str.778 = private unnamed_addr constant [53 x i8] c"crc6479d6f9e48582dc67/GestureDetector_ScrollListener\00", align 1
@.str.779 = private unnamed_addr constant [45 x i8] c"crc6479d6f9e48582dc67/HorizontalScrollViewer\00", align 1
@.str.780 = private unnamed_addr constant [43 x i8] c"crc6479d6f9e48582dc67/PlatformScrollViewer\00", align 1
@.str.781 = private unnamed_addr constant [47 x i8] c"crc6479d6f9e48582dc67/NativeListViewScrollView\00", align 1
@.str.782 = private unnamed_addr constant [46 x i8] c"crc6479d6f9e48582dc67/NativeCustomScrolLayout\00", align 1
@.str.783 = private unnamed_addr constant [47 x i8] c"crc6479d6f9e48582dc67/NativeTreeViewScrollView\00", align 1
@.str.784 = private unnamed_addr constant [41 x i8] c"crc6479d6f9e48582dc67/WindowOverlayStack\00", align 1
@.str.785 = private unnamed_addr constant [43 x i8] c"crc64354973402314325c/PlatformCarouselItem\00", align 1
@.str.786 = private unnamed_addr constant [38 x i8] c"crc64354973402314325c/CustomImageView\00", align 1
@.str.787 = private unnamed_addr constant [34 x i8] c"crc64354973402314325c/ItemAdapter\00", align 1
@.str.788 = private unnamed_addr constant [33 x i8] c"crc64354973402314325c/ViewHolder\00", align 1
@.str.789 = private unnamed_addr constant [39 x i8] c"crc64354973402314325c/PlatformCarousel\00", align 1
@.str.790 = private unnamed_addr constant [42 x i8] c"crc64354973402314325c/SpaceItemDecoration\00", align 1
@.str.791 = private unnamed_addr constant [41 x i8] c"crc6486af4e8104107bae/LayoutViewGroupExt\00", align 1
@.str.792 = private unnamed_addr constant [43 x i8] c"crc6486af4e8104107bae/AppCompatEditTextExt\00", align 1
@.str.793 = private unnamed_addr constant [44 x i8] c"crc6486af4e8104107bae/CustomInputConnection\00", align 1
@.str.794 = private unnamed_addr constant [38 x i8] c"crc6486af4e8104107bae/DropdownViewExt\00", align 1
@.str.795 = private unnamed_addr constant [47 x i8] c"crc648a9457dd5f66374f/LayoutViewGroupExtension\00", align 1
@.str.796 = private unnamed_addr constant [50 x i8] c"crc648a9457dd5f66374f/ExtMauiHorizontalScrollView\00", align 1
@.str.797 = private unnamed_addr constant [40 x i8] c"crc648a9457dd5f66374f/ExtMauiScrollView\00", align 1
@.str.798 = private unnamed_addr constant [47 x i8] c"androidx/navigation/fragment/FragmentNavigator\00", align 1
@.str.799 = private unnamed_addr constant [59 x i8] c"androidx/navigation/fragment/FragmentNavigator$Destination\00", align 1
@.str.800 = private unnamed_addr constant [45 x i8] c"androidx/navigation/fragment/NavHostFragment\00", align 1
@.str.801 = private unnamed_addr constant [59 x i8] c"crc6468b6408a11370c2f/WebAuthenticatorIntermediateActivity\00", align 1
@.str.802 = private unnamed_addr constant [57 x i8] c"crc6493855b22b6fa0721/TextToSpeechInternalImplementation\00", align 1
@.str.803 = private unnamed_addr constant [39 x i8] c"microsoft/maui/essentials/fileProvider\00", align 1
@.str.804 = private unnamed_addr constant [52 x i8] c"crc64e53d2f592022988e/ConnectivityBroadcastReceiver\00", align 1
@.str.805 = private unnamed_addr constant [55 x i8] c"crc64ba438d8f48cf7e75/ActivityLifecycleContextListener\00", align 1
@.str.806 = private unnamed_addr constant [43 x i8] c"crc64ba438d8f48cf7e75/IntermediateActivity\00", align 1
@.str.807 = private unnamed_addr constant [59 x i8] c"crc640a8d9a12ddbf2cf2/DeviceDisplayImplementation_Listener\00", align 1
@.str.808 = private unnamed_addr constant [47 x i8] c"crc640a8d9a12ddbf2cf2/BatteryBroadcastReceiver\00", align 1
@.str.809 = private unnamed_addr constant [51 x i8] c"crc640a8d9a12ddbf2cf2/EnergySaverBroadcastReceiver\00", align 1
@.str.810 = private unnamed_addr constant [45 x i8] c"androidx/camera/extensions/ExtensionsManager\00", align 1
@.str.811 = private unnamed_addr constant [51 x i8] c"androidx/camera/extensions/CameraExtensionsControl\00", align 1
@.str.812 = private unnamed_addr constant [48 x i8] c"androidx/camera/extensions/CameraExtensionsInfo\00", align 1
@.str.813 = private unnamed_addr constant [29 x i8] c"androidx/lifecycle/Lifecycle\00", align 1
@.str.814 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/Lifecycle$Event\00", align 1
@.str.815 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/Lifecycle$State\00", align 1
@.str.816 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/AtomicReference\00", align 1
@.str.817 = private unnamed_addr constant [37 x i8] c"androidx/lifecycle/LifecycleObserver\00", align 1
@.str.818 = private unnamed_addr constant [34 x i8] c"androidx/lifecycle/LifecycleOwner\00", align 1
@.str.819 = private unnamed_addr constant [16 x i8] c"kotlin/Function\00", align 1
@.str.820 = private unnamed_addr constant [26 x i8] c"kotlin/sequences/Sequence\00", align 1
@.str.821 = private unnamed_addr constant [33 x i8] c"kotlin/reflect/KAnnotatedElement\00", align 1
@.str.822 = private unnamed_addr constant [25 x i8] c"kotlin/reflect/KCallable\00", align 1
@.str.823 = private unnamed_addr constant [22 x i8] c"kotlin/reflect/KClass\00", align 1
@.str.824 = private unnamed_addr constant [27 x i8] c"kotlin/reflect/KClassifier\00", align 1
@.str.825 = private unnamed_addr constant [37 x i8] c"kotlin/reflect/KDeclarationContainer\00", align 1
@.str.826 = private unnamed_addr constant [25 x i8] c"kotlin/reflect/KFunction\00", align 1
@.str.827 = private unnamed_addr constant [31 x i8] c"kotlin/reflect/KParameter$Kind\00", align 1
@.str.828 = private unnamed_addr constant [26 x i8] c"kotlin/reflect/KParameter\00", align 1
@.str.829 = private unnamed_addr constant [21 x i8] c"kotlin/reflect/KType\00", align 1
@.str.830 = private unnamed_addr constant [30 x i8] c"kotlin/reflect/KTypeParameter\00", align 1
@.str.831 = private unnamed_addr constant [31 x i8] c"kotlin/reflect/KTypeProjection\00", align 1
@.str.832 = private unnamed_addr constant [41 x i8] c"kotlin/reflect/KTypeProjection$Companion\00", align 1
@.str.833 = private unnamed_addr constant [25 x i8] c"kotlin/reflect/KVariance\00", align 1
@.str.834 = private unnamed_addr constant [27 x i8] c"kotlin/reflect/KVisibility\00", align 1
@.str.835 = private unnamed_addr constant [45 x i8] c"kotlin/jvm/internal/DefaultConstructorMarker\00", align 1
@.str.836 = private unnamed_addr constant [42 x i8] c"kotlin/jvm/internal/markers/KMappedMarker\00", align 1
@.str.837 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function0\00", align 1
@.str.838 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function1\00", align 1
@.str.839 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function2\00", align 1
@.str.840 = private unnamed_addr constant [25 x i8] c"kotlin/enums/EnumEntries\00", align 1
@.str.841 = private unnamed_addr constant [31 x i8] c"kotlin/coroutines/Continuation\00", align 1
@.str.842 = private unnamed_addr constant [39 x i8] c"kotlin/coroutines/CoroutineContext$Key\00", align 1
@.str.843 = private unnamed_addr constant [35 x i8] c"kotlin/coroutines/CoroutineContext\00", align 1
@.str.844 = private unnamed_addr constant [36 x i8] c"androidx/media3/datasource/DataSpec\00", align 1
@.str.845 = private unnamed_addr constant [44 x i8] c"androidx/media3/datasource/DataSpec$Builder\00", align 1
@.str.846 = private unnamed_addr constant [38 x i8] c"androidx/media3/datasource/DataSource\00", align 1
@.str.847 = private unnamed_addr constant [44 x i8] c"androidx/media3/datasource/TransferListener\00", align 1
@.str.848 = private unnamed_addr constant [60 x i8] c"mono/androidx/media3/datasource/TransferListenerImplementor\00", align 1
@.str.849 = private unnamed_addr constant [43 x i8] c"androidx/media3/datasource/StatsDataSource\00", align 1
@.str.850 = private unnamed_addr constant [55 x i8] c"androidx/versionedparcelable/CustomVersionedParcelable\00", align 1
@.str.851 = private unnamed_addr constant [49 x i8] c"androidx/versionedparcelable/VersionedParcelable\00", align 1
@.str.852 = private unnamed_addr constant [28 x i8] c"androidx/lifecycle/Observer\00", align 1
@.str.853 = private unnamed_addr constant [28 x i8] c"androidx/lifecycle/LiveData\00", align 1
@.str.854 = private unnamed_addr constant [42 x i8] c"androidx/drawerlayout/widget/DrawerLayout\00", align 1
@.str.855 = private unnamed_addr constant [57 x i8] c"androidx/drawerlayout/widget/DrawerLayout$DrawerListener\00", align 1
@.str.856 = private unnamed_addr constant [73 x i8] c"mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor\00", align 1
@.str.857 = private unnamed_addr constant [55 x i8] c"androidx/drawerlayout/widget/DrawerLayout$LayoutParams\00", align 1
@.str.858 = private unnamed_addr constant [75 x i8] c"crc64d6358e7bf64fbac4/SpeechToTextImplementation_SpeechRecognitionListener\00", align 1
@.str.859 = private unnamed_addr constant [38 x i8] c"crc64159f3caeb1269279/MauiDrawingView\00", align 1
@.str.860 = private unnamed_addr constant [44 x i8] c"crc64159f3caeb1269279/MauiSemanticOrderView\00", align 1
@.str.861 = private unnamed_addr constant [47 x i8] c"crc6436e425876cb621d9/FragmentLifecycleManager\00", align 1
@.str.862 = private unnamed_addr constant [43 x i8] c"androidx/navigation/ui/AppBarConfiguration\00", align 1
@.str.863 = private unnamed_addr constant [51 x i8] c"androidx/navigation/ui/AppBarConfiguration$Builder\00", align 1
@.str.864 = private unnamed_addr constant [64 x i8] c"androidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener\00", align 1
@.str.865 = private unnamed_addr constant [36 x i8] c"androidx/navigation/ui/NavigationUI\00", align 1
@.str.866 = private unnamed_addr constant [28 x i8] c"androidx/core/util/Consumer\00", align 1
@.str.867 = private unnamed_addr constant [29 x i8] c"androidx/core/util/Predicate\00", align 1
@.str.868 = private unnamed_addr constant [24 x i8] c"androidx/core/util/Pair\00", align 1
@.str.869 = private unnamed_addr constant [34 x i8] c"androidx/core/os/LocaleListCompat\00", align 1
@.str.870 = private unnamed_addr constant [44 x i8] c"androidx/core/internal/view/SupportMenuItem\00", align 1
@.str.871 = private unnamed_addr constant [34 x i8] c"androidx/core/graphics/ColorUtils\00", align 1
@.str.872 = private unnamed_addr constant [30 x i8] c"androidx/core/graphics/Insets\00", align 1
@.str.873 = private unnamed_addr constant [47 x i8] c"androidx/core/graphics/drawable/DrawableCompat\00", align 1
@.str.874 = private unnamed_addr constant [43 x i8] c"androidx/core/graphics/drawable/IconCompat\00", align 1
@.str.875 = private unnamed_addr constant [36 x i8] c"androidx/core/content/ContextCompat\00", align 1
@.str.876 = private unnamed_addr constant [35 x i8] c"androidx/core/content/FileProvider\00", align 1
@.str.877 = private unnamed_addr constant [36 x i8] c"androidx/core/content/LocusIdCompat\00", align 1
@.str.878 = private unnamed_addr constant [40 x i8] c"androidx/core/content/PermissionChecker\00", align 1
@.str.879 = private unnamed_addr constant [43 x i8] c"androidx/core/content/pm/PackageInfoCompat\00", align 1
@.str.880 = private unnamed_addr constant [44 x i8] c"androidx/core/content/pm/ShortcutInfoCompat\00", align 1
@.str.881 = private unnamed_addr constant [33 x i8] c"androidx/core/app/ActivityCompat\00", align 1
@.str.882 = private unnamed_addr constant [58 x i8] c"androidx/core/app/ActivityCompat$PermissionCompatDelegate\00", align 1
@.str.883 = private unnamed_addr constant [40 x i8] c"androidx/core/app/ActivityOptionsCompat\00", align 1
@.str.884 = private unnamed_addr constant [36 x i8] c"androidx/core/app/ComponentActivity\00", align 1
@.str.885 = private unnamed_addr constant [46 x i8] c"androidx/core/app/ComponentActivity$ExtraData\00", align 1
@.str.886 = private unnamed_addr constant [57 x i8] c"androidx/core/app/NotificationBuilderWithBuilderAccessor\00", align 1
@.str.887 = private unnamed_addr constant [44 x i8] c"androidx/core/app/NotificationChannelCompat\00", align 1
@.str.888 = private unnamed_addr constant [52 x i8] c"androidx/core/app/NotificationChannelCompat$Builder\00", align 1
@.str.889 = private unnamed_addr constant [49 x i8] c"androidx/core/app/NotificationChannelGroupCompat\00", align 1
@.str.890 = private unnamed_addr constant [57 x i8] c"androidx/core/app/NotificationChannelGroupCompat$Builder\00", align 1
@.str.891 = private unnamed_addr constant [37 x i8] c"androidx/core/app/NotificationCompat\00", align 1
@.str.892 = private unnamed_addr constant [44 x i8] c"androidx/core/app/NotificationCompat$Action\00", align 1
@.str.893 = private unnamed_addr constant [52 x i8] c"androidx/core/app/NotificationCompat$BubbleMetadata\00", align 1
@.str.894 = private unnamed_addr constant [45 x i8] c"androidx/core/app/NotificationCompat$Builder\00", align 1
@.str.895 = private unnamed_addr constant [46 x i8] c"androidx/core/app/NotificationCompat$Extender\00", align 1
@.str.896 = private unnamed_addr constant [43 x i8] c"androidx/core/app/NotificationCompat$Style\00", align 1
@.str.897 = private unnamed_addr constant [44 x i8] c"androidx/core/app/NotificationManagerCompat\00", align 1
@.str.898 = private unnamed_addr constant [69 x i8] c"androidx/core/app/NotificationManagerCompat$NotificationWithIdAndTag\00", align 1
@.str.899 = private unnamed_addr constant [25 x i8] c"androidx/core/app/Person\00", align 1
@.str.900 = private unnamed_addr constant [33 x i8] c"androidx/core/app/Person$Builder\00", align 1
@.str.901 = private unnamed_addr constant [30 x i8] c"androidx/core/app/RemoteInput\00", align 1
@.str.902 = private unnamed_addr constant [40 x i8] c"androidx/core/app/SharedElementCallback\00", align 1
@.str.903 = private unnamed_addr constant [70 x i8] c"androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener\00", align 1
@.str.904 = private unnamed_addr constant [35 x i8] c"androidx/core/app/TaskStackBuilder\00", align 1
@.str.905 = private unnamed_addr constant [38 x i8] c"androidx/core/widget/NestedScrollView\00", align 1
@.str.906 = private unnamed_addr constant [61 x i8] c"androidx/core/widget/NestedScrollView$OnScrollChangeListener\00", align 1
@.str.907 = private unnamed_addr constant [77 x i8] c"mono/androidx/core/widget/NestedScrollView_OnScrollChangeListenerImplementor\00", align 1
@.str.908 = private unnamed_addr constant [42 x i8] c"androidx/core/widget/CompoundButtonCompat\00", align 1
@.str.909 = private unnamed_addr constant [36 x i8] c"androidx/core/widget/TextViewCompat\00", align 1
@.str.910 = private unnamed_addr constant [47 x i8] c"androidx/core/view/AccessibilityDelegateCompat\00", align 1
@.str.911 = private unnamed_addr constant [34 x i8] c"androidx/core/view/ActionProvider\00", align 1
@.str.912 = private unnamed_addr constant [58 x i8] c"androidx/core/view/ActionProvider$SubUiVisibilityListener\00", align 1
@.str.913 = private unnamed_addr constant [74 x i8] c"mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor\00", align 1
@.str.914 = private unnamed_addr constant [53 x i8] c"androidx/core/view/ActionProvider$VisibilityListener\00", align 1
@.str.915 = private unnamed_addr constant [69 x i8] c"mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor\00", align 1
@.str.916 = private unnamed_addr constant [37 x i8] c"androidx/core/view/ContentInfoCompat\00", align 1
@.str.917 = private unnamed_addr constant [39 x i8] c"androidx/core/view/DisplayCutoutCompat\00", align 1
@.str.918 = private unnamed_addr constant [48 x i8] c"androidx/core/view/DragAndDropPermissionsCompat\00", align 1
@.str.919 = private unnamed_addr constant [32 x i8] c"androidx/core/view/MenuProvider\00", align 1
@.str.920 = private unnamed_addr constant [47 x i8] c"androidx/core/view/OnApplyWindowInsetsListener\00", align 1
@.str.921 = private unnamed_addr constant [44 x i8] c"androidx/core/view/OnReceiveContentListener\00", align 1
@.str.922 = private unnamed_addr constant [33 x i8] c"androidx/core/view/ScrollingView\00", align 1
@.str.923 = private unnamed_addr constant [48 x i8] c"androidx/core/view/ViewPropertyAnimatorListener\00", align 1
@.str.924 = private unnamed_addr constant [54 x i8] c"androidx/core/view/ViewPropertyAnimatorUpdateListener\00", align 1
@.str.925 = private unnamed_addr constant [62 x i8] c"androidx/core/view/WindowInsetsAnimationControlListenerCompat\00", align 1
@.str.926 = private unnamed_addr constant [34 x i8] c"androidx/core/view/MenuItemCompat\00", align 1
@.str.927 = private unnamed_addr constant [57 x i8] c"androidx/core/view/MenuItemCompat$OnActionExpandListener\00", align 1
@.str.928 = private unnamed_addr constant [37 x i8] c"androidx/core/view/PointerIconCompat\00", align 1
@.str.929 = private unnamed_addr constant [39 x i8] c"androidx/core/view/RoundedCornerCompat\00", align 1
@.str.930 = private unnamed_addr constant [46 x i8] c"androidx/core/view/ScaleGestureDetectorCompat\00", align 1
@.str.931 = private unnamed_addr constant [30 x i8] c"androidx/core/view/ViewCompat\00", align 1
@.str.932 = private unnamed_addr constant [64 x i8] c"androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat\00", align 1
@.str.933 = private unnamed_addr constant [46 x i8] c"androidx/core/view/ViewPropertyAnimatorCompat\00", align 1
@.str.934 = private unnamed_addr constant [39 x i8] c"androidx/core/view/ViewStructureCompat\00", align 1
@.str.935 = private unnamed_addr constant [32 x i8] c"androidx/core/view/WindowCompat\00", align 1
@.str.936 = private unnamed_addr constant [47 x i8] c"androidx/core/view/WindowInsetsAnimationCompat\00", align 1
@.str.937 = private unnamed_addr constant [60 x i8] c"androidx/core/view/WindowInsetsAnimationCompat$BoundsCompat\00", align 1
@.str.938 = private unnamed_addr constant [56 x i8] c"androidx/core/view/WindowInsetsAnimationCompat$Callback\00", align 1
@.str.939 = private unnamed_addr constant [57 x i8] c"androidx/core/view/WindowInsetsAnimationControllerCompat\00", align 1
@.str.940 = private unnamed_addr constant [38 x i8] c"androidx/core/view/WindowInsetsCompat\00", align 1
@.str.941 = private unnamed_addr constant [43 x i8] c"androidx/core/view/WindowInsetsCompat$Type\00", align 1
@.str.942 = private unnamed_addr constant [48 x i8] c"androidx/core/view/WindowInsetsControllerCompat\00", align 1
@.str.943 = private unnamed_addr constant [84 x i8] c"androidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener\00", align 1
@.str.944 = private unnamed_addr constant [100 x i8] c"mono/androidx/core/view/WindowInsetsControllerCompat_OnControllableInsetsChangedListenerImplementor\00", align 1
@.str.945 = private unnamed_addr constant [62 x i8] c"androidx/core/view/contentcapture/ContentCaptureSessionCompat\00", align 1
@.str.946 = private unnamed_addr constant [45 x i8] c"androidx/core/view/autofill/AutofillIdCompat\00", align 1
@.str.947 = private unnamed_addr constant [61 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat\00", align 1
@.str.948 = private unnamed_addr constant [87 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat\00", align 1
@.str.949 = private unnamed_addr constant [82 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat\00", align 1
@.str.950 = private unnamed_addr constant [86 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat\00", align 1
@.str.951 = private unnamed_addr constant [77 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat\00", align 1
@.str.952 = private unnamed_addr constant [85 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat\00", align 1
@.str.953 = private unnamed_addr constant [65 x i8] c"androidx/core/view/accessibility/AccessibilityNodeProviderCompat\00", align 1
@.str.954 = private unnamed_addr constant [63 x i8] c"androidx/core/view/accessibility/AccessibilityWindowInfoCompat\00", align 1
@.str.955 = private unnamed_addr constant [75 x i8] c"androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments\00", align 1
@.str.956 = private unnamed_addr constant [58 x i8] c"androidx/core/view/accessibility/AccessibilityViewCommand\00", align 1
@.str.957 = private unnamed_addr constant [41 x i8] c"androidx/core/text/PrecomputedTextCompat\00", align 1
@.str.958 = private unnamed_addr constant [48 x i8] c"androidx/core/text/PrecomputedTextCompat$Params\00", align 1
@.str.959 = private unnamed_addr constant [37 x i8] c"communityToolkit/maui/media/services\00", align 1
@.str.960 = private unnamed_addr constant [41 x i8] c"crc648873bc476df5e156/BoundServiceBinder\00", align 1
@.str.961 = private unnamed_addr constant [45 x i8] c"crc648873bc476df5e156/BoundServiceConnection\00", align 1
@.str.962 = private unnamed_addr constant [39 x i8] c"crc64ceb75e76f4b66147/MauiMediaElement\00", align 1
@.str.963 = private unnamed_addr constant [35 x i8] c"crc64ceb75e76f4b66147/MediaManager\00", align 1
@.str.964 = private unnamed_addr constant [34 x i8] c"androidx/cardview/widget/CardView\00", align 1
@.str.965 = private unnamed_addr constant [38 x i8] c"androidx/camera/view/CameraController\00", align 1
@.str.966 = private unnamed_addr constant [49 x i8] c"androidx/camera/view/CameraController$OutputSize\00", align 1
@.str.967 = private unnamed_addr constant [33 x i8] c"androidx/camera/view/PreviewView\00", align 1
@.str.968 = private unnamed_addr constant [52 x i8] c"androidx/camera/view/PreviewView$ImplementationMode\00", align 1
@.str.969 = private unnamed_addr constant [55 x i8] c"androidx/camera/view/PreviewView$OnFrameUpdateListener\00", align 1
@.str.970 = private unnamed_addr constant [43 x i8] c"androidx/camera/view/PreviewView$ScaleType\00", align 1
@.str.971 = private unnamed_addr constant [39 x i8] c"androidx/camera/view/video/AudioConfig\00", align 1
@.str.972 = private unnamed_addr constant [47 x i8] c"androidx/camera/view/transform/OutputTransform\00", align 1
@.str.973 = private unnamed_addr constant [48 x i8] c"androidx/camera/view/internal/ScreenFlashUiInfo\00", align 1
@.str.974 = private unnamed_addr constant [61 x i8] c"androidx/camera/view/internal/ScreenFlashUiInfo$ProviderType\00", align 1
@.str.975 = private unnamed_addr constant [36 x i8] c"androidx/customview/widget/Openable\00", align 1
@.str.976 = private unnamed_addr constant [33 x i8] c"androidx/camera/video/AudioStats\00", align 1
@.str.977 = private unnamed_addr constant [39 x i8] c"androidx/camera/video/FallbackStrategy\00", align 1
@.str.978 = private unnamed_addr constant [50 x i8] c"androidx/camera/video/FileDescriptorOutputOptions\00", align 1
@.str.979 = private unnamed_addr constant [40 x i8] c"androidx/camera/video/FileOutputOptions\00", align 1
@.str.980 = private unnamed_addr constant [48 x i8] c"androidx/camera/video/FileOutputOptions$Builder\00", align 1
@.str.981 = private unnamed_addr constant [40 x i8] c"androidx/camera/video/VideoCapabilities\00", align 1
@.str.982 = private unnamed_addr constant [46 x i8] c"androidx/camera/video/VideoOutput$SourceState\00", align 1
@.str.983 = private unnamed_addr constant [46 x i8] c"androidx/camera/video/MediaStoreOutputOptions\00", align 1
@.str.984 = private unnamed_addr constant [36 x i8] c"androidx/camera/video/OutputOptions\00", align 1
@.str.985 = private unnamed_addr constant [36 x i8] c"androidx/camera/video/OutputResults\00", align 1
@.str.986 = private unnamed_addr constant [39 x i8] c"androidx/camera/video/PendingRecording\00", align 1
@.str.987 = private unnamed_addr constant [30 x i8] c"androidx/camera/video/Quality\00", align 1
@.str.988 = private unnamed_addr constant [38 x i8] c"androidx/camera/video/QualitySelector\00", align 1
@.str.989 = private unnamed_addr constant [31 x i8] c"androidx/camera/video/Recorder\00", align 1
@.str.990 = private unnamed_addr constant [39 x i8] c"androidx/camera/video/Recorder$Builder\00", align 1
@.str.991 = private unnamed_addr constant [32 x i8] c"androidx/camera/video/Recording\00", align 1
@.str.992 = private unnamed_addr constant [37 x i8] c"androidx/camera/video/RecordingStats\00", align 1
@.str.993 = private unnamed_addr constant [35 x i8] c"androidx/camera/video/VideoCapture\00", align 1
@.str.994 = private unnamed_addr constant [39 x i8] c"androidx/camera/video/VideoRecordEvent\00", align 1
@.str.995 = private unnamed_addr constant [48 x i8] c"androidx/camera/video/VideoRecordEvent$Finalize\00", align 1
@.str.996 = private unnamed_addr constant [52 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout\00", align 1
@.str.997 = private unnamed_addr constant [61 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior\00", align 1
@.str.998 = private unnamed_addr constant [65 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams\00", align 1
@.str.999 = private unnamed_addr constant [37 x i8] c"androidx/media3/common/AdOverlayInfo\00", align 1
@.str.1000 = private unnamed_addr constant [39 x i8] c"androidx/media3/common/AdPlaybackState\00", align 1
@.str.1001 = private unnamed_addr constant [47 x i8] c"androidx/media3/common/AdPlaybackState$AdGroup\00", align 1
@.str.1002 = private unnamed_addr constant [39 x i8] c"androidx/media3/common/AudioAttributes\00", align 1
@.str.1003 = private unnamed_addr constant [58 x i8] c"androidx/media3/common/AudioAttributes$AudioAttributesV21\00", align 1
@.str.1004 = private unnamed_addr constant [37 x i8] c"androidx/media3/common/AuxEffectInfo\00", align 1
@.str.1005 = private unnamed_addr constant [33 x i8] c"androidx/media3/common/ColorInfo\00", align 1
@.str.1006 = private unnamed_addr constant [41 x i8] c"androidx/media3/common/ColorInfo$Builder\00", align 1
@.str.1007 = private unnamed_addr constant [34 x i8] c"androidx/media3/common/DeviceInfo\00", align 1
@.str.1008 = private unnamed_addr constant [35 x i8] c"androidx/media3/common/DrmInitData\00", align 1
@.str.1009 = private unnamed_addr constant [46 x i8] c"androidx/media3/common/DrmInitData$SchemeData\00", align 1
@.str.1010 = private unnamed_addr constant [31 x i8] c"androidx/media3/common/FlagSet\00", align 1
@.str.1011 = private unnamed_addr constant [30 x i8] c"androidx/media3/common/Format\00", align 1
@.str.1012 = private unnamed_addr constant [38 x i8] c"androidx/media3/common/Format$Builder\00", align 1
@.str.1013 = private unnamed_addr constant [34 x i8] c"androidx/media3/common/DataReader\00", align 1
@.str.1014 = private unnamed_addr constant [30 x i8] c"androidx/media3/common/Effect\00", align 1
@.str.1015 = private unnamed_addr constant [44 x i8] c"androidx/media3/common/ErrorMessageProvider\00", align 1
@.str.1016 = private unnamed_addr constant [39 x i8] c"androidx/media3/common/Player$Commands\00", align 1
@.str.1017 = private unnamed_addr constant [47 x i8] c"androidx/media3/common/Player$Commands$Builder\00", align 1
@.str.1018 = private unnamed_addr constant [37 x i8] c"androidx/media3/common/Player$Events\00", align 1
@.str.1019 = private unnamed_addr constant [39 x i8] c"androidx/media3/common/Player$Listener\00", align 1
@.str.1020 = private unnamed_addr constant [43 x i8] c"androidx/media3/common/Player$PositionInfo\00", align 1
@.str.1021 = private unnamed_addr constant [30 x i8] c"androidx/media3/common/Player\00", align 1
@.str.1022 = private unnamed_addr constant [29 x i8] c"androidx/media3/common/Label\00", align 1
@.str.1023 = private unnamed_addr constant [33 x i8] c"androidx/media3/common/MediaItem\00", align 1
@.str.1024 = private unnamed_addr constant [50 x i8] c"androidx/media3/common/MediaItem$AdsConfiguration\00", align 1
@.str.1025 = private unnamed_addr constant [58 x i8] c"androidx/media3/common/MediaItem$AdsConfiguration$Builder\00", align 1
@.str.1026 = private unnamed_addr constant [41 x i8] c"androidx/media3/common/MediaItem$Builder\00", align 1
@.str.1027 = private unnamed_addr constant [55 x i8] c"androidx/media3/common/MediaItem$ClippingConfiguration\00", align 1
@.str.1028 = private unnamed_addr constant [63 x i8] c"androidx/media3/common/MediaItem$ClippingConfiguration$Builder\00", align 1
@.str.1029 = private unnamed_addr constant [52 x i8] c"androidx/media3/common/MediaItem$ClippingProperties\00", align 1
@.str.1030 = private unnamed_addr constant [50 x i8] c"androidx/media3/common/MediaItem$DrmConfiguration\00", align 1
@.str.1031 = private unnamed_addr constant [58 x i8] c"androidx/media3/common/MediaItem$DrmConfiguration$Builder\00", align 1
@.str.1032 = private unnamed_addr constant [51 x i8] c"androidx/media3/common/MediaItem$LiveConfiguration\00", align 1
@.str.1033 = private unnamed_addr constant [59 x i8] c"androidx/media3/common/MediaItem$LiveConfiguration$Builder\00", align 1
@.str.1034 = private unnamed_addr constant [52 x i8] c"androidx/media3/common/MediaItem$LocalConfiguration\00", align 1
@.str.1035 = private unnamed_addr constant [49 x i8] c"androidx/media3/common/MediaItem$RequestMetadata\00", align 1
@.str.1036 = private unnamed_addr constant [57 x i8] c"androidx/media3/common/MediaItem$RequestMetadata$Builder\00", align 1
@.str.1037 = private unnamed_addr constant [42 x i8] c"androidx/media3/common/MediaItem$Subtitle\00", align 1
@.str.1038 = private unnamed_addr constant [55 x i8] c"androidx/media3/common/MediaItem$SubtitleConfiguration\00", align 1
@.str.1039 = private unnamed_addr constant [63 x i8] c"androidx/media3/common/MediaItem$SubtitleConfiguration$Builder\00", align 1
@.str.1040 = private unnamed_addr constant [37 x i8] c"androidx/media3/common/MediaMetadata\00", align 1
@.str.1041 = private unnamed_addr constant [45 x i8] c"androidx/media3/common/MediaMetadata$Builder\00", align 1
@.str.1042 = private unnamed_addr constant [32 x i8] c"androidx/media3/common/Metadata\00", align 1
@.str.1043 = private unnamed_addr constant [38 x i8] c"androidx/media3/common/Metadata$Entry\00", align 1
@.str.1044 = private unnamed_addr constant [41 x i8] c"androidx/media3/common/PlaybackException\00", align 1
@.str.1045 = private unnamed_addr constant [42 x i8] c"androidx/media3/common/PlaybackParameters\00", align 1
@.str.1046 = private unnamed_addr constant [43 x i8] c"androidx/media3/common/PriorityTaskManager\00", align 1
@.str.1047 = private unnamed_addr constant [30 x i8] c"androidx/media3/common/Rating\00", align 1
@.str.1048 = private unnamed_addr constant [33 x i8] c"androidx/media3/common/StreamKey\00", align 1
@.str.1049 = private unnamed_addr constant [32 x i8] c"androidx/media3/common/Timeline\00", align 1
@.str.1050 = private unnamed_addr constant [39 x i8] c"androidx/media3/common/Timeline$Period\00", align 1
@.str.1051 = private unnamed_addr constant [39 x i8] c"androidx/media3/common/Timeline$Window\00", align 1
@.str.1052 = private unnamed_addr constant [34 x i8] c"androidx/media3/common/TrackGroup\00", align 1
@.str.1053 = private unnamed_addr constant [30 x i8] c"androidx/media3/common/Tracks\00", align 1
@.str.1054 = private unnamed_addr constant [36 x i8] c"androidx/media3/common/Tracks$Group\00", align 1
@.str.1055 = private unnamed_addr constant [46 x i8] c"androidx/media3/common/TrackSelectionOverride\00", align 1
@.str.1056 = private unnamed_addr constant [48 x i8] c"androidx/media3/common/TrackSelectionParameters\00", align 1
@.str.1057 = private unnamed_addr constant [72 x i8] c"androidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences\00", align 1
@.str.1058 = private unnamed_addr constant [80 x i8] c"androidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences$Builder\00", align 1
@.str.1059 = private unnamed_addr constant [56 x i8] c"androidx/media3/common/TrackSelectionParameters$Builder\00", align 1
@.str.1060 = private unnamed_addr constant [33 x i8] c"androidx/media3/common/VideoSize\00", align 1
@.str.1061 = private unnamed_addr constant [41 x i8] c"androidx/media3/common/util/BitmapLoader\00", align 1
@.str.1062 = private unnamed_addr constant [34 x i8] c"androidx/media3/common/util/Clock\00", align 1
@.str.1063 = private unnamed_addr constant [37 x i8] c"androidx/media3/common/util/Consumer\00", align 1
@.str.1064 = private unnamed_addr constant [51 x i8] c"androidx/media3/common/util/HandlerWrapper$Message\00", align 1
@.str.1065 = private unnamed_addr constant [43 x i8] c"androidx/media3/common/util/HandlerWrapper\00", align 1
@.str.1066 = private unnamed_addr constant [33 x i8] c"androidx/media3/common/util/Size\00", align 1
@.str.1067 = private unnamed_addr constant [32 x i8] c"androidx/media3/common/text/Cue\00", align 1
@.str.1068 = private unnamed_addr constant [40 x i8] c"androidx/media3/common/text/Cue$Builder\00", align 1
@.str.1069 = private unnamed_addr constant [37 x i8] c"androidx/media3/common/text/CueGroup\00", align 1
@.str.1070 = private unnamed_addr constant [35 x i8] c"androidx/camera/core/ImageAnalysis\00", align 1
@.str.1071 = private unnamed_addr constant [44 x i8] c"androidx/camera/core/ImageAnalysis$Analyzer\00", align 1
@.str.1072 = private unnamed_addr constant [44 x i8] c"androidx/camera/core/ImageAnalysis$Defaults\00", align 1
@.str.1073 = private unnamed_addr constant [34 x i8] c"androidx/camera/core/ImageCapture\00", align 1
@.str.1074 = private unnamed_addr constant [42 x i8] c"androidx/camera/core/ImageCapture$Builder\00", align 1
@.str.1075 = private unnamed_addr constant [43 x i8] c"androidx/camera/core/ImageCapture$Defaults\00", align 1
@.str.1076 = private unnamed_addr constant [43 x i8] c"androidx/camera/core/ImageCapture$Metadata\00", align 1
@.str.1077 = private unnamed_addr constant [58 x i8] c"androidx/camera/core/ImageCapture$OnImageCapturedCallback\00", align 1
@.str.1078 = private unnamed_addr constant [55 x i8] c"androidx/camera/core/ImageCapture$OnImageSavedCallback\00", align 1
@.str.1079 = private unnamed_addr constant [52 x i8] c"androidx/camera/core/ImageCapture$OutputFileOptions\00", align 1
@.str.1080 = private unnamed_addr constant [52 x i8] c"androidx/camera/core/ImageCapture$OutputFileResults\00", align 1
@.str.1081 = private unnamed_addr constant [46 x i8] c"androidx/camera/core/ImageCapture$ScreenFlash\00", align 1
@.str.1082 = private unnamed_addr constant [54 x i8] c"androidx/camera/core/ImageCapture$ScreenFlashListener\00", align 1
@.str.1083 = private unnamed_addr constant [29 x i8] c"androidx/camera/core/Preview\00", align 1
@.str.1084 = private unnamed_addr constant [37 x i8] c"androidx/camera/core/Preview$Builder\00", align 1
@.str.1085 = private unnamed_addr constant [38 x i8] c"androidx/camera/core/Preview$Defaults\00", align 1
@.str.1086 = private unnamed_addr constant [45 x i8] c"androidx/camera/core/Preview$SurfaceProvider\00", align 1
@.str.1087 = private unnamed_addr constant [34 x i8] c"androidx/camera/core/CameraEffect\00", align 1
@.str.1088 = private unnamed_addr constant [38 x i8] c"androidx/camera/core/CameraIdentifier\00", align 1
@.str.1089 = private unnamed_addr constant [36 x i8] c"androidx/camera/core/CameraSelector\00", align 1
@.str.1090 = private unnamed_addr constant [35 x i8] c"androidx/camera/core/CameraXConfig\00", align 1
@.str.1091 = private unnamed_addr constant [41 x i8] c"androidx/camera/core/CompositionSettings\00", align 1
@.str.1092 = private unnamed_addr constant [38 x i8] c"androidx/camera/core/ConcurrentCamera\00", align 1
@.str.1093 = private unnamed_addr constant [57 x i8] c"androidx/camera/core/ConcurrentCamera$SingleCameraConfig\00", align 1
@.str.1094 = private unnamed_addr constant [34 x i8] c"androidx/camera/core/DynamicRange\00", align 1
@.str.1095 = private unnamed_addr constant [41 x i8] c"androidx/camera/core/FocusMeteringAction\00", align 1
@.str.1096 = private unnamed_addr constant [49 x i8] c"androidx/camera/core/FocusMeteringAction$Builder\00", align 1
@.str.1097 = private unnamed_addr constant [42 x i8] c"androidx/camera/core/ForwardingImageProxy\00", align 1
@.str.1098 = private unnamed_addr constant [63 x i8] c"androidx/camera/core/ForwardingImageProxy$OnImageCloseListener\00", align 1
@.str.1099 = private unnamed_addr constant [79 x i8] c"mono/androidx/camera/core/ForwardingImageProxy_OnImageCloseListenerImplementor\00", align 1
@.str.1100 = private unnamed_addr constant [28 x i8] c"androidx/camera/core/Camera\00", align 1
@.str.1101 = private unnamed_addr constant [35 x i8] c"androidx/camera/core/CameraControl\00", align 1
@.str.1102 = private unnamed_addr constant [32 x i8] c"androidx/camera/core/CameraInfo\00", align 1
@.str.1103 = private unnamed_addr constant [44 x i8] c"androidx/camera/core/CameraPresenceListener\00", align 1
@.str.1104 = private unnamed_addr constant [36 x i8] c"androidx/camera/core/CameraProvider\00", align 1
@.str.1105 = private unnamed_addr constant [50 x i8] c"androidx/camera/core/CameraUseCaseAdapterProvider\00", align 1
@.str.1106 = private unnamed_addr constant [35 x i8] c"androidx/camera/core/ExposureState\00", align 1
@.str.1107 = private unnamed_addr constant [39 x i8] c"androidx/camera/core/ExtendableBuilder\00", align 1
@.str.1108 = private unnamed_addr constant [46 x i8] c"androidx/camera/core/ImageCaptureCapabilities\00", align 1
@.str.1109 = private unnamed_addr constant [31 x i8] c"androidx/camera/core/ImageInfo\00", align 1
@.str.1110 = private unnamed_addr constant [44 x i8] c"androidx/camera/core/ImageProcessor$Request\00", align 1
@.str.1111 = private unnamed_addr constant [45 x i8] c"androidx/camera/core/ImageProcessor$Response\00", align 1
@.str.1112 = private unnamed_addr constant [36 x i8] c"androidx/camera/core/ImageProcessor\00", align 1
@.str.1113 = private unnamed_addr constant [43 x i8] c"androidx/camera/core/ImageProxy$PlaneProxy\00", align 1
@.str.1114 = private unnamed_addr constant [32 x i8] c"androidx/camera/core/ImageProxy\00", align 1
@.str.1115 = private unnamed_addr constant [46 x i8] c"androidx/camera/core/ImageReaderProxyProvider\00", align 1
@.str.1116 = private unnamed_addr constant [43 x i8] c"androidx/camera/core/ImageCaptureException\00", align 1
@.str.1117 = private unnamed_addr constant [49 x i8] c"androidx/camera/core/ImageCaptureLatencyEstimate\00", align 1
@.str.1118 = private unnamed_addr constant [41 x i8] c"androidx/camera/core/PreviewCapabilities\00", align 1
@.str.1119 = private unnamed_addr constant [48 x i8] c"androidx/camera/core/RetryPolicy$ExecutionState\00", align 1
@.str.1120 = private unnamed_addr constant [45 x i8] c"androidx/camera/core/RetryPolicy$RetryConfig\00", align 1
@.str.1121 = private unnamed_addr constant [33 x i8] c"androidx/camera/core/RetryPolicy\00", align 1
@.str.1122 = private unnamed_addr constant [51 x i8] c"androidx/camera/core/SurfaceOutput$CameraInputInfo\00", align 1
@.str.1123 = private unnamed_addr constant [35 x i8] c"androidx/camera/core/SurfaceOutput\00", align 1
@.str.1124 = private unnamed_addr constant [38 x i8] c"androidx/camera/core/SurfaceProcessor\00", align 1
@.str.1125 = private unnamed_addr constant [31 x i8] c"androidx/camera/core/ZoomState\00", align 1
@.str.1126 = private unnamed_addr constant [35 x i8] c"androidx/camera/core/MeteringPoint\00", align 1
@.str.1127 = private unnamed_addr constant [42 x i8] c"androidx/camera/core/MeteringPointFactory\00", align 1
@.str.1128 = private unnamed_addr constant [36 x i8] c"androidx/camera/core/ResolutionInfo\00", align 1
@.str.1129 = private unnamed_addr constant [35 x i8] c"androidx/camera/core/SessionConfig\00", align 1
@.str.1130 = private unnamed_addr constant [36 x i8] c"androidx/camera/core/SurfaceRequest\00", align 1
@.str.1131 = private unnamed_addr constant [55 x i8] c"androidx/camera/core/SurfaceRequest$TransformationInfo\00", align 1
@.str.1132 = private unnamed_addr constant [63 x i8] c"androidx/camera/core/SurfaceRequest$TransformationInfoListener\00", align 1
@.str.1133 = private unnamed_addr constant [29 x i8] c"androidx/camera/core/UseCase\00", align 1
@.str.1134 = private unnamed_addr constant [49 x i8] c"androidx/camera/core/UseCase$StateChangeCallback\00", align 1
@.str.1135 = private unnamed_addr constant [34 x i8] c"androidx/camera/core/UseCaseGroup\00", align 1
@.str.1136 = private unnamed_addr constant [30 x i8] c"androidx/camera/core/ViewPort\00", align 1
@.str.1137 = private unnamed_addr constant [49 x i8] c"androidx/camera/core/streamsharing/StreamSharing\00", align 1
@.str.1138 = private unnamed_addr constant [60 x i8] c"androidx/camera/core/resolutionselector/AspectRatioStrategy\00", align 1
@.str.1139 = private unnamed_addr constant [57 x i8] c"androidx/camera/core/resolutionselector/ResolutionFilter\00", align 1
@.str.1140 = private unnamed_addr constant [59 x i8] c"androidx/camera/core/resolutionselector/ResolutionSelector\00", align 1
@.str.1141 = private unnamed_addr constant [67 x i8] c"androidx/camera/core/resolutionselector/ResolutionSelector$Builder\00", align 1
@.str.1142 = private unnamed_addr constant [59 x i8] c"androidx/camera/core/resolutionselector/ResolutionStrategy\00", align 1
@.str.1143 = private unnamed_addr constant [57 x i8] c"androidx/camera/core/processing/SurfaceProcessorInternal\00", align 1
@.str.1144 = private unnamed_addr constant [44 x i8] c"androidx/camera/core/processing/SurfaceEdge\00", align 1
@.str.1145 = private unnamed_addr constant [52 x i8] c"androidx/camera/core/internal/CalculatedUseCaseInfo\00", align 1
@.str.1146 = private unnamed_addr constant [51 x i8] c"androidx/camera/core/internal/CameraUseCaseAdapter\00", align 1
@.str.1147 = private unnamed_addr constant [62 x i8] c"androidx/camera/core/internal/CameraUseCaseAdapter$ConfigPair\00", align 1
@.str.1148 = private unnamed_addr constant [47 x i8] c"androidx/camera/core/internal/IoConfig$Builder\00", align 1
@.str.1149 = private unnamed_addr constant [62 x i8] c"androidx/camera/core/internal/StreamSpecsCalculator$Companion\00", align 1
@.str.1150 = private unnamed_addr constant [52 x i8] c"androidx/camera/core/internal/StreamSpecsCalculator\00", align 1
@.str.1151 = private unnamed_addr constant [51 x i8] c"androidx/camera/core/internal/TargetConfig$Builder\00", align 1
@.str.1152 = private unnamed_addr constant [43 x i8] c"androidx/camera/core/internal/TargetConfig\00", align 1
@.str.1153 = private unnamed_addr constant [51 x i8] c"androidx/camera/core/internal/ThreadConfig$Builder\00", align 1
@.str.1154 = private unnamed_addr constant [52 x i8] c"androidx/camera/core/internal/StreamSpecQueryResult\00", align 1
@.str.1155 = private unnamed_addr constant [44 x i8] c"androidx/camera/core/impl/AdapterCameraInfo\00", align 1
@.str.1156 = private unnamed_addr constant [46 x i8] c"androidx/camera/core/impl/AttachedSurfaceInfo\00", align 1
@.str.1157 = private unnamed_addr constant [48 x i8] c"androidx/camera/core/impl/CameraCaptureCallback\00", align 1
@.str.1158 = private unnamed_addr constant [47 x i8] c"androidx/camera/core/impl/CameraCaptureFailure\00", align 1
@.str.1159 = private unnamed_addr constant [54 x i8] c"androidx/camera/core/impl/CameraCaptureFailure$Reason\00", align 1
@.str.1160 = private unnamed_addr constant [48 x i8] c"androidx/camera/core/impl/CameraCaptureMetaData\00", align 1
@.str.1161 = private unnamed_addr constant [55 x i8] c"androidx/camera/core/impl/CameraCaptureMetaData$AeMode\00", align 1
@.str.1162 = private unnamed_addr constant [56 x i8] c"androidx/camera/core/impl/CameraCaptureMetaData$AeState\00", align 1
@.str.1163 = private unnamed_addr constant [55 x i8] c"androidx/camera/core/impl/CameraCaptureMetaData$AfMode\00", align 1
@.str.1164 = private unnamed_addr constant [56 x i8] c"androidx/camera/core/impl/CameraCaptureMetaData$AfState\00", align 1
@.str.1165 = private unnamed_addr constant [56 x i8] c"androidx/camera/core/impl/CameraCaptureMetaData$AwbMode\00", align 1
@.str.1166 = private unnamed_addr constant [57 x i8] c"androidx/camera/core/impl/CameraCaptureMetaData$AwbState\00", align 1
@.str.1167 = private unnamed_addr constant [59 x i8] c"androidx/camera/core/impl/CameraCaptureMetaData$FlashState\00", align 1
@.str.1168 = private unnamed_addr constant [43 x i8] c"androidx/camera/core/impl/CameraRepository\00", align 1
@.str.1169 = private unnamed_addr constant [45 x i8] c"androidx/camera/core/impl/CameraThreadConfig\00", align 1
@.str.1170 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/CaptureConfig\00", align 1
@.str.1171 = private unnamed_addr constant [48 x i8] c"androidx/camera/core/impl/CaptureConfig$Builder\00", align 1
@.str.1172 = private unnamed_addr constant [55 x i8] c"androidx/camera/core/impl/CaptureConfig$OptionUnpacker\00", align 1
@.str.1173 = private unnamed_addr constant [44 x i8] c"androidx/camera/core/impl/DeferrableSurface\00", align 1
@.str.1174 = private unnamed_addr constant [47 x i8] c"androidx/camera/core/impl/ForwardingCameraInfo\00", align 1
@.str.1175 = private unnamed_addr constant [46 x i8] c"androidx/camera/core/impl/CameraCaptureResult\00", align 1
@.str.1176 = private unnamed_addr constant [62 x i8] c"androidx/camera/core/impl/CameraConfig$PostviewFormatSelector\00", align 1
@.str.1177 = private unnamed_addr constant [39 x i8] c"androidx/camera/core/impl/CameraConfig\00", align 1
@.str.1178 = private unnamed_addr constant [48 x i8] c"androidx/camera/core/impl/CameraControlInternal\00", align 1
@.str.1179 = private unnamed_addr constant [62 x i8] c"androidx/camera/core/impl/CameraDeviceSurfaceManager$Provider\00", align 1
@.str.1180 = private unnamed_addr constant [53 x i8] c"androidx/camera/core/impl/CameraDeviceSurfaceManager\00", align 1
@.str.1181 = private unnamed_addr constant [49 x i8] c"androidx/camera/core/impl/CameraFactory$Provider\00", align 1
@.str.1182 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/CameraFactory\00", align 1
@.str.1183 = private unnamed_addr constant [45 x i8] c"androidx/camera/core/impl/CameraInfoInternal\00", align 1
@.str.1184 = private unnamed_addr constant [41 x i8] c"androidx/camera/core/impl/CameraInternal\00", align 1
@.str.1185 = private unnamed_addr constant [48 x i8] c"androidx/camera/core/impl/CameraPresenceMonitor\00", align 1
@.str.1186 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/CaptureBundle\00", align 1
@.str.1187 = private unnamed_addr constant [39 x i8] c"androidx/camera/core/impl/CaptureStage\00", align 1
@.str.1188 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/Config$Option\00", align 1
@.str.1189 = private unnamed_addr constant [47 x i8] c"androidx/camera/core/impl/Config$OptionMatcher\00", align 1
@.str.1190 = private unnamed_addr constant [48 x i8] c"androidx/camera/core/impl/Config$OptionPriority\00", align 1
@.str.1191 = private unnamed_addr constant [33 x i8] c"androidx/camera/core/impl/Config\00", align 1
@.str.1192 = private unnamed_addr constant [41 x i8] c"androidx/camera/core/impl/ConfigProvider\00", align 1
@.str.1193 = private unnamed_addr constant [37 x i8] c"androidx/camera/core/impl/Identifier\00", align 1
@.str.1194 = private unnamed_addr constant [50 x i8] c"androidx/camera/core/impl/EncoderProfilesProvider\00", align 1
@.str.1195 = private unnamed_addr constant [65 x i8] c"androidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy\00", align 1
@.str.1196 = private unnamed_addr constant [65 x i8] c"androidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy\00", align 1
@.str.1197 = private unnamed_addr constant [47 x i8] c"androidx/camera/core/impl/EncoderProfilesProxy\00", align 1
@.str.1198 = private unnamed_addr constant [51 x i8] c"androidx/camera/core/impl/ImageInputConfig$Builder\00", align 1
@.str.1199 = private unnamed_addr constant [43 x i8] c"androidx/camera/core/impl/ImageInputConfig\00", align 1
@.str.1200 = private unnamed_addr constant [52 x i8] c"androidx/camera/core/impl/ImageOutputConfig$Builder\00", align 1
@.str.1201 = private unnamed_addr constant [68 x i8] c"androidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener\00", align 1
@.str.1202 = private unnamed_addr constant [43 x i8] c"androidx/camera/core/impl/ImageReaderProxy\00", align 1
@.str.1203 = private unnamed_addr constant [57 x i8] c"androidx/camera/core/impl/InternalCameraPresenceListener\00", align 1
@.str.1204 = private unnamed_addr constant [46 x i8] c"androidx/camera/core/impl/ImageAnalysisConfig\00", align 1
@.str.1205 = private unnamed_addr constant [45 x i8] c"androidx/camera/core/impl/ImageCaptureConfig\00", align 1
@.str.1206 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/MutableConfig\00", align 1
@.str.1207 = private unnamed_addr constant [46 x i8] c"androidx/camera/core/impl/Observable$Observer\00", align 1
@.str.1208 = private unnamed_addr constant [37 x i8] c"androidx/camera/core/impl/Observable\00", align 1
@.str.1209 = private unnamed_addr constant [32 x i8] c"androidx/camera/core/impl/Quirk\00", align 1
@.str.1210 = private unnamed_addr constant [41 x i8] c"androidx/camera/core/impl/ReadableConfig\00", align 1
@.str.1211 = private unnamed_addr constant [52 x i8] c"androidx/camera/core/impl/RequestProcessor$Callback\00", align 1
@.str.1212 = private unnamed_addr constant [51 x i8] c"androidx/camera/core/impl/RequestProcessor$Request\00", align 1
@.str.1213 = private unnamed_addr constant [43 x i8] c"androidx/camera/core/impl/RequestProcessor\00", align 1
@.str.1214 = private unnamed_addr constant [59 x i8] c"androidx/camera/core/impl/SessionProcessor$CaptureCallback\00", align 1
@.str.1215 = private unnamed_addr constant [74 x i8] c"androidx/camera/core/impl/SessionProcessor$CaptureSessionRequestProcessor\00", align 1
@.str.1216 = private unnamed_addr constant [43 x i8] c"androidx/camera/core/impl/SessionProcessor\00", align 1
@.str.1217 = private unnamed_addr constant [48 x i8] c"androidx/camera/core/impl/UseCaseConfig$Builder\00", align 1
@.str.1218 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/UseCaseConfig\00", align 1
@.str.1219 = private unnamed_addr constant [59 x i8] c"androidx/camera/core/impl/UseCaseConfigFactory$CaptureType\00", align 1
@.str.1220 = private unnamed_addr constant [56 x i8] c"androidx/camera/core/impl/UseCaseConfigFactory$Provider\00", align 1
@.str.1221 = private unnamed_addr constant [47 x i8] c"androidx/camera/core/impl/UseCaseConfigFactory\00", align 1
@.str.1222 = private unnamed_addr constant [47 x i8] c"androidx/camera/core/impl/MutableOptionsBundle\00", align 1
@.str.1223 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/OptionsBundle\00", align 1
@.str.1224 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/OutputSurface\00", align 1
@.str.1225 = private unnamed_addr constant [53 x i8] c"androidx/camera/core/impl/OutputSurfaceConfiguration\00", align 1
@.str.1226 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/PreviewConfig\00", align 1
@.str.1227 = private unnamed_addr constant [33 x i8] c"androidx/camera/core/impl/Quirks\00", align 1
@.str.1228 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/QuirkSettings\00", align 1
@.str.1229 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/SessionConfig\00", align 1
@.str.1230 = private unnamed_addr constant [48 x i8] c"androidx/camera/core/impl/SessionConfig$Builder\00", align 1
@.str.1231 = private unnamed_addr constant [54 x i8] c"androidx/camera/core/impl/SessionConfig$ErrorListener\00", align 1
@.str.1232 = private unnamed_addr constant [55 x i8] c"androidx/camera/core/impl/SessionConfig$OptionUnpacker\00", align 1
@.str.1233 = private unnamed_addr constant [53 x i8] c"androidx/camera/core/impl/SessionConfig$OutputConfig\00", align 1
@.str.1234 = private unnamed_addr constant [61 x i8] c"androidx/camera/core/impl/SessionConfig$OutputConfig$Builder\00", align 1
@.str.1235 = private unnamed_addr constant [53 x i8] c"androidx/camera/core/impl/SessionConfig$SessionError\00", align 1
@.str.1236 = private unnamed_addr constant [37 x i8] c"androidx/camera/core/impl/StreamSpec\00", align 1
@.str.1237 = private unnamed_addr constant [45 x i8] c"androidx/camera/core/impl/StreamSpec$Builder\00", align 1
@.str.1238 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/StreamUseCase\00", align 1
@.str.1239 = private unnamed_addr constant [40 x i8] c"androidx/camera/core/impl/SurfaceConfig\00", align 1
@.str.1240 = private unnamed_addr constant [51 x i8] c"androidx/camera/core/impl/SurfaceConfig$ConfigSize\00", align 1
@.str.1241 = private unnamed_addr constant [53 x i8] c"androidx/camera/core/impl/SurfaceConfig$ConfigSource\00", align 1
@.str.1242 = private unnamed_addr constant [51 x i8] c"androidx/camera/core/impl/SurfaceConfig$ConfigType\00", align 1
@.str.1243 = private unnamed_addr constant [48 x i8] c"androidx/camera/core/impl/SurfaceSizeDefinition\00", align 1
@.str.1244 = private unnamed_addr constant [55 x i8] c"androidx/camera/core/impl/SurfaceStreamSpecQueryResult\00", align 1
@.str.1245 = private unnamed_addr constant [36 x i8] c"androidx/camera/core/impl/TagBundle\00", align 1
@.str.1246 = private unnamed_addr constant [35 x i8] c"androidx/camera/core/impl/Timebase\00", align 1
@.str.1247 = private unnamed_addr constant [41 x i8] c"androidx/camera/core/impl/utils/ExifData\00", align 1
@.str.1248 = private unnamed_addr constant [49 x i8] c"androidx/camera/core/impl/utils/ExifData$Builder\00", align 1
@.str.1249 = private unnamed_addr constant [58 x i8] c"androidx/camera/core/impl/utils/ExifData$WhiteBalanceMode\00", align 1
@.str.1250 = private unnamed_addr constant [54 x i8] c"androidx/camera/core/imagecapture/ImageCaptureControl\00", align 1
@.str.1251 = private unnamed_addr constant [48 x i8] c"androidx/camera/core/imagecapture/ImagePipeline\00", align 1
@.str.1252 = private unnamed_addr constant [62 x i8] c"androidx/camera/core/imagecapture/TakePictureManager$Provider\00", align 1
@.str.1253 = private unnamed_addr constant [53 x i8] c"androidx/camera/core/imagecapture/TakePictureManager\00", align 1
@.str.1254 = private unnamed_addr constant [51 x i8] c"androidx/camera/core/imagecapture/PostviewSettings\00", align 1
@.str.1255 = private unnamed_addr constant [54 x i8] c"androidx/camera/core/imagecapture/RequestWithCallback\00", align 1
@.str.1256 = private unnamed_addr constant [53 x i8] c"androidx/camera/core/imagecapture/TakePictureRequest\00", align 1
@.str.1257 = private unnamed_addr constant [51 x i8] c"androidx/camera/core/featuregroup/GroupableFeature\00", align 1
@.str.1258 = private unnamed_addr constant [60 x i8] c"androidx/camera/core/featuregroup/impl/ResolvedFeatureGroup\00", align 1
@.str.1259 = private unnamed_addr constant [77 x i8] c"androidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolutionResult\00", align 1
@.str.1260 = private unnamed_addr constant [69 x i8] c"androidx/camera/core/featuregroup/impl/resolver/FeatureGroupResolver\00", align 1
@.str.1261 = private unnamed_addr constant [79 x i8] c"androidx/camera/core/concurrent/CameraCoordinator$ConcurrentCameraModeListener\00", align 1
@.str.1262 = private unnamed_addr constant [50 x i8] c"androidx/camera/core/concurrent/CameraCoordinator\00", align 1
@.str.1263 = private unnamed_addr constant [51 x i8] c"com/google/common/util/concurrent/ListenableFuture\00", align 1
@.str.1264 = private unnamed_addr constant [34 x i8] c"androidx/navigation/NavDirections\00", align 1
@.str.1265 = private unnamed_addr constant [46 x i8] c"androidx/navigation/NavViewModelStoreProvider\00", align 1
@.str.1266 = private unnamed_addr constant [30 x i8] c"androidx/navigation/NavAction\00", align 1
@.str.1267 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavArgument\00", align 1
@.str.1268 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavBackStackEntry\00", align 1
@.str.1269 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavDeepLink\00", align 1
@.str.1270 = private unnamed_addr constant [39 x i8] c"androidx/navigation/NavDeepLinkRequest\00", align 1
@.str.1271 = private unnamed_addr constant [35 x i8] c"androidx/navigation/NavDestination\00", align 1
@.str.1272 = private unnamed_addr constant [49 x i8] c"androidx/navigation/NavDestination$DeepLinkMatch\00", align 1
@.str.1273 = private unnamed_addr constant [29 x i8] c"androidx/navigation/NavGraph\00", align 1
@.str.1274 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavGraphNavigator\00", align 1
@.str.1275 = private unnamed_addr constant [30 x i8] c"androidx/navigation/Navigator\00", align 1
@.str.1276 = private unnamed_addr constant [37 x i8] c"androidx/navigation/Navigator$Extras\00", align 1
@.str.1277 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavigatorProvider\00", align 1
@.str.1278 = private unnamed_addr constant [35 x i8] c"androidx/navigation/NavigatorState\00", align 1
@.str.1279 = private unnamed_addr constant [31 x i8] c"androidx/navigation/NavOptions\00", align 1
@.str.1280 = private unnamed_addr constant [28 x i8] c"androidx/navigation/NavType\00", align 1
@.str.1281 = private unnamed_addr constant [35 x i8] c"crc647db950552a943f28/MainActivity\00", align 1
@.str.1282 = private unnamed_addr constant [38 x i8] c"crc647db950552a943f28/MainApplication\00", align 1
@.str.1283 = private unnamed_addr constant [46 x i8] c"kotlinx/serialization/DeserializationStrategy\00", align 1
@.str.1284 = private unnamed_addr constant [34 x i8] c"kotlinx/serialization/KSerializer\00", align 1
@.str.1285 = private unnamed_addr constant [44 x i8] c"kotlinx/serialization/SerializationStrategy\00", align 1
@.str.1286 = private unnamed_addr constant [58 x i8] c"kotlinx/serialization/encoding/CompositeDecoder$Companion\00", align 1
@.str.1287 = private unnamed_addr constant [48 x i8] c"kotlinx/serialization/encoding/CompositeDecoder\00", align 1
@.str.1288 = private unnamed_addr constant [48 x i8] c"kotlinx/serialization/encoding/CompositeEncoder\00", align 1
@.str.1289 = private unnamed_addr constant [39 x i8] c"kotlinx/serialization/encoding/Decoder\00", align 1
@.str.1290 = private unnamed_addr constant [39 x i8] c"kotlinx/serialization/encoding/Encoder\00", align 1
@.str.1291 = private unnamed_addr constant [51 x i8] c"kotlinx/serialization/descriptors/SerialDescriptor\00", align 1
@.str.1292 = private unnamed_addr constant [45 x i8] c"kotlinx/serialization/descriptors/SerialKind\00", align 1
@.str.1293 = private unnamed_addr constant [57 x i8] c"androidx/appcompat/graphics/drawable/DrawerArrowDrawable\00", align 1
@.str.1294 = private unnamed_addr constant [34 x i8] c"androidx/appcompat/widget/Toolbar\00", align 1
@.str.1295 = private unnamed_addr constant [67 x i8] c"androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher\00", align 1
@.str.1296 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/Toolbar$LayoutParams\00", align 1
@.str.1297 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/Toolbar$OnMenuItemClickListener\00", align 1
@.str.1298 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor\00", align 1
@.str.1299 = private unnamed_addr constant [56 x i8] c"androidx/appcompat/widget/AppCompatAutoCompleteTextView\00", align 1
@.str.1300 = private unnamed_addr constant [42 x i8] c"androidx/appcompat/widget/AppCompatButton\00", align 1
@.str.1301 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatCheckBox\00", align 1
@.str.1302 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatEditText\00", align 1
@.str.1303 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/AppCompatImageButton\00", align 1
@.str.1304 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/widget/AppCompatImageView\00", align 1
@.str.1305 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/AppCompatRadioButton\00", align 1
@.str.1306 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatTextView\00", align 1
@.str.1307 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/widget/DecorToolbar\00", align 1
@.str.1308 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/widget/LinearLayoutCompat\00", align 1
@.str.1309 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/LinearLayoutCompat$LayoutParams\00", align 1
@.str.1310 = private unnamed_addr constant [52 x i8] c"androidx/appcompat/widget/ScrollingTabContainerView\00", align 1
@.str.1311 = private unnamed_addr constant [75 x i8] c"androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener\00", align 1
@.str.1312 = private unnamed_addr constant [37 x i8] c"androidx/appcompat/widget/SearchView\00", align 1
@.str.1313 = private unnamed_addr constant [53 x i8] c"androidx/appcompat/widget/SearchView$OnCloseListener\00", align 1
@.str.1314 = private unnamed_addr constant [69 x i8] c"mono/androidx/appcompat/widget/SearchView_OnCloseListenerImplementor\00", align 1
@.str.1315 = private unnamed_addr constant [57 x i8] c"androidx/appcompat/widget/SearchView$OnQueryTextListener\00", align 1
@.str.1316 = private unnamed_addr constant [73 x i8] c"mono/androidx/appcompat/widget/SearchView_OnQueryTextListenerImplementor\00", align 1
@.str.1317 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/SearchView$OnSuggestionListener\00", align 1
@.str.1318 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/widget/SearchView_OnSuggestionListenerImplementor\00", align 1
@.str.1319 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/widget/SwitchCompat\00", align 1
@.str.1320 = private unnamed_addr constant [40 x i8] c"androidx/appcompat/widget/TooltipCompat\00", align 1
@.str.1321 = private unnamed_addr constant [35 x i8] c"androidx/appcompat/app/AlertDialog\00", align 1
@.str.1322 = private unnamed_addr constant [43 x i8] c"androidx/appcompat/app/AlertDialog$Builder\00", align 1
@.str.1323 = private unnamed_addr constant [78 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor\00", align 1
@.str.1324 = private unnamed_addr constant [79 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor\00", align 1
@.str.1325 = private unnamed_addr constant [89 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor\00", align 1
@.str.1326 = private unnamed_addr constant [33 x i8] c"androidx/appcompat/app/ActionBar\00", align 1
@.str.1327 = private unnamed_addr constant [46 x i8] c"androidx/appcompat/app/ActionBar$LayoutParams\00", align 1
@.str.1328 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/app/ActionBar$OnMenuVisibilityListener\00", align 1
@.str.1329 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor\00", align 1
@.str.1330 = private unnamed_addr constant [54 x i8] c"androidx/appcompat/app/ActionBar$OnNavigationListener\00", align 1
@.str.1331 = private unnamed_addr constant [37 x i8] c"androidx/appcompat/app/ActionBar$Tab\00", align 1
@.str.1332 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/app/ActionBar$TabListener\00", align 1
@.str.1333 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/app/ActionBarDrawerToggle\00", align 1
@.str.1334 = private unnamed_addr constant [54 x i8] c"androidx/appcompat/app/ActionBarDrawerToggle$Delegate\00", align 1
@.str.1335 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatActivity\00", align 1
@.str.1336 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatDelegate\00", align 1
@.str.1337 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/app/AppCompatDialog\00", align 1
@.str.1338 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatCallback\00", align 1
@.str.1339 = private unnamed_addr constant [35 x i8] c"androidx/appcompat/view/ActionMode\00", align 1
@.str.1340 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/view/ActionMode$Callback\00", align 1
@.str.1341 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/view/menu/MenuBuilder\00", align 1
@.str.1342 = private unnamed_addr constant [50 x i8] c"androidx/appcompat/view/menu/MenuBuilder$Callback\00", align 1
@.str.1343 = private unnamed_addr constant [52 x i8] c"androidx/appcompat/view/menu/MenuPresenter$Callback\00", align 1
@.str.1344 = private unnamed_addr constant [43 x i8] c"androidx/appcompat/view/menu/MenuPresenter\00", align 1
@.str.1345 = private unnamed_addr constant [38 x i8] c"androidx/appcompat/view/menu/MenuView\00", align 1
@.str.1346 = private unnamed_addr constant [42 x i8] c"androidx/appcompat/view/menu/MenuItemImpl\00", align 1
@.str.1347 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/view/menu/SubMenuBuilder\00", align 1
@.str.1348 = private unnamed_addr constant [44 x i8] c"androidx/cursoradapter/widget/CursorAdapter\00", align 1
@.str.1349 = private unnamed_addr constant [40 x i8] c"androidx/media3/extractor/text/Subtitle\00", align 1
@.str.1350 = private unnamed_addr constant [54 x i8] c"androidx/media3/extractor/text/SubtitleParser$Factory\00", align 1
@.str.1351 = private unnamed_addr constant [60 x i8] c"androidx/media3/extractor/text/SubtitleParser$OutputOptions\00", align 1
@.str.1352 = private unnamed_addr constant [46 x i8] c"androidx/media3/extractor/text/SubtitleParser\00", align 1
@.str.1353 = private unnamed_addr constant [36 x i8] c"androidx/media3/exoplayer/ExoPlayer\00", align 1
@.str.1354 = private unnamed_addr constant [42 x i8] c"androidx/media3/exoplayer/DecoderCounters\00", align 1
@.str.1355 = private unnamed_addr constant [49 x i8] c"androidx/media3/exoplayer/DecoderReuseEvaluation\00", align 1
@.str.1356 = private unnamed_addr constant [47 x i8] c"androidx/media3/exoplayer/ExoPlaybackException\00", align 1
@.str.1357 = private unnamed_addr constant [39 x i8] c"androidx/media3/exoplayer/FormatHolder\00", align 1
@.str.1358 = private unnamed_addr constant [51 x i8] c"androidx/media3/exoplayer/ExoPlayer$AudioComponent\00", align 1
@.str.1359 = private unnamed_addr constant [57 x i8] c"androidx/media3/exoplayer/ExoPlayer$AudioOffloadListener\00", align 1
@.str.1360 = private unnamed_addr constant [44 x i8] c"androidx/media3/exoplayer/ExoPlayer$Builder\00", align 1
@.str.1361 = private unnamed_addr constant [52 x i8] c"androidx/media3/exoplayer/ExoPlayer$DeviceComponent\00", align 1
@.str.1362 = private unnamed_addr constant [57 x i8] c"androidx/media3/exoplayer/ExoPlayer$PreloadConfiguration\00", align 1
@.str.1363 = private unnamed_addr constant [50 x i8] c"androidx/media3/exoplayer/ExoPlayer$TextComponent\00", align 1
@.str.1364 = private unnamed_addr constant [51 x i8] c"androidx/media3/exoplayer/ExoPlayer$VideoComponent\00", align 1
@.str.1365 = private unnamed_addr constant [51 x i8] c"androidx/media3/exoplayer/LivePlaybackSpeedControl\00", align 1
@.str.1366 = private unnamed_addr constant [49 x i8] c"androidx/media3/exoplayer/LoadControl$Parameters\00", align 1
@.str.1367 = private unnamed_addr constant [38 x i8] c"androidx/media3/exoplayer/LoadControl\00", align 1
@.str.1368 = private unnamed_addr constant [37 x i8] c"androidx/media3/exoplayer/MediaClock\00", align 1
@.str.1369 = private unnamed_addr constant [35 x i8] c"androidx/media3/exoplayer/Renderer\00", align 1
@.str.1370 = private unnamed_addr constant [56 x i8] c"androidx/media3/exoplayer/RendererCapabilities$Listener\00", align 1
@.str.1371 = private unnamed_addr constant [47 x i8] c"androidx/media3/exoplayer/RendererCapabilities\00", align 1
@.str.1372 = private unnamed_addr constant [43 x i8] c"androidx/media3/exoplayer/RenderersFactory\00", align 1
@.str.1373 = private unnamed_addr constant [57 x i8] c"androidx/media3/exoplayer/SuitableOutputChecker$Callback\00", align 1
@.str.1374 = private unnamed_addr constant [48 x i8] c"androidx/media3/exoplayer/SuitableOutputChecker\00", align 1
@.str.1375 = private unnamed_addr constant [38 x i8] c"androidx/media3/exoplayer/LoadingInfo\00", align 1
@.str.1376 = private unnamed_addr constant [46 x i8] c"androidx/media3/exoplayer/LoadingInfo$Builder\00", align 1
@.str.1377 = private unnamed_addr constant [49 x i8] c"androidx/media3/exoplayer/PlaybackLooperProvider\00", align 1
@.str.1378 = private unnamed_addr constant [40 x i8] c"androidx/media3/exoplayer/PlayerMessage\00", align 1
@.str.1379 = private unnamed_addr constant [47 x i8] c"androidx/media3/exoplayer/PlayerMessage$Sender\00", align 1
@.str.1380 = private unnamed_addr constant [47 x i8] c"androidx/media3/exoplayer/PlayerMessage$Target\00", align 1
@.str.1381 = private unnamed_addr constant [48 x i8] c"androidx/media3/exoplayer/RendererConfiguration\00", align 1
@.str.1382 = private unnamed_addr constant [41 x i8] c"androidx/media3/exoplayer/SeekParameters\00", align 1
@.str.1383 = private unnamed_addr constant [59 x i8] c"androidx/media3/exoplayer/video/VideoFrameMetadataListener\00", align 1
@.str.1384 = private unnamed_addr constant [59 x i8] c"androidx/media3/exoplayer/video/VideoRendererEventListener\00", align 1
@.str.1385 = private unnamed_addr constant [63 x i8] c"androidx/media3/exoplayer/video/spherical/CameraMotionListener\00", align 1
@.str.1386 = private unnamed_addr constant [46 x i8] c"androidx/media3/exoplayer/upstream/Allocation\00", align 1
@.str.1387 = private unnamed_addr constant [53 x i8] c"androidx/media3/exoplayer/upstream/CmcdConfiguration\00", align 1
@.str.1388 = private unnamed_addr constant [61 x i8] c"androidx/media3/exoplayer/upstream/CmcdConfiguration$Factory\00", align 1
@.str.1389 = private unnamed_addr constant [67 x i8] c"androidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig\00", align 1
@.str.1390 = private unnamed_addr constant [60 x i8] c"androidx/media3/exoplayer/upstream/Allocator$AllocationNode\00", align 1
@.str.1391 = private unnamed_addr constant [45 x i8] c"androidx/media3/exoplayer/upstream/Allocator\00", align 1
@.str.1392 = private unnamed_addr constant [64 x i8] c"androidx/media3/exoplayer/upstream/BandwidthMeter$EventListener\00", align 1
@.str.1393 = private unnamed_addr constant [50 x i8] c"androidx/media3/exoplayer/upstream/BandwidthMeter\00", align 1
@.str.1394 = private unnamed_addr constant [75 x i8] c"androidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions\00", align 1
@.str.1395 = private unnamed_addr constant [77 x i8] c"androidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection\00", align 1
@.str.1396 = private unnamed_addr constant [73 x i8] c"androidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo\00", align 1
@.str.1397 = private unnamed_addr constant [59 x i8] c"androidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy\00", align 1
@.str.1398 = private unnamed_addr constant [59 x i8] c"androidx/media3/exoplayer/trackselection/ExoTrackSelection\00", align 1
@.str.1399 = private unnamed_addr constant [56 x i8] c"androidx/media3/exoplayer/trackselection/TrackSelection\00", align 1
@.str.1400 = private unnamed_addr constant [61 x i8] c"androidx/media3/exoplayer/trackselection/TrackSelectionArray\00", align 1
@.str.1401 = private unnamed_addr constant [55 x i8] c"androidx/media3/exoplayer/trackselection/TrackSelector\00", align 1
@.str.1402 = private unnamed_addr constant [76 x i8] c"androidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener\00", align 1
@.str.1403 = private unnamed_addr constant [61 x i8] c"androidx/media3/exoplayer/trackselection/TrackSelectorResult\00", align 1
@.str.1404 = private unnamed_addr constant [42 x i8] c"androidx/media3/exoplayer/text/TextOutput\00", align 1
@.str.1405 = private unnamed_addr constant [54 x i8] c"androidx/media3/exoplayer/source/MediaPeriod$Callback\00", align 1
@.str.1406 = private unnamed_addr constant [45 x i8] c"androidx/media3/exoplayer/source/MediaPeriod\00", align 1
@.str.1407 = private unnamed_addr constant [53 x i8] c"androidx/media3/exoplayer/source/MediaSource$Factory\00", align 1
@.str.1408 = private unnamed_addr constant [59 x i8] c"androidx/media3/exoplayer/source/MediaSource$MediaPeriodId\00", align 1
@.str.1409 = private unnamed_addr constant [63 x i8] c"androidx/media3/exoplayer/source/MediaSource$MediaSourceCaller\00", align 1
@.str.1410 = private unnamed_addr constant [45 x i8] c"androidx/media3/exoplayer/source/MediaSource\00", align 1
@.str.1411 = private unnamed_addr constant [58 x i8] c"androidx/media3/exoplayer/source/MediaSourceEventListener\00", align 1
@.str.1412 = private unnamed_addr constant [46 x i8] c"androidx/media3/exoplayer/source/SampleStream\00", align 1
@.str.1413 = private unnamed_addr constant [61 x i8] c"androidx/media3/exoplayer/source/SequenceableLoader$Callback\00", align 1
@.str.1414 = private unnamed_addr constant [52 x i8] c"androidx/media3/exoplayer/source/SequenceableLoader\00", align 1
@.str.1415 = private unnamed_addr constant [46 x i8] c"androidx/media3/exoplayer/source/ShuffleOrder\00", align 1
@.str.1416 = private unnamed_addr constant [47 x i8] c"androidx/media3/exoplayer/source/LoadEventInfo\00", align 1
@.str.1417 = private unnamed_addr constant [47 x i8] c"androidx/media3/exoplayer/source/MediaLoadData\00", align 1
@.str.1418 = private unnamed_addr constant [49 x i8] c"androidx/media3/exoplayer/source/TrackGroupArray\00", align 1
@.str.1419 = private unnamed_addr constant [45 x i8] c"androidx/media3/exoplayer/source/chunk/Chunk\00", align 1
@.str.1420 = private unnamed_addr constant [58 x i8] c"androidx/media3/exoplayer/source/chunk/MediaChunkIterator\00", align 1
@.str.1421 = private unnamed_addr constant [50 x i8] c"androidx/media3/exoplayer/source/chunk/MediaChunk\00", align 1
@.str.1422 = private unnamed_addr constant [50 x i8] c"androidx/media3/exoplayer/metadata/MetadataOutput\00", align 1
@.str.1423 = private unnamed_addr constant [44 x i8] c"androidx/media3/exoplayer/image/ImageOutput\00", align 1
@.str.1424 = private unnamed_addr constant [61 x i8] c"androidx/media3/exoplayer/drm/DrmSession$DrmSessionException\00", align 1
@.str.1425 = private unnamed_addr constant [41 x i8] c"androidx/media3/exoplayer/drm/DrmSession\00", align 1
@.str.1426 = private unnamed_addr constant [70 x i8] c"androidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher\00", align 1
@.str.1427 = private unnamed_addr constant [54 x i8] c"androidx/media3/exoplayer/drm/DrmSessionEventListener\00", align 1
@.str.1428 = private unnamed_addr constant [68 x i8] c"androidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference\00", align 1
@.str.1429 = private unnamed_addr constant [48 x i8] c"androidx/media3/exoplayer/drm/DrmSessionManager\00", align 1
@.str.1430 = private unnamed_addr constant [56 x i8] c"androidx/media3/exoplayer/drm/DrmSessionManagerProvider\00", align 1
@.str.1431 = private unnamed_addr constant [59 x i8] c"androidx/media3/exoplayer/audio/AudioRendererEventListener\00", align 1
@.str.1432 = private unnamed_addr constant [59 x i8] c"androidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig\00", align 1
@.str.1433 = private unnamed_addr constant [55 x i8] c"androidx/media3/exoplayer/analytics/AnalyticsCollector\00", align 1
@.str.1434 = private unnamed_addr constant [61 x i8] c"androidx/media3/exoplayer/analytics/AnalyticsListener$Events\00", align 1
@.str.1435 = private unnamed_addr constant [64 x i8] c"androidx/media3/exoplayer/analytics/AnalyticsListener$EventTime\00", align 1
@.str.1436 = private unnamed_addr constant [54 x i8] c"androidx/media3/exoplayer/analytics/AnalyticsListener\00", align 1
@.str.1437 = private unnamed_addr constant [45 x i8] c"androidx/media3/exoplayer/analytics/PlayerId\00", align 1
@.str.1438 = private unnamed_addr constant [48 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderResultCallback\00", align 1
@.str.1439 = private unnamed_addr constant [42 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderCallback\00", align 1
@.str.1440 = private unnamed_addr constant [48 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderCallbackBase_1\00", align 1
@.str.1441 = private unnamed_addr constant [44 x i8] c"crc6488302ad6e9e4df1a/MauiAppCompatActivity\00", align 1
@.str.1442 = private unnamed_addr constant [38 x i8] c"crc6488302ad6e9e4df1a/MauiApplication\00", align 1
@.str.1443 = private unnamed_addr constant [65 x i8] c"crc6488302ad6e9e4df1a/MauiApplication_ActivityLifecycleCallbacks\00", align 1
@.str.1444 = private unnamed_addr constant [45 x i8] c"com/microsoft/maui/HybridJavaScriptInterface\00", align 1
@.str.1445 = private unnamed_addr constant [39 x i8] c"com/microsoft/maui/ImageLoaderCallback\00", align 1
@.str.1446 = private unnamed_addr constant [42 x i8] c"com/microsoft/maui/PlatformShadowDrawable\00", align 1
@.str.1447 = private unnamed_addr constant [33 x i8] c"com/microsoft/maui/MauiViewGroup\00", align 1
@.str.1448 = private unnamed_addr constant [45 x i8] c"com/microsoft/maui/PlatformAppCompatTextView\00", align 1
@.str.1449 = private unnamed_addr constant [44 x i8] c"com/microsoft/maui/PlatformContentViewGroup\00", align 1
@.str.1450 = private unnamed_addr constant [38 x i8] c"com/microsoft/maui/PlatformDispatcher\00", align 1
@.str.1451 = private unnamed_addr constant [36 x i8] c"com/microsoft/maui/PlatformFontSpan\00", align 1
@.str.1452 = private unnamed_addr constant [35 x i8] c"com/microsoft/maui/PlatformInterop\00", align 1
@.str.1453 = private unnamed_addr constant [42 x i8] c"com/microsoft/maui/PlatformLineHeightSpan\00", align 1
@.str.1454 = private unnamed_addr constant [34 x i8] c"com/microsoft/maui/PlatformLogger\00", align 1
@.str.1455 = private unnamed_addr constant [49 x i8] c"com/microsoft/maui/PlatformMauiAppCompatActivity\00", align 1
@.str.1456 = private unnamed_addr constant [37 x i8] c"com/microsoft/maui/PlatformPaintType\00", align 1
@.str.1457 = private unnamed_addr constant [39 x i8] c"com/microsoft/maui/PlatformWrapperView\00", align 1
@.str.1458 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper\00", align 1
@.str.1459 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/BorderDrawable\00", align 1
@.str.1460 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/ContainerView\00", align 1
@.str.1461 = private unnamed_addr constant [39 x i8] c"crc6452ffdc5b34af3a0f/ContentViewGroup\00", align 1
@.str.1462 = private unnamed_addr constant [58 x i8] c"crc6452ffdc5b34af3a0f/FragmentManagerExtensions_CallBacks\00", align 1
@.str.1463 = private unnamed_addr constant [38 x i8] c"crc6452ffdc5b34af3a0f/LayoutViewGroup\00", align 1
@.str.1464 = private unnamed_addr constant [49 x i8] c"crc6452ffdc5b34af3a0f/LocalizedDigitsKeyListener\00", align 1
@.str.1465 = private unnamed_addr constant [54 x i8] c"crc6452ffdc5b34af3a0f/MauiAccessibilityDelegateCompat\00", align 1
@.str.1466 = private unnamed_addr constant [44 x i8] c"crc6452ffdc5b34af3a0f/MauiAppCompatEditText\00", align 1
@.str.1467 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiBoxView\00", align 1
@.str.1468 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiDatePicker\00", align 1
@.str.1469 = private unnamed_addr constant [40 x i8] c"crc6452ffdc5b34af3a0f/MauiHybridWebView\00", align 1
@.str.1470 = private unnamed_addr constant [46 x i8] c"crc6452ffdc5b34af3a0f/MauiHybridWebViewClient\00", align 1
@.str.1471 = private unnamed_addr constant [40 x i8] c"crc6452ffdc5b34af3a0f/MauiLayerDrawable\00", align 1
@.str.1472 = private unnamed_addr constant [41 x i8] c"crc6452ffdc5b34af3a0f/MauiMaterialButton\00", align 1
@.str.1473 = private unnamed_addr constant [63 x i8] c"crc6452ffdc5b34af3a0f/MauiMaterialButton_MauiResizableDrawable\00", align 1
@.str.1474 = private unnamed_addr constant [38 x i8] c"crc6452ffdc5b34af3a0f/MauiPageControl\00", align 1
@.str.1475 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/MauiPageControl_TEditClickListener\00", align 1
@.str.1476 = private unnamed_addr constant [33 x i8] c"crc6452ffdc5b34af3a0f/MauiPicker\00", align 1
@.str.1477 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiPickerBase\00", align 1
@.str.1478 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiScrollView\00", align 1
@.str.1479 = private unnamed_addr constant [47 x i8] c"crc6452ffdc5b34af3a0f/MauiHorizontalScrollView\00", align 1
@.str.1480 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiSearchView\00", align 1
@.str.1481 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/MauiShapeableImageView\00", align 1
@.str.1482 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/MauiShapeView\00", align 1
@.str.1483 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiStepper\00", align 1
@.str.1484 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/MauiSwipeRefreshLayout\00", align 1
@.str.1485 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/MauiSwipeView\00", align 1
@.str.1486 = private unnamed_addr constant [35 x i8] c"crc6452ffdc5b34af3a0f/MauiTextView\00", align 1
@.str.1487 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiTimePicker\00", align 1
@.str.1488 = private unnamed_addr constant [42 x i8] c"crc6452ffdc5b34af3a0f/MauiWebChromeClient\00", align 1
@.str.1489 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiWebView\00", align 1
@.str.1490 = private unnamed_addr constant [40 x i8] c"crc6452ffdc5b34af3a0f/MauiWebViewClient\00", align 1
@.str.1491 = private unnamed_addr constant [44 x i8] c"microsoft/maui/platform/MauiNavHostFragment\00", align 1
@.str.1492 = private unnamed_addr constant [65 x i8] c"crc6452ffdc5b34af3a0f/NavigationRootManager_ElementBasedFragment\00", align 1
@.str.1493 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/NavigationViewFragment\00", align 1
@.str.1494 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/ScopedFragment\00", align 1
@.str.1495 = private unnamed_addr constant [55 x i8] c"crc6452ffdc5b34af3a0f/StackNavigationManager_Callbacks\00", align 1
@.str.1496 = private unnamed_addr constant [35 x i8] c"crc6452ffdc5b34af3a0f/ViewFragment\00", align 1
@.str.1497 = private unnamed_addr constant [48 x i8] c"crc6452ffdc5b34af3a0f/PlatformTouchGraphicsView\00", align 1
@.str.1498 = private unnamed_addr constant [43 x i8] c"crc6452ffdc5b34af3a0f/StepperHandlerHolder\00", align 1
@.str.1499 = private unnamed_addr constant [60 x i8] c"crc6452ffdc5b34af3a0f/StepperHandlerManager_StepperListener\00", align 1
@.str.1500 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/SwipeViewPager\00", align 1
@.str.1501 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/WebViewExtensions_JavascriptResult\00", align 1
@.str.1502 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/WrapperView\00", align 1
@.str.1503 = private unnamed_addr constant [56 x i8] c"crc64fcf28c0e24b4cc31/ButtonHandler_ButtonClickListener\00", align 1
@.str.1504 = private unnamed_addr constant [56 x i8] c"crc64fcf28c0e24b4cc31/ButtonHandler_ButtonTouchListener\00", align 1
@.str.1505 = private unnamed_addr constant [76 x i8] c"crc64fcf28c0e24b4cc31/HybridWebViewHandler_HybridWebViewJavaScriptInterface\00", align 1
@.str.1506 = private unnamed_addr constant [59 x i8] c"crc64fcf28c0e24b4cc31/SearchBarHandler_FocusChangeListener\00", align 1
@.str.1507 = private unnamed_addr constant [58 x i8] c"crc64fcf28c0e24b4cc31/SliderHandler_SeekBarChangeListener\00", align 1
@.str.1508 = private unnamed_addr constant [58 x i8] c"crc64fcf28c0e24b4cc31/SwitchHandler_CheckedChangeListener\00", align 1
@.str.1509 = private unnamed_addr constant [54 x i8] c"crc64fcf28c0e24b4cc31/ToolbarHandler_ProcessBackClick\00", align 1
@.str.1510 = private unnamed_addr constant [50 x i8] c"crc64b5e713d400f589b7/LinearGradientShaderFactory\00", align 1
@.str.1511 = private unnamed_addr constant [50 x i8] c"crc64b5e713d400f589b7/RadialGradientShaderFactory\00", align 1
@.str.1512 = private unnamed_addr constant [35 x i8] c"crc64b5e713d400f589b7/MauiDrawable\00", align 1
@.str.1513 = private unnamed_addr constant [59 x i8] c"crc64a096dc44ad241142/PlatformTicker_DurationScaleListener\00", align 1
@.str.1514 = private unnamed_addr constant [39 x i8] c"androidx/savedstate/SavedStateRegistry\00", align 1
@.str.1515 = private unnamed_addr constant [58 x i8] c"androidx/savedstate/SavedStateRegistry$SavedStateProvider\00", align 1
@.str.1516 = private unnamed_addr constant [58 x i8] c"crc64eaf685e082aef0e5/SKGLViewHandler_MauiSKGLTextureView\00", align 1
@.str.1517 = private unnamed_addr constant [36 x i8] c"crc648e35430423bd4943/GLTextureView\00", align 1
@.str.1518 = private unnamed_addr constant [46 x i8] c"crc648e35430423bd4943/GLTextureView_LogWriter\00", align 1
@.str.1519 = private unnamed_addr constant [35 x i8] c"crc648e35430423bd4943/SKCanvasView\00", align 1
@.str.1520 = private unnamed_addr constant [38 x i8] c"crc648e35430423bd4943/SKGLSurfaceView\00", align 1
@.str.1521 = private unnamed_addr constant [55 x i8] c"crc648e35430423bd4943/SKGLSurfaceView_InternalRenderer\00", align 1
@.str.1522 = private unnamed_addr constant [46 x i8] c"crc648e35430423bd4943/SKGLSurfaceViewRenderer\00", align 1
@.str.1523 = private unnamed_addr constant [38 x i8] c"crc648e35430423bd4943/SKGLTextureView\00", align 1
@.str.1524 = private unnamed_addr constant [55 x i8] c"crc648e35430423bd4943/SKGLTextureView_InternalRenderer\00", align 1
@.str.1525 = private unnamed_addr constant [46 x i8] c"crc648e35430423bd4943/SKGLTextureViewRenderer\00", align 1
@.str.1526 = private unnamed_addr constant [36 x i8] c"crc648e35430423bd4943/SKSurfaceView\00", align 1
@.str.1527 = private unnamed_addr constant [55 x i8] c"crc64f728827fec74e9c3/TapWindowTracker_GestureListener\00", align 1
@.str.1528 = private unnamed_addr constant [40 x i8] c"crc64f728827fec74e9c3/Toolbar_Container\00", align 1
@.str.1529 = private unnamed_addr constant [48 x i8] c"crc64338477404e88479c/ColorChangeRevealDrawable\00", align 1
@.str.1530 = private unnamed_addr constant [52 x i8] c"crc64338477404e88479c/ControlsAccessibilityDelegate\00", align 1
@.str.1531 = private unnamed_addr constant [48 x i8] c"crc64338477404e88479c/DragAndDropGestureHandler\00", align 1
@.str.1532 = private unnamed_addr constant [69 x i8] c"crc64338477404e88479c/DragAndDropGestureHandler_CustomLocalStateData\00", align 1
@.str.1533 = private unnamed_addr constant [66 x i8] c"crc64338477404e88479c/ToolbarExtensions_ToolbarTitleIconImageView\00", align 1
@.str.1534 = private unnamed_addr constant [40 x i8] c"crc64338477404e88479c/FragmentContainer\00", align 1
@.str.1535 = private unnamed_addr constant [46 x i8] c"crc64338477404e88479c/GenericAnimatorListener\00", align 1
@.str.1536 = private unnamed_addr constant [50 x i8] c"crc64338477404e88479c/GenericGlobalLayoutListener\00", align 1
@.str.1537 = private unnamed_addr constant [47 x i8] c"crc64338477404e88479c/GenericMenuClickListener\00", align 1
@.str.1538 = private unnamed_addr constant [45 x i8] c"crc64338477404e88479c/GradientStrokeDrawable\00", align 1
@.str.1539 = private unnamed_addr constant [43 x i8] c"crc64338477404e88479c/InnerGestureListener\00", align 1
@.str.1540 = private unnamed_addr constant [41 x i8] c"crc64338477404e88479c/InnerScaleListener\00", align 1
@.str.1541 = private unnamed_addr constant [36 x i8] c"crc64338477404e88479c/MauiViewPager\00", align 1
@.str.1542 = private unnamed_addr constant [54 x i8] c"crc64338477404e88479c/MultiPageFragmentStateAdapter_1\00", align 1
@.str.1543 = private unnamed_addr constant [44 x i8] c"crc64338477404e88479c/PointerGestureHandler\00", align 1
@.str.1544 = private unnamed_addr constant [47 x i8] c"crc64338477404e88479c/TapAndPanGestureDetector\00", align 1
@.str.1545 = private unnamed_addr constant [59 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalFragment\00", align 1
@.str.1546 = private unnamed_addr constant [81 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalFragment_CustomComponentDialog\00", align 1
@.str.1547 = private unnamed_addr constant [90 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalFragment_CustomComponentDialog_CallBack\00", align 1
@.str.1548 = private unnamed_addr constant [36 x i8] c"crc640ec207abc449b2ca/ContainerView\00", align 1
@.str.1549 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/CustomFrameLayout\00", align 1
@.str.1550 = private unnamed_addr constant [43 x i8] c"crc640ec207abc449b2ca/ShellContentFragment\00", align 1
@.str.1551 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/ShellFlyoutLayout\00", align 1
@.str.1552 = private unnamed_addr constant [49 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter\00", align 1
@.str.1553 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ShellLinearLayout\00", align 1
@.str.1554 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ElementViewHolder\00", align 1
@.str.1555 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRenderer\00", align 1
@.str.1556 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer\00", align 1
@.str.1557 = private unnamed_addr constant [74 x i8] c"crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_HeaderContainer\00", align 1
@.str.1558 = private unnamed_addr constant [44 x i8] c"crc640ec207abc449b2ca/RecyclerViewContainer\00", align 1
@.str.1559 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ScrollLayoutManager\00", align 1
@.str.1560 = private unnamed_addr constant [45 x i8] c"crc640ec207abc449b2ca/ShellFragmentContainer\00", align 1
@.str.1561 = private unnamed_addr constant [48 x i8] c"crc640ec207abc449b2ca/ShellFragmentStateAdapter\00", align 1
@.str.1562 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/ShellItemRenderer\00", align 1
@.str.1563 = private unnamed_addr constant [44 x i8] c"crc640ec207abc449b2ca/ShellItemRendererBase\00", align 1
@.str.1564 = private unnamed_addr constant [41 x i8] c"crc640ec207abc449b2ca/ShellPageContainer\00", align 1
@.str.1565 = private unnamed_addr constant [38 x i8] c"crc640ec207abc449b2ca/ShellSearchView\00", align 1
@.str.1566 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellSearchView_ClipDrawableWrapper\00", align 1
@.str.1567 = private unnamed_addr constant [45 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter\00", align 1
@.str.1568 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter_CustomFilter\00", align 1
@.str.1569 = private unnamed_addr constant [59 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter_ObjectWrapper\00", align 1
@.str.1570 = private unnamed_addr constant [43 x i8] c"crc640ec207abc449b2ca/ShellSectionRenderer\00", align 1
@.str.1571 = private unnamed_addr constant [64 x i8] c"crc640ec207abc449b2ca/ShellSectionRenderer_ViewPagerPageChanged\00", align 1
@.str.1572 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ShellToolbarTracker\00", align 1
@.str.1573 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellToolbarTracker_FlyoutIconDrawerDrawable\00", align 1
@.str.1574 = private unnamed_addr constant [49 x i8] c"crc649ff77a65592e7d55/TabbedPageManager_TempView\00", align 1
@.str.1575 = private unnamed_addr constant [50 x i8] c"crc649ff77a65592e7d55/TabbedPageManager_Listeners\00", align 1
@.str.1576 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/CarouselViewAdapter_2\00", align 1
@.str.1577 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/EmptyViewAdapter\00", align 1
@.str.1578 = private unnamed_addr constant [50 x i8] c"crc645d80431ce5f73f11/GroupableItemsViewAdapter_2\00", align 1
@.str.1579 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/ItemsViewAdapter_2\00", align 1
@.str.1580 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/ReorderableItemsViewAdapter_2\00", align 1
@.str.1581 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/SelectableItemsViewAdapter_2\00", align 1
@.str.1582 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/StructuredItemsViewAdapter_2\00", align 1
@.str.1583 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/CarouselSpacingItemDecoration\00", align 1
@.str.1584 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/CarouselViewOnScrollListener\00", align 1
@.str.1585 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/DataChangeObserver\00", align 1
@.str.1586 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/GridLayoutSpanSizeLookup\00", align 1
@.str.1587 = private unnamed_addr constant [38 x i8] c"crc645d80431ce5f73f11/ItemContentView\00", align 1
@.str.1588 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/MauiCarouselRecyclerView\00", align 1
@.str.1589 = private unnamed_addr constant [82 x i8] c"crc645d80431ce5f73f11/MauiCarouselRecyclerView_CarouselViewOnGlobalLayoutListener\00", align 1
@.str.1590 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/MauiRecyclerView_3\00", align 1
@.str.1591 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/PositionalSmoothScroller\00", align 1
@.str.1592 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/RecyclerViewScrollListener_2\00", align 1
@.str.1593 = private unnamed_addr constant [35 x i8] c"crc645d80431ce5f73f11/ScrollHelper\00", align 1
@.str.1594 = private unnamed_addr constant [43 x i8] c"crc645d80431ce5f73f11/SelectableViewHolder\00", align 1
@.str.1595 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/SimpleItemTouchHelperCallback\00", align 1
@.str.1596 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/SimpleViewHolder\00", align 1
@.str.1597 = private unnamed_addr constant [43 x i8] c"crc645d80431ce5f73f11/SizedItemContentView\00", align 1
@.str.1598 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/CenterSnapHelper\00", align 1
@.str.1599 = private unnamed_addr constant [37 x i8] c"crc645d80431ce5f73f11/EdgeSnapHelper\00", align 1
@.str.1600 = private unnamed_addr constant [42 x i8] c"crc645d80431ce5f73f11/EndSingleSnapHelper\00", align 1
@.str.1601 = private unnamed_addr constant [36 x i8] c"crc645d80431ce5f73f11/EndSnapHelper\00", align 1
@.str.1602 = private unnamed_addr constant [42 x i8] c"crc645d80431ce5f73f11/NongreedySnapHelper\00", align 1
@.str.1603 = private unnamed_addr constant [64 x i8] c"crc645d80431ce5f73f11/NongreedySnapHelper_InitialScrollListener\00", align 1
@.str.1604 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/SingleSnapHelper\00", align 1
@.str.1605 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/StartSingleSnapHelper\00", align 1
@.str.1606 = private unnamed_addr constant [38 x i8] c"crc645d80431ce5f73f11/StartSnapHelper\00", align 1
@.str.1607 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/SpacingItemDecoration\00", align 1
@.str.1608 = private unnamed_addr constant [46 x i8] c"crc645d80431ce5f73f11/TemplatedItemViewHolder\00", align 1
@.str.1609 = private unnamed_addr constant [37 x i8] c"crc645d80431ce5f73f11/TextViewHolder\00", align 1
@.str.1610 = private unnamed_addr constant [36 x i8] c"crc64e1fb321c08285b90/FrameRenderer\00", align 1
@.str.1611 = private unnamed_addr constant [35 x i8] c"crc64e1fb321c08285b90/ViewRenderer\00", align 1
@.str.1612 = private unnamed_addr constant [37 x i8] c"crc64e1fb321c08285b90/ViewRenderer_2\00", align 1
@.str.1613 = private unnamed_addr constant [46 x i8] c"crc64e1fb321c08285b90/VisualElementRenderer_1\00", align 1
@.str.1614 = private unnamed_addr constant [35 x i8] c"crc64e1fb321c08285b90/BaseCellView\00", align 1
@.str.1615 = private unnamed_addr constant [34 x i8] c"crc64e1fb321c08285b90/CellAdapter\00", align 1
@.str.1616 = private unnamed_addr constant [50 x i8] c"crc64e1fb321c08285b90/CellRenderer_RendererHolder\00", align 1
@.str.1617 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/ConditionalFocusLayout\00", align 1
@.str.1618 = private unnamed_addr constant [40 x i8] c"crc64e1fb321c08285b90/EntryCellEditText\00", align 1
@.str.1619 = private unnamed_addr constant [36 x i8] c"crc64e1fb321c08285b90/EntryCellView\00", align 1
@.str.1620 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/GroupedListViewAdapter\00", align 1
@.str.1621 = private unnamed_addr constant [38 x i8] c"crc64e1fb321c08285b90/ListViewAdapter\00", align 1
@.str.1622 = private unnamed_addr constant [39 x i8] c"crc64e1fb321c08285b90/ListViewRenderer\00", align 1
@.str.1623 = private unnamed_addr constant [49 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_Container\00", align 1
@.str.1624 = private unnamed_addr constant [82 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_SwipeRefreshLayoutWithFixedNestedScrolling\00", align 1
@.str.1625 = private unnamed_addr constant [74 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener\00", align 1
@.str.1626 = private unnamed_addr constant [62 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_ListViewScrollDetector\00", align 1
@.str.1627 = private unnamed_addr constant [37 x i8] c"crc64e1fb321c08285b90/SwitchCellView\00", align 1
@.str.1628 = private unnamed_addr constant [52 x i8] c"crc64e1fb321c08285b90/TextCellRenderer_TextCellView\00", align 1
@.str.1629 = private unnamed_addr constant [57 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer\00", align 1
@.str.1630 = private unnamed_addr constant [76 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_TapGestureListener\00", align 1
@.str.1631 = private unnamed_addr constant [82 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_LongPressGestureListener\00", align 1
@.str.1632 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/TableViewModelRenderer\00", align 1
@.str.1633 = private unnamed_addr constant [40 x i8] c"crc64e1fb321c08285b90/TableViewRenderer\00", align 1
@.str.1634 = private unnamed_addr constant [34 x i8] c"androidx/activity/BackEventCompat\00", align 1
@.str.1635 = private unnamed_addr constant [36 x i8] c"androidx/activity/ComponentActivity\00", align 1
@.str.1636 = private unnamed_addr constant [34 x i8] c"androidx/activity/ComponentDialog\00", align 1
@.str.1637 = private unnamed_addr constant [37 x i8] c"androidx/activity/FullyDrawnReporter\00", align 1
@.str.1638 = private unnamed_addr constant [40 x i8] c"androidx/activity/OnBackPressedCallback\00", align 1
@.str.1639 = private unnamed_addr constant [42 x i8] c"androidx/activity/OnBackPressedDispatcher\00", align 1
@.str.1640 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultLauncher\00", align 1
@.str.1641 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultRegistry\00", align 1
@.str.1642 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultCallback\00", align 1
@.str.1643 = private unnamed_addr constant [57 x i8] c"androidx/activity/result/contract/ActivityResultContract\00", align 1
@.str.1644 = private unnamed_addr constant [75 x i8] c"androidx/activity/result/contract/ActivityResultContract$SynchronousResult\00", align 1
@.str.1645 = private unnamed_addr constant [58 x i8] c"androidx/activity/contextaware/OnContextAvailableListener\00", align 1
@.str.1646 = private unnamed_addr constant [74 x i8] c"mono/androidx/activity/contextaware/OnContextAvailableListenerImplementor\00", align 1
@.str.1647 = private unnamed_addr constant [42 x i8] c"androidx/media3/ui/AspectRatioFrameLayout\00", align 1
@.str.1648 = private unnamed_addr constant [62 x i8] c"androidx/media3/ui/AspectRatioFrameLayout$AspectRatioListener\00", align 1
@.str.1649 = private unnamed_addr constant [78 x i8] c"mono/androidx/media3/ui/AspectRatioFrameLayout_AspectRatioListenerImplementor\00", align 1
@.str.1650 = private unnamed_addr constant [38 x i8] c"androidx/media3/ui/CaptionStyleCompat\00", align 1
@.str.1651 = private unnamed_addr constant [37 x i8] c"androidx/media3/ui/PlayerControlView\00", align 1
@.str.1652 = private unnamed_addr constant [69 x i8] c"androidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener\00", align 1
@.str.1653 = private unnamed_addr constant [85 x i8] c"mono/androidx/media3/ui/PlayerControlView_OnFullScreenModeChangedListenerImplementor\00", align 1
@.str.1654 = private unnamed_addr constant [60 x i8] c"androidx/media3/ui/PlayerControlView$ProgressUpdateListener\00", align 1
@.str.1655 = private unnamed_addr constant [76 x i8] c"mono/androidx/media3/ui/PlayerControlView_ProgressUpdateListenerImplementor\00", align 1
@.str.1656 = private unnamed_addr constant [56 x i8] c"androidx/media3/ui/PlayerControlView$VisibilityListener\00", align 1
@.str.1657 = private unnamed_addr constant [72 x i8] c"mono/androidx/media3/ui/PlayerControlView_VisibilityListenerImplementor\00", align 1
@.str.1658 = private unnamed_addr constant [45 x i8] c"androidx/media3/ui/PlayerNotificationManager\00", align 1
@.str.1659 = private unnamed_addr constant [60 x i8] c"androidx/media3/ui/PlayerNotificationManager$BitmapCallback\00", align 1
@.str.1660 = private unnamed_addr constant [53 x i8] c"androidx/media3/ui/PlayerNotificationManager$Builder\00", align 1
@.str.1661 = private unnamed_addr constant [66 x i8] c"androidx/media3/ui/PlayerNotificationManager$CustomActionReceiver\00", align 1
@.str.1662 = private unnamed_addr constant [69 x i8] c"androidx/media3/ui/PlayerNotificationManager$MediaDescriptionAdapter\00", align 1
@.str.1663 = private unnamed_addr constant [66 x i8] c"androidx/media3/ui/PlayerNotificationManager$NotificationListener\00", align 1
@.str.1664 = private unnamed_addr constant [30 x i8] c"androidx/media3/ui/PlayerView\00", align 1
@.str.1665 = private unnamed_addr constant [59 x i8] c"androidx/media3/ui/PlayerView$ControllerVisibilityListener\00", align 1
@.str.1666 = private unnamed_addr constant [75 x i8] c"mono/androidx/media3/ui/PlayerView_ControllerVisibilityListenerImplementor\00", align 1
@.str.1667 = private unnamed_addr constant [60 x i8] c"androidx/media3/ui/PlayerView$FullscreenButtonClickListener\00", align 1
@.str.1668 = private unnamed_addr constant [76 x i8] c"mono/androidx/media3/ui/PlayerView_FullscreenButtonClickListenerImplementor\00", align 1
@.str.1669 = private unnamed_addr constant [32 x i8] c"androidx/media3/ui/SubtitleView\00", align 1
@.str.1670 = private unnamed_addr constant [48 x i8] c"androidx/camera/lifecycle/ProcessCameraProvider\00", align 1
@.str.1671 = private unnamed_addr constant [38 x i8] c"androidx/viewpager2/widget/ViewPager2\00", align 1
@.str.1672 = private unnamed_addr constant [59 x i8] c"androidx/viewpager2/widget/ViewPager2$OnPageChangeCallback\00", align 1
@.str.1673 = private unnamed_addr constant [54 x i8] c"androidx/viewpager2/widget/ViewPager2$PageTransformer\00", align 1
@.str.1674 = private unnamed_addr constant [49 x i8] c"androidx/viewpager2/adapter/FragmentStateAdapter\00", align 1
@.str.1675 = private unnamed_addr constant [77 x i8] c"androidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback\00", align 1
@.str.1676 = private unnamed_addr constant [97 x i8] c"androidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener\00", align 1
@.str.1677 = private unnamed_addr constant [47 x i8] c"androidx/viewpager2/adapter/FragmentViewHolder\00", align 1
@.str.1678 = private unnamed_addr constant [38 x i8] c"androidx/collection/SparseArrayCompat\00", align 1
@.str.1679 = private unnamed_addr constant [37 x i8] c"androidx/media/AudioAttributesCompat\00", align 1
@.str.1680 = private unnamed_addr constant [35 x i8] c"androidx/media/MediaSessionManager\00", align 1
@.str.1681 = private unnamed_addr constant [50 x i8] c"androidx/media/MediaSessionManager$RemoteUserInfo\00", align 1
@.str.1682 = private unnamed_addr constant [36 x i8] c"androidx/media/VolumeProviderCompat\00", align 1
@.str.1683 = private unnamed_addr constant [45 x i8] c"androidx/media/VolumeProviderCompat$Callback\00", align 1
@.str.1684 = private unnamed_addr constant [48 x i8] c"android/support/v4/media/MediaDescriptionCompat\00", align 1
@.str.1685 = private unnamed_addr constant [45 x i8] c"android/support/v4/media/MediaMetadataCompat\00", align 1
@.str.1686 = private unnamed_addr constant [38 x i8] c"android/support/v4/media/RatingCompat\00", align 1
@.str.1687 = private unnamed_addr constant [58 x i8] c"android/support/v4/media/session/IMediaControllerCallback\00", align 1
@.str.1688 = private unnamed_addr constant [47 x i8] c"android/support/v4/media/session/IMediaSession\00", align 1
@.str.1689 = private unnamed_addr constant [55 x i8] c"android/support/v4/media/session/MediaControllerCompat\00", align 1
@.str.1690 = private unnamed_addr constant [64 x i8] c"android/support/v4/media/session/MediaControllerCompat$Callback\00", align 1
@.str.1691 = private unnamed_addr constant [68 x i8] c"android/support/v4/media/session/MediaControllerCompat$PlaybackInfo\00", align 1
@.str.1692 = private unnamed_addr constant [73 x i8] c"android/support/v4/media/session/MediaControllerCompat$TransportControls\00", align 1
@.str.1693 = private unnamed_addr constant [52 x i8] c"android/support/v4/media/session/MediaSessionCompat\00", align 1
@.str.1694 = private unnamed_addr constant [61 x i8] c"android/support/v4/media/session/MediaSessionCompat$Callback\00", align 1
@.str.1695 = private unnamed_addr constant [75 x i8] c"android/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener\00", align 1
@.str.1696 = private unnamed_addr constant [91 x i8] c"mono/android/support/v4/media/session/MediaSessionCompat_OnActiveChangeListenerImplementor\00", align 1
@.str.1697 = private unnamed_addr constant [62 x i8] c"android/support/v4/media/session/MediaSessionCompat$QueueItem\00", align 1
@.str.1698 = private unnamed_addr constant [73 x i8] c"android/support/v4/media/session/MediaSessionCompat$RegistrationCallback\00", align 1
@.str.1699 = private unnamed_addr constant [58 x i8] c"android/support/v4/media/session/MediaSessionCompat$Token\00", align 1
@.str.1700 = private unnamed_addr constant [54 x i8] c"android/support/v4/media/session/ParcelableVolumeInfo\00", align 1
@.str.1701 = private unnamed_addr constant [53 x i8] c"android/support/v4/media/session/PlaybackStateCompat\00", align 1
@.str.1702 = private unnamed_addr constant [66 x i8] c"android/support/v4/media/session/PlaybackStateCompat$CustomAction\00", align 1
@.str.1703 = private unnamed_addr constant [54 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout\00", align 1
@.str.1704 = private unnamed_addr constant [78 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback\00", align 1
@.str.1705 = private unnamed_addr constant [72 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener\00", align 1
@.str.1706 = private unnamed_addr constant [88 x i8] c"mono/androidx/swiperefreshlayout/widget/SwipeRefreshLayout_OnRefreshListenerImplementor\00", align 1
@.str.1707 = private unnamed_addr constant [50 x i8] c"com/google/android/material/shape/CornerTreatment\00", align 1
@.str.1708 = private unnamed_addr constant [48 x i8] c"com/google/android/material/shape/EdgeTreatment\00", align 1
@.str.1709 = private unnamed_addr constant [45 x i8] c"com/google/android/material/shape/CornerSize\00", align 1
@.str.1710 = private unnamed_addr constant [56 x i8] c"com/google/android/material/shape/MaterialShapeDrawable\00", align 1
@.str.1711 = private unnamed_addr constant [83 x i8] c"com/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState\00", align 1
@.str.1712 = private unnamed_addr constant [55 x i8] c"com/google/android/material/shape/ShapeAppearanceModel\00", align 1
@.str.1713 = private unnamed_addr constant [63 x i8] c"com/google/android/material/shape/ShapeAppearanceModel$Builder\00", align 1
@.str.1714 = private unnamed_addr constant [79 x i8] c"com/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator\00", align 1
@.str.1715 = private unnamed_addr constant [44 x i8] c"com/google/android/material/shape/ShapePath\00", align 1
@.str.1716 = private unnamed_addr constant [49 x i8] c"com/google/android/material/shape/ShapePathModel\00", align 1
@.str.1717 = private unnamed_addr constant [57 x i8] c"com/google/android/material/imageview/ShapeableImageView\00", align 1
@.str.1718 = private unnamed_addr constant [63 x i8] c"com/google/android/material/elevation/ElevationOverlayProvider\00", align 1
@.str.1719 = private unnamed_addr constant [54 x i8] c"com/google/android/material/checkbox/MaterialCheckBox\00", align 1
@.str.1720 = private unnamed_addr constant [84 x i8] c"com/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener\00", align 1
@.str.1721 = private unnamed_addr constant [100 x i8] c"mono/com/google/android/material/checkbox/MaterialCheckBox_OnCheckedStateChangedListenerImplementor\00", align 1
@.str.1722 = private unnamed_addr constant [77 x i8] c"com/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener\00", align 1
@.str.1723 = private unnamed_addr constant [93 x i8] c"mono/com/google/android/material/checkbox/MaterialCheckBox_OnErrorChangedListenerImplementor\00", align 1
@.str.1724 = private unnamed_addr constant [50 x i8] c"com/google/android/material/button/MaterialButton\00", align 1
@.str.1725 = private unnamed_addr constant [74 x i8] c"com/google/android/material/button/MaterialButton$OnCheckedChangeListener\00", align 1
@.str.1726 = private unnamed_addr constant [90 x i8] c"mono/com/google/android/material/button/MaterialButton_OnCheckedChangeListenerImplementor\00", align 1
@.str.1727 = private unnamed_addr constant [60 x i8] c"com/google/android/material/bottomsheet/BottomSheetBehavior\00", align 1
@.str.1728 = private unnamed_addr constant [80 x i8] c"com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback\00", align 1
@.str.1729 = private unnamed_addr constant [58 x i8] c"com/google/android/material/bottomsheet/BottomSheetDialog\00", align 1
@.str.1730 = private unnamed_addr constant [48 x i8] c"com/google/android/material/badge/BadgeDrawable\00", align 1
@.str.1731 = private unnamed_addr constant [57 x i8] c"com/google/android/material/navigation/NavigationBarView\00", align 1
@.str.1732 = private unnamed_addr constant [82 x i8] c"com/google/android/material/navigation/NavigationBarView$OnItemReselectedListener\00", align 1
@.str.1733 = private unnamed_addr constant [98 x i8] c"mono/com/google/android/material/navigation/NavigationBarView_OnItemReselectedListenerImplementor\00", align 1
@.str.1734 = private unnamed_addr constant [80 x i8] c"com/google/android/material/navigation/NavigationBarView$OnItemSelectedListener\00", align 1
@.str.1735 = private unnamed_addr constant [96 x i8] c"mono/com/google/android/material/navigation/NavigationBarView_OnItemSelectedListenerImplementor\00", align 1
@.str.1736 = private unnamed_addr constant [61 x i8] c"com/google/android/material/navigation/NavigationBarItemView\00", align 1
@.str.1737 = private unnamed_addr constant [61 x i8] c"com/google/android/material/navigation/NavigationBarMenuView\00", align 1
@.str.1738 = private unnamed_addr constant [62 x i8] c"com/google/android/material/navigation/NavigationBarPresenter\00", align 1
@.str.1739 = private unnamed_addr constant [54 x i8] c"com/google/android/material/navigation/NavigationView\00", align 1
@.str.1740 = private unnamed_addr constant [87 x i8] c"com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener\00", align 1
@.str.1741 = private unnamed_addr constant [103 x i8] c"mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor\00", align 1
@.str.1742 = private unnamed_addr constant [43 x i8] c"com/google/android/material/tabs/TabLayout\00", align 1
@.str.1743 = private unnamed_addr constant [51 x i8] c"com/google/android/material/tabs/TabLayout$TabView\00", align 1
@.str.1744 = private unnamed_addr constant [69 x i8] c"com/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener\00", align 1
@.str.1745 = private unnamed_addr constant [85 x i8] c"mono/com/google/android/material/tabs/TabLayout_BaseOnTabSelectedListenerImplementor\00", align 1
@.str.1746 = private unnamed_addr constant [65 x i8] c"com/google/android/material/tabs/TabLayout$OnTabSelectedListener\00", align 1
@.str.1747 = private unnamed_addr constant [47 x i8] c"com/google/android/material/tabs/TabLayout$Tab\00", align 1
@.str.1748 = private unnamed_addr constant [51 x i8] c"com/google/android/material/tabs/TabLayoutMediator\00", align 1
@.str.1749 = private unnamed_addr constant [76 x i8] c"com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy\00", align 1
@.str.1750 = private unnamed_addr constant [67 x i8] c"com/google/android/material/internal/StaticLayoutBuilderConfigurer\00", align 1
@.str.1751 = private unnamed_addr constant [60 x i8] c"com/google/android/material/internal/ScrimInsetsFrameLayout\00", align 1
@.str.1752 = private unnamed_addr constant [70 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationItemView\00", align 1
@.str.1753 = private unnamed_addr constant [70 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationMenuView\00", align 1
@.str.1754 = private unnamed_addr constant [66 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView\00", align 1
@.str.1755 = private unnamed_addr constant [101 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener\00", align 1
@.str.1756 = private unnamed_addr constant [99 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener\00", align 1
@.str.1757 = private unnamed_addr constant [59 x i8] c"com/google/android/material/appbar/CollapsingToolbarLayout\00", align 1
@.str.1758 = private unnamed_addr constant [89 x i8] c"com/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer\00", align 1
@.str.1759 = private unnamed_addr constant [48 x i8] c"com/google/android/material/appbar/AppBarLayout\00", align 1
@.str.1760 = private unnamed_addr constant [61 x i8] c"com/google/android/material/appbar/AppBarLayout$BaseBehavior\00", align 1
@.str.1761 = private unnamed_addr constant [78 x i8] c"com/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback\00", align 1
@.str.1762 = private unnamed_addr constant [57 x i8] c"com/google/android/material/appbar/AppBarLayout$Behavior\00", align 1
@.str.1763 = private unnamed_addr constant [66 x i8] c"com/google/android/material/appbar/AppBarLayout$ChildScrollEffect\00", align 1
@.str.1764 = private unnamed_addr constant [61 x i8] c"com/google/android/material/appbar/AppBarLayout$LayoutParams\00", align 1
@.str.1765 = private unnamed_addr constant [69 x i8] c"com/google/android/material/appbar/AppBarLayout$LiftOnScrollListener\00", align 1
@.str.1766 = private unnamed_addr constant [85 x i8] c"mono/com/google/android/material/appbar/AppBarLayout_LiftOnScrollListenerImplementor\00", align 1
@.str.1767 = private unnamed_addr constant [72 x i8] c"com/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener\00", align 1
@.str.1768 = private unnamed_addr constant [88 x i8] c"mono/com/google/android/material/appbar/AppBarLayout_OnOffsetChangedListenerImplementor\00", align 1
@.str.1769 = private unnamed_addr constant [70 x i8] c"com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior\00", align 1
@.str.1770 = private unnamed_addr constant [50 x i8] c"com/google/android/material/appbar/HeaderBehavior\00", align 1
@.str.1771 = private unnamed_addr constant [63 x i8] c"com/google/android/material/appbar/HeaderScrollingViewBehavior\00", align 1
@.str.1772 = private unnamed_addr constant [51 x i8] c"com/google/android/material/appbar/MaterialToolbar\00", align 1
@.str.1773 = private unnamed_addr constant [54 x i8] c"com/google/android/material/appbar/ViewOffsetBehavior\00", align 1
@.str.1774 = private unnamed_addr constant [31 x i8] c"androidx/loader/content/Loader\00", align 1
@.str.1775 = private unnamed_addr constant [54 x i8] c"androidx/loader/content/Loader$OnLoadCanceledListener\00", align 1
@.str.1776 = private unnamed_addr constant [54 x i8] c"androidx/loader/content/Loader$OnLoadCompleteListener\00", align 1
@.str.1777 = private unnamed_addr constant [34 x i8] c"androidx/loader/app/LoaderManager\00", align 1
@.str.1778 = private unnamed_addr constant [50 x i8] c"androidx/loader/app/LoaderManager$LoaderCallbacks\00", align 1
@.str.1779 = private unnamed_addr constant [31 x i8] c"androidx/media3/decoder/Buffer\00", align 1
@.str.1780 = private unnamed_addr constant [35 x i8] c"androidx/media3/decoder/CryptoInfo\00", align 1
@.str.1781 = private unnamed_addr constant [43 x i8] c"androidx/media3/decoder/DecoderInputBuffer\00", align 1
@.str.1782 = private unnamed_addr constant [37 x i8] c"androidx/media3/decoder/CryptoConfig\00", align 1

;TypeMapModule
@.TypeMapModule.0_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.AndroidX.Navigation.Runtime\00", align 1
@.TypeMapModule.1_assembly_name = private unnamed_addr constant [25 x i8] c"Xamarin.AndroidX.Browser\00", align 1
@.TypeMapModule.2_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.Fragment\00", align 1
@.TypeMapModule.3_assembly_name = private unnamed_addr constant [27 x i8] c"Xamarin.AndroidX.ViewPager\00", align 1
@.TypeMapModule.4_assembly_name = private unnamed_addr constant [29 x i8] c"CommunityToolkit.Maui.Camera\00", align 1
@.TypeMapModule.5_assembly_name = private unnamed_addr constant [45 x i8] c"Xamarin.AndroidX.Lifecycle.ViewModel.Android\00", align 1
@.TypeMapModule.6_assembly_name = private unnamed_addr constant [30 x i8] c"Xamarin.AndroidX.RecyclerView\00", align 1
@.TypeMapModule.7_assembly_name = private unnamed_addr constant [46 x i8] c"Xamarin.AndroidX.AppCompat.AppCompatResources\00", align 1
@.TypeMapModule.8_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.AndroidX.Media3.Session\00", align 1
@.TypeMapModule.9_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.AndroidX.Camera.Camera2\00", align 1
@.TypeMapModule.10_assembly_name = private unnamed_addr constant [24 x i8] c"Microsoft.Maui.Graphics\00", align 1
@.TypeMapModule.11_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.KotlinX.Coroutines.Core.Jvm\00", align 1
@.TypeMapModule.12_assembly_name = private unnamed_addr constant [21 x i8] c"Syncfusion.Maui.Core\00", align 1
@.TypeMapModule.13_assembly_name = private unnamed_addr constant [37 x i8] c"Xamarin.AndroidX.Navigation.Fragment\00", align 1
@.TypeMapModule.14_assembly_name = private unnamed_addr constant [26 x i8] c"Microsoft.Maui.Essentials\00", align 1
@.TypeMapModule.15_assembly_name = private unnamed_addr constant [35 x i8] c"Xamarin.AndroidX.Camera.Extensions\00", align 1
@.TypeMapModule.16_assembly_name = private unnamed_addr constant [38 x i8] c"Xamarin.AndroidX.Lifecycle.Common.Jvm\00", align 1
@.TypeMapModule.17_assembly_name = private unnamed_addr constant [22 x i8] c"Xamarin.Kotlin.StdLib\00", align 1
@.TypeMapModule.18_assembly_name = private unnamed_addr constant [35 x i8] c"Xamarin.AndroidX.Media3.DataSource\00", align 1
@.TypeMapModule.19_assembly_name = private unnamed_addr constant [37 x i8] c"Xamarin.AndroidX.VersionedParcelable\00", align 1
@.TypeMapModule.20_assembly_name = private unnamed_addr constant [41 x i8] c"Xamarin.AndroidX.Lifecycle.LiveData.Core\00", align 1
@.TypeMapModule.21_assembly_name = private unnamed_addr constant [30 x i8] c"Xamarin.AndroidX.DrawerLayout\00", align 1
@.TypeMapModule.22_assembly_name = private unnamed_addr constant [27 x i8] c"CommunityToolkit.Maui.Core\00", align 1
@.TypeMapModule.23_assembly_name = private unnamed_addr constant [31 x i8] c"Xamarin.AndroidX.Navigation.UI\00", align 1
@.TypeMapModule.24_assembly_name = private unnamed_addr constant [22 x i8] c"Xamarin.AndroidX.Core\00", align 1
@.TypeMapModule.25_assembly_name = private unnamed_addr constant [35 x i8] c"CommunityToolkit.Maui.MediaElement\00", align 1
@.TypeMapModule.26_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.CardView\00", align 1
@.TypeMapModule.27_assembly_name = private unnamed_addr constant [29 x i8] c"Xamarin.AndroidX.Camera.View\00", align 1
@.TypeMapModule.28_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.CustomView\00", align 1
@.TypeMapModule.29_assembly_name = private unnamed_addr constant [30 x i8] c"Xamarin.AndroidX.Camera.Video\00", align 1
@.TypeMapModule.30_assembly_name = private unnamed_addr constant [35 x i8] c"Xamarin.AndroidX.CoordinatorLayout\00", align 1
@.TypeMapModule.31_assembly_name = private unnamed_addr constant [31 x i8] c"Xamarin.AndroidX.Media3.Common\00", align 1
@.TypeMapModule.32_assembly_name = private unnamed_addr constant [29 x i8] c"Xamarin.AndroidX.Camera.Core\00", align 1
@.TypeMapModule.33_assembly_name = private unnamed_addr constant [38 x i8] c"Xamarin.Google.Guava.ListenableFuture\00", align 1
@.TypeMapModule.34_assembly_name = private unnamed_addr constant [35 x i8] c"Xamarin.AndroidX.Navigation.Common\00", align 1
@.TypeMapModule.35_assembly_name = private unnamed_addr constant [4 x i8] c"Gym\00", align 1
@.TypeMapModule.36_assembly_name = private unnamed_addr constant [39 x i8] c"Xamarin.KotlinX.Serialization.Core.Jvm\00", align 1
@.TypeMapModule.37_assembly_name = private unnamed_addr constant [27 x i8] c"Xamarin.AndroidX.AppCompat\00", align 1
@.TypeMapModule.38_assembly_name = private unnamed_addr constant [31 x i8] c"Xamarin.AndroidX.CursorAdapter\00", align 1
@.TypeMapModule.39_assembly_name = private unnamed_addr constant [34 x i8] c"Xamarin.AndroidX.Media3.Extractor\00", align 1
@.TypeMapModule.40_assembly_name = private unnamed_addr constant [13 x i8] c"Mono.Android\00", align 1
@.TypeMapModule.41_assembly_name = private unnamed_addr constant [34 x i8] c"Xamarin.AndroidX.Media3.ExoPlayer\00", align 1
@.TypeMapModule.42_assembly_name = private unnamed_addr constant [15 x i8] c"Microsoft.Maui\00", align 1
@.TypeMapModule.43_assembly_name = private unnamed_addr constant [47 x i8] c"Xamarin.AndroidX.SavedState.SavedState.Android\00", align 1
@.TypeMapModule.44_assembly_name = private unnamed_addr constant [26 x i8] c"SkiaSharp.Views.Maui.Core\00", align 1
@.TypeMapModule.45_assembly_name = private unnamed_addr constant [24 x i8] c"SkiaSharp.Views.Android\00", align 1
@.TypeMapModule.46_assembly_name = private unnamed_addr constant [24 x i8] c"Microsoft.Maui.Controls\00", align 1
@.TypeMapModule.47_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.Activity\00", align 1
@.TypeMapModule.48_assembly_name = private unnamed_addr constant [27 x i8] c"Xamarin.AndroidX.Media3.Ui\00", align 1
@.TypeMapModule.49_assembly_name = private unnamed_addr constant [34 x i8] c"Xamarin.AndroidX.Camera.Lifecycle\00", align 1
@.TypeMapModule.50_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.ViewPager2\00", align 1
@.TypeMapModule.51_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.AndroidX.Collection.Jvm\00", align 1
@.TypeMapModule.52_assembly_name = private unnamed_addr constant [23 x i8] c"Xamarin.AndroidX.Media\00", align 1
@.TypeMapModule.53_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.AndroidX.SwipeRefreshLayout\00", align 1
@.TypeMapModule.54_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.Google.Android.Material\00", align 1
@.TypeMapModule.55_assembly_name = private unnamed_addr constant [24 x i8] c"Xamarin.AndroidX.Loader\00", align 1
@.TypeMapModule.56_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.AndroidX.Media3.Decoder\00", align 1

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ 1dcfb6f8779c33b6f768c996495cb90ecd729329"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
