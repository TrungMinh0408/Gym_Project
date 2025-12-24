; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [174 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [522 x i64] [
	i64 u0x001e58127c546039, ; 0: lib_System.Globalization.dll.so => 131
	i64 u0x0071cf2d27b7d61e, ; 1: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 102
	i64 u0x02123411c4e01926, ; 2: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 98
	i64 u0x022e81ea9c46e03a, ; 3: lib_CommunityToolkit.Maui.Core.dll.so => 38
	i64 u0x02abedc11addc1ed, ; 4: lib_Mono.Android.Runtime.dll.so => 172
	i64 u0x032267b2a94db371, ; 5: lib_Xamarin.AndroidX.AppCompat.dll.so => 67
	i64 u0x043032f1d071fae0, ; 6: ru/Microsoft.Maui.Controls.resources => 24
	i64 u0x044440a55165631e, ; 7: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 2
	i64 u0x046eb1581a80c6b0, ; 8: vi/Microsoft.Maui.Controls.resources => 30
	i64 u0x0517ef04e06e9f76, ; 9: System.Net.Primitives => 140
	i64 u0x0565d18c6da3de38, ; 10: Xamarin.AndroidX.RecyclerView => 100
	i64 u0x0581db89237110e9, ; 11: lib_System.Collections.dll.so => 118
	i64 u0x05989cb940b225a9, ; 12: Microsoft.Maui.dll => 51
	i64 u0x05a1c25e78e22d87, ; 13: lib_System.Runtime.CompilerServices.Unsafe.dll.so => 150
	i64 u0x06076b5d2b581f08, ; 14: zh-HK/Microsoft.Maui.Controls.resources => 31
	i64 u0x0680a433c781bb3d, ; 15: Xamarin.AndroidX.Collection.Jvm => 77
	i64 u0x07469f2eecce9e85, ; 16: mscorlib.dll => 168
	i64 u0x07c57877c7ba78ad, ; 17: ru/Microsoft.Maui.Controls.resources.dll => 24
	i64 u0x07dcdc7460a0c5e4, ; 18: System.Collections.NonGeneric => 116
	i64 u0x08552ce7fec185f1, ; 19: Gym.dll => 112
	i64 u0x08a7c865576bbde7, ; 20: System.Reflection.Primitives => 147
	i64 u0x08f3c9788ee2153c, ; 21: Xamarin.AndroidX.DrawerLayout => 82
	i64 u0x0919c28b89381a0b, ; 22: lib_Microsoft.Extensions.Options.dll.so => 47
	i64 u0x092266563089ae3e, ; 23: lib_System.Collections.NonGeneric.dll.so => 116
	i64 u0x09d144a7e214d457, ; 24: System.Security.Cryptography => 158
	i64 u0x0a832f2c97e71637, ; 25: Xamarin.AndroidX.Camera.Video => 74
	i64 u0x0abb3e2b271edc45, ; 26: System.Threading.Channels.dll => 162
	i64 u0x0b3b632c3bbee20c, ; 27: sk/Microsoft.Maui.Controls.resources => 25
	i64 u0x0b6aff547b84fbe9, ; 28: Xamarin.KotlinX.Serialization.Core.Jvm => 110
	i64 u0x0be2e1f8ce4064ed, ; 29: Xamarin.AndroidX.ViewPager => 104
	i64 u0x0c3ca6cc978e2aae, ; 30: pt-BR/Microsoft.Maui.Controls.resources => 21
	i64 u0x0c3d7adcdb333bf0, ; 31: Xamarin.AndroidX.Camera.Lifecycle => 73
	i64 u0x0c59ad9fbbd43abe, ; 32: Mono.Android => 173
	i64 u0x0c7790f60165fc06, ; 33: lib_Microsoft.Maui.Essentials.dll.so => 52
	i64 u0x0ec01b05613190b9, ; 34: SkiaSharp.Views.Android.dll => 59
	i64 u0x102a31b45304b1da, ; 35: Xamarin.AndroidX.CustomView => 81
	i64 u0x10ca46a12d1cfb88, ; 36: Syncfusion.Maui.Core => 64
	i64 u0x10f6cfcbcf801616, ; 37: System.IO.Compression.Brotli => 132
	i64 u0x1176f12a4db52a13, ; 38: Syncfusion.Maui.Charts.dll => 63
	i64 u0x118d570f508803d1, ; 39: Xamarin.AndroidX.Camera.Camera2.dll => 70
	i64 u0x125b7f94acb989db, ; 40: Xamarin.AndroidX.RecyclerView.dll => 100
	i64 u0x12ab5c6763abb78f, ; 41: Xamarin.AndroidX.Media3.ExoPlayer => 92
	i64 u0x137b34d6751da129, ; 42: System.Drawing.Common => 65
	i64 u0x138567fa954faa55, ; 43: Xamarin.AndroidX.Browser => 69
	i64 u0x13a01de0cbc3f06c, ; 44: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 8
	i64 u0x13f1e5e209e91af4, ; 45: lib_Java.Interop.dll.so => 171
	i64 u0x13f1e880c25d96d1, ; 46: he/Microsoft.Maui.Controls.resources => 9
	i64 u0x143d8ea60a6a4011, ; 47: Microsoft.Extensions.DependencyInjection.Abstractions => 44
	i64 u0x152a448bd1e745a7, ; 48: Microsoft.Win32.Primitives => 113
	i64 u0x1695ecefb732cade, ; 49: lib_Syncfusion.Maui.Core.dll.so => 64
	i64 u0x16ea2b318ad2d830, ; 50: System.Security.Cryptography.Algorithms => 157
	i64 u0x16eeae54c7ebcc08, ; 51: System.Reflection.dll => 148
	i64 u0x17125c9a85b4929f, ; 52: lib_netstandard.dll.so => 169
	i64 u0x178721bae79a52da, ; 53: Xamarin.AndroidX.Media3.Extractor => 93
	i64 u0x17b56e25558a5d36, ; 54: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 12
	i64 u0x17f9358913beb16a, ; 55: System.Text.Encodings.Web => 159
	i64 u0x18402a709e357f3b, ; 56: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 110
	i64 u0x18f0ce884e87d89a, ; 57: nb/Microsoft.Maui.Controls.resources.dll => 18
	i64 u0x1a040febb58bf51e, ; 58: lib_Xamarin.AndroidX.Camera.View.dll.so => 75
	i64 u0x1a91866a319e9259, ; 59: lib_System.Collections.Concurrent.dll.so => 114
	i64 u0x1aac34d1917ba5d3, ; 60: lib_System.dll.so => 167
	i64 u0x1aad60783ffa3e5b, ; 61: lib-th-Microsoft.Maui.Controls.resources.dll.so => 27
	i64 u0x1c753b5ff15bce1b, ; 62: Mono.Android.Runtime.dll => 172
	i64 u0x1e3d87657e9659bc, ; 63: Xamarin.AndroidX.Navigation.UI => 99
	i64 u0x1e71143913d56c10, ; 64: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 16
	i64 u0x1ed8fcce5e9b50a0, ; 65: Microsoft.Extensions.Options.dll => 47
	i64 u0x209375905fcc1bad, ; 66: lib_System.IO.Compression.Brotli.dll.so => 132
	i64 u0x20fab3cf2dfbc8df, ; 67: lib_System.Diagnostics.Process.dll.so => 125
	i64 u0x2110167c128cba15, ; 68: System.Globalization => 131
	i64 u0x2174319c0d835bc9, ; 69: System.Runtime => 156
	i64 u0x21846dffb992e05b, ; 70: lib_Microcharts.Maui.dll.so => 40
	i64 u0x21cfc3b16bdcd5fb, ; 71: lib_Xamarin.AndroidX.Media3.Extractor.dll.so => 93
	i64 u0x220fd4f2e7c48170, ; 72: th/Microsoft.Maui.Controls.resources => 27
	i64 u0x237be844f1f812c7, ; 73: System.Threading.Thread.dll => 163
	i64 u0x23852b3bdc9f7096, ; 74: System.Resources.ResourceManager => 149
	i64 u0x2407aef2bbe8fadf, ; 75: System.Console => 122
	i64 u0x240abe014b27e7d3, ; 76: Xamarin.AndroidX.Core.dll => 79
	i64 u0x252073cc3caa62c2, ; 77: fr/Microsoft.Maui.Controls.resources.dll => 8
	i64 u0x25e1850d10cdc8f7, ; 78: lib_Xamarin.AndroidX.Camera.Camera2.dll.so => 70
	i64 u0x2662c629b96b0b30, ; 79: lib_Xamarin.Kotlin.StdLib.dll.so => 108
	i64 u0x268c1439f13bcc29, ; 80: lib_Microsoft.Extensions.Primitives.dll.so => 48
	i64 u0x268f1dca6d06d437, ; 81: Xamarin.AndroidX.Camera.Core => 71
	i64 u0x268f3997e8235f24, ; 82: Autofac => 35
	i64 u0x26a670e154a9c54b, ; 83: System.Reflection.Extensions.dll => 146
	i64 u0x273f3515de5faf0d, ; 84: id/Microsoft.Maui.Controls.resources.dll => 13
	i64 u0x2742545f9094896d, ; 85: hr/Microsoft.Maui.Controls.resources => 11
	i64 u0x27b410442fad6cf1, ; 86: Java.Interop.dll => 171
	i64 u0x27b97e0d52c3034a, ; 87: System.Diagnostics.Debug => 123
	i64 u0x2801845a2c71fbfb, ; 88: System.Net.Primitives.dll => 140
	i64 u0x2927d345f3daec35, ; 89: SkiaSharp.dll => 58
	i64 u0x2a128783efe70ba0, ; 90: uk/Microsoft.Maui.Controls.resources.dll => 29
	i64 u0x2a6507a5ffabdf28, ; 91: System.Diagnostics.TraceSource.dll => 127
	i64 u0x2ad156c8e1354139, ; 92: fi/Microsoft.Maui.Controls.resources => 7
	i64 u0x2af298f63581d886, ; 93: System.Text.RegularExpressions.dll => 161
	i64 u0x2afc1c4f898552ee, ; 94: lib_System.Formats.Asn1.dll.so => 130
	i64 u0x2b148910ed40fbf9, ; 95: zh-Hant/Microsoft.Maui.Controls.resources.dll => 33
	i64 u0x2c8bd14bb93a7d82, ; 96: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 20
	i64 u0x2cdbe1c1d4183ec1, ; 97: lib_Syncfusion.Licensing.dll.so => 62
	i64 u0x2d169d318a968379, ; 98: System.Threading.dll => 164
	i64 u0x2d47774b7d993f59, ; 99: sv/Microsoft.Maui.Controls.resources.dll => 26
	i64 u0x2db915caf23548d2, ; 100: System.Text.Json.dll => 160
	i64 u0x2e6f1f226821322a, ; 101: el/Microsoft.Maui.Controls.resources.dll => 5
	i64 u0x2f02f94df3200fe5, ; 102: System.Diagnostics.Process => 125
	i64 u0x2f2e98e1c89b1aff, ; 103: System.Xml.ReaderWriter => 166
	i64 u0x2f685cff6590f98b, ; 104: lib_Gym.dll.so => 112
	i64 u0x309ee9eeec09a71e, ; 105: lib_Xamarin.AndroidX.Fragment.dll.so => 83
	i64 u0x31195fef5d8fb552, ; 106: _Microsoft.Android.Resource.Designer.dll => 34
	i64 u0x32243413e774362a, ; 107: Xamarin.AndroidX.CardView.dll => 76
	i64 u0x3235427f8d12dae1, ; 108: lib_System.Drawing.Primitives.dll.so => 128
	i64 u0x326256f7722d4fe5, ; 109: SkiaSharp.Views.Maui.Controls.dll => 60
	i64 u0x329753a17a517811, ; 110: fr/Microsoft.Maui.Controls.resources => 8
	i64 u0x32aa989ff07a84ff, ; 111: lib_System.Xml.ReaderWriter.dll.so => 166
	i64 u0x33829542f112d59b, ; 112: System.Collections.Immutable => 115
	i64 u0x33a31443733849fe, ; 113: lib-es-Microsoft.Maui.Controls.resources.dll.so => 6
	i64 u0x34dfd74fe2afcf37, ; 114: Microsoft.Maui => 51
	i64 u0x34e292762d9615df, ; 115: cs/Microsoft.Maui.Controls.resources.dll => 2
	i64 u0x3508234247f48404, ; 116: Microsoft.Maui.Controls => 49
	i64 u0x3549870798b4cd30, ; 117: lib_Xamarin.AndroidX.ViewPager2.dll.so => 105
	i64 u0x355282fc1c909694, ; 118: Microsoft.Extensions.Configuration => 41
	i64 u0x3628ab68db23a01a, ; 119: lib_System.Diagnostics.Tools.dll.so => 126
	i64 u0x3673b042508f5b6b, ; 120: lib_System.Runtime.Extensions.dll.so => 151
	i64 u0x374ef46b06791af6, ; 121: System.Reflection.Primitives.dll => 147
	i64 u0x380134e03b1e160a, ; 122: System.Collections.Immutable.dll => 115
	i64 u0x38049b5c59b39324, ; 123: System.Runtime.CompilerServices.Unsafe => 150
	i64 u0x385c17636bb6fe6e, ; 124: Xamarin.AndroidX.CustomView.dll => 81
	i64 u0x393c226616977fdb, ; 125: lib_Xamarin.AndroidX.ViewPager.dll.so => 104
	i64 u0x395e37c3334cf82a, ; 126: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 1
	i64 u0x3b7fd21010990ab8, ; 127: lib_Xamarin.AndroidX.Media3.ExoPlayer.dll.so => 92
	i64 u0x3be99b43dd39dd37, ; 128: Xamarin.AndroidX.SavedState.SavedState.Android => 101
	i64 u0x3c7c495f58ac5ee9, ; 129: Xamarin.Kotlin.StdLib => 108
	i64 u0x3cb3e0581d37cbab, ; 130: Xamarin.AndroidX.Media3.Common => 89
	i64 u0x3cd9d281d402eb9b, ; 131: Xamarin.AndroidX.Browser.dll => 69
	i64 u0x3d1c50cc001a991e, ; 132: Xamarin.Google.Guava.ListenableFuture.dll => 107
	i64 u0x3d3cfcb304bef018, ; 133: Autofac.dll => 35
	i64 u0x3d9c2a242b040a50, ; 134: lib_Xamarin.AndroidX.Core.dll.so => 79
	i64 u0x3f1edf1f1774c1f7, ; 135: Xamarin.AndroidX.Media3.ExoPlayer.dll => 92
	i64 u0x407a10bb4bf95829, ; 136: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 96
	i64 u0x40c6d9cbfdb8b9f7, ; 137: SkiaSharp.Views.Maui.Core.dll => 61
	i64 u0x414529b8f17e5abe, ; 138: Xamarin.AndroidX.Media3.Decoder.dll => 91
	i64 u0x41833cf766d27d96, ; 139: mscorlib => 168
	i64 u0x41cab042be111c34, ; 140: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 68
	i64 u0x423a9ecc4d905a88, ; 141: lib_System.Resources.ResourceManager.dll.so => 149
	i64 u0x43375950ec7c1b6a, ; 142: netstandard.dll => 169
	i64 u0x434c4e1d9284cdae, ; 143: Mono.Android.dll => 173
	i64 u0x43950f84de7cc79a, ; 144: pl/Microsoft.Maui.Controls.resources.dll => 20
	i64 u0x4515080865a951a5, ; 145: Xamarin.Kotlin.StdLib.dll => 108
	i64 u0x45c40276a42e283e, ; 146: System.Diagnostics.TraceSource => 127
	i64 u0x46a4213bc97fe5ae, ; 147: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 24
	i64 u0x478978bf61187a69, ; 148: Syncfusion.Maui.Charts => 63
	i64 u0x47daf4e1afbada10, ; 149: pt/Microsoft.Maui.Controls.resources => 22
	i64 u0x49e952f19a4e2022, ; 150: System.ObjectModel => 143
	i64 u0x49f9e6948a8131e4, ; 151: lib_Xamarin.AndroidX.VersionedParcelable.dll.so => 103
	i64 u0x4a5667b2462a664b, ; 152: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 99
	i64 u0x4a78a24dc5b649fc, ; 153: Syncfusion.Maui.Core.dll => 64
	i64 u0x4b07a0ed0ab33ff4, ; 154: System.Runtime.Extensions.dll => 151
	i64 u0x4b105abcfd2ed3f5, ; 155: Xamarin.AndroidX.Media3.Session => 94
	i64 u0x4b408786b23c091d, ; 156: OpenCvSharp.Extensions => 57
	i64 u0x4b7b6532ded934b7, ; 157: System.Text.Json => 160
	i64 u0x4bf547f87e5016a8, ; 158: lib_SkiaSharp.Views.Android.dll.so => 59
	i64 u0x4c7755cf07ad2d5f, ; 159: System.Net.Http.Json.dll => 138
	i64 u0x4cc5f15266470798, ; 160: lib_Xamarin.AndroidX.Loader.dll.so => 87
	i64 u0x4d479f968a05e504, ; 161: System.Linq.Expressions.dll => 135
	i64 u0x4d55a010ffc4faff, ; 162: System.Private.Xml => 145
	i64 u0x4d95fccc1f67c7ca, ; 163: System.Runtime.Loader.dll => 154
	i64 u0x4dcf44c3c9b076a2, ; 164: it/Microsoft.Maui.Controls.resources.dll => 14
	i64 u0x4dd9247f1d2c3235, ; 165: Xamarin.AndroidX.Loader.dll => 87
	i64 u0x4e32f00cb0937401, ; 166: Mono.Android.Runtime => 172
	i64 u0x4ebd0c4b82c5eefc, ; 167: lib_System.Threading.Channels.dll.so => 162
	i64 u0x4f21ee6ef9eb527e, ; 168: ca/Microsoft.Maui.Controls.resources => 1
	i64 u0x4fe4a08392a99ac0, ; 169: lib_CommunityToolkit.Maui.Camera.dll.so => 37
	i64 u0x5037f0be3c28c7a3, ; 170: lib_Microsoft.Maui.Controls.dll.so => 49
	i64 u0x5131bbe80989093f, ; 171: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 86
	i64 u0x51bb8a2afe774e32, ; 172: System.Drawing => 129
	i64 u0x526ce79eb8e90527, ; 173: lib_System.Net.Primitives.dll.so => 140
	i64 u0x529ffe06f39ab8db, ; 174: Xamarin.AndroidX.Core => 79
	i64 u0x52ff996554dbf352, ; 175: Microsoft.Maui.Graphics => 53
	i64 u0x535f7e40e8fef8af, ; 176: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 25
	i64 u0x53be1038a61e8d44, ; 177: System.Runtime.InteropServices.RuntimeInformation.dll => 152
	i64 u0x53c3014b9437e684, ; 178: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 31
	i64 u0x54795225dd1587af, ; 179: lib_System.Runtime.dll.so => 156
	i64 u0x549189f64ed96153, ; 180: Xamarin.AndroidX.Media3.Decoder => 91
	i64 u0x556e8b63b660ab8b, ; 181: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 84
	i64 u0x5588627c9a108ec9, ; 182: System.Collections.Specialized => 117
	i64 u0x561449e1215a61e4, ; 183: lib_SkiaSharp.Views.Maui.Core.dll.so => 61
	i64 u0x571c5cfbec5ae8e2, ; 184: System.Private.Uri => 144
	i64 u0x579a06fed6eec900, ; 185: System.Private.CoreLib.dll => 170
	i64 u0x57c542c14049b66d, ; 186: System.Diagnostics.DiagnosticSource => 124
	i64 u0x58601b2dda4a27b9, ; 187: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 15
	i64 u0x58688d9af496b168, ; 188: Microsoft.Extensions.DependencyInjection.dll => 43
	i64 u0x5a89a886ae30258d, ; 189: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 78
	i64 u0x5a8f6699f4a1caa9, ; 190: lib_System.Threading.dll.so => 164
	i64 u0x5ae9cd33b15841bf, ; 191: System.ComponentModel => 121
	i64 u0x5b5ba1327561f926, ; 192: lib_SkiaSharp.Views.Maui.Controls.dll.so => 60
	i64 u0x5b5f0e240a06a2a2, ; 193: da/Microsoft.Maui.Controls.resources.dll => 3
	i64 u0x5c30a4a35f9cc8c4, ; 194: lib_System.Reflection.Extensions.dll.so => 146
	i64 u0x5c393624b8176517, ; 195: lib_Microsoft.Extensions.Logging.dll.so => 45
	i64 u0x5c4aae08d47de00e, ; 196: lib_Xamarin.AndroidX.Media3.Session.dll.so => 94
	i64 u0x5db0cbbd1028510e, ; 197: lib_System.Runtime.InteropServices.dll.so => 153
	i64 u0x5db30905d3e5013b, ; 198: Xamarin.AndroidX.Collection.Jvm.dll => 77
	i64 u0x5e467bc8f09ad026, ; 199: System.Collections.Specialized.dll => 117
	i64 u0x5ea92fdb19ec8c4c, ; 200: System.Text.Encodings.Web.dll => 159
	i64 u0x5eb8046dd40e9ac3, ; 201: System.ComponentModel.Primitives => 119
	i64 u0x5f36ccf5c6a57e24, ; 202: System.Xml.ReaderWriter.dll => 166
	i64 u0x5f9a2d823f664957, ; 203: lib-el-Microsoft.Maui.Controls.resources.dll.so => 5
	i64 u0x5fac98e0b37a5b9d, ; 204: System.Runtime.CompilerServices.Unsafe.dll => 150
	i64 u0x609f4b7b63d802d4, ; 205: lib_Microsoft.Extensions.DependencyInjection.dll.so => 43
	i64 u0x60cd4e33d7e60134, ; 206: Xamarin.KotlinX.Coroutines.Core.Jvm => 109
	i64 u0x60f62d786afcf130, ; 207: System.Memory => 137
	i64 u0x61be8d1299194243, ; 208: Microsoft.Maui.Controls.Xaml => 50
	i64 u0x61d2cba29557038f, ; 209: de/Microsoft.Maui.Controls.resources => 4
	i64 u0x61d88f399afb2f45, ; 210: lib_System.Runtime.Loader.dll.so => 154
	i64 u0x622eef6f9e59068d, ; 211: System.Private.CoreLib => 170
	i64 u0x63f1f6883c1e23c2, ; 212: lib_System.Collections.Immutable.dll.so => 115
	i64 u0x6400f68068c1e9f1, ; 213: Xamarin.Google.Android.Material.dll => 106
	i64 u0x640e3b14dbd325c2, ; 214: System.Security.Cryptography.Algorithms.dll => 157
	i64 u0x64587004560099b9, ; 215: System.Reflection => 148
	i64 u0x658f524e4aba7dad, ; 216: CommunityToolkit.Maui.dll => 36
	i64 u0x65ca90e07a453071, ; 217: Microcharts.Maui.dll => 40
	i64 u0x65ecac39144dd3cc, ; 218: Microsoft.Maui.Controls.dll => 49
	i64 u0x65ece51227bfa724, ; 219: lib_System.Runtime.Numerics.dll.so => 155
	i64 u0x6692e924eade1b29, ; 220: lib_System.Console.dll.so => 122
	i64 u0x66a4e5c6a3fb0bae, ; 221: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 86
	i64 u0x66ad21286ac74b9d, ; 222: lib_System.Drawing.Common.dll.so => 65
	i64 u0x66d13304ce1a3efa, ; 223: Xamarin.AndroidX.CursorAdapter => 80
	i64 u0x68558ec653afa616, ; 224: lib-da-Microsoft.Maui.Controls.resources.dll.so => 3
	i64 u0x6872ec7a2e36b1ac, ; 225: System.Drawing.Primitives.dll => 128
	i64 u0x68fbbbe2eb455198, ; 226: System.Formats.Asn1 => 130
	i64 u0x69063fc0ba8e6bdd, ; 227: he/Microsoft.Maui.Controls.resources.dll => 9
	i64 u0x6a4d7577b2317255, ; 228: System.Runtime.InteropServices.dll => 153
	i64 u0x6ace3b74b15ee4a4, ; 229: nb/Microsoft.Maui.Controls.resources => 18
	i64 u0x6d12bfaa99c72b1f, ; 230: lib_Microsoft.Maui.Graphics.dll.so => 53
	i64 u0x6d79993361e10ef2, ; 231: Microsoft.Extensions.Primitives => 48
	i64 u0x6d86d56b84c8eb71, ; 232: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 80
	i64 u0x6d9bea6b3e895cf7, ; 233: Microsoft.Extensions.Primitives.dll => 48
	i64 u0x6e25a02c3833319a, ; 234: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 97
	i64 u0x6fd2265da78b93a4, ; 235: lib_Microsoft.Maui.dll.so => 51
	i64 u0x6fdfc7de82c33008, ; 236: cs/Microsoft.Maui.Controls.resources => 2
	i64 u0x709688f4ec2831e9, ; 237: lib_Xamarin.AndroidX.Media.dll.so => 88
	i64 u0x70e99f48c05cb921, ; 238: tr/Microsoft.Maui.Controls.resources.dll => 28
	i64 u0x70fd3deda22442d2, ; 239: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 18
	i64 u0x71485e7ffdb4b958, ; 240: System.Reflection.Extensions => 146
	i64 u0x71a495ea3761dde8, ; 241: lib-it-Microsoft.Maui.Controls.resources.dll.so => 14
	i64 u0x71ad672adbe48f35, ; 242: System.ComponentModel.Primitives.dll => 119
	i64 u0x72b1fb4109e08d7b, ; 243: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 11
	i64 u0x73e4ce94e2eb6ffc, ; 244: lib_System.Memory.dll.so => 137
	i64 u0x748690d8fe6172f0, ; 245: Xamarin.AndroidX.Media3.Extractor.dll => 93
	i64 u0x755a91767330b3d4, ; 246: lib_Microsoft.Extensions.Configuration.dll.so => 41
	i64 u0x76ca07b878f44da0, ; 247: System.Runtime.Numerics.dll => 155
	i64 u0x780bc73597a503a9, ; 248: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 17
	i64 u0x783606d1e53e7a1a, ; 249: th/Microsoft.Maui.Controls.resources.dll => 27
	i64 u0x78a45e51311409b6, ; 250: Xamarin.AndroidX.Fragment.dll => 83
	i64 u0x79c01e1d7113d760, ; 251: lib_Xamarin.AndroidX.Media3.Decoder.dll.so => 91
	i64 u0x79e2fd2773a12b40, ; 252: lib_CommunityToolkit.Maui.MediaElement.dll.so => 39
	i64 u0x79f2a1023f4320f2, ; 253: Microsoft.Win32.SystemEvents => 55
	i64 u0x7adb8da2ac89b647, ; 254: fi/Microsoft.Maui.Controls.resources.dll => 7
	i64 u0x7bef86a4335c4870, ; 255: System.ComponentModel.TypeConverter => 120
	i64 u0x7c0820144cd34d6a, ; 256: sk/Microsoft.Maui.Controls.resources.dll => 25
	i64 u0x7c2a0bd1e0f988fc, ; 257: lib-de-Microsoft.Maui.Controls.resources.dll.so => 4
	i64 u0x7cc637f941f716d0, ; 258: CommunityToolkit.Maui.Core => 38
	i64 u0x7d649b75d580bb42, ; 259: ms/Microsoft.Maui.Controls.resources.dll => 17
	i64 u0x7d8ee2bdc8e3aad1, ; 260: System.Numerics.Vectors => 142
	i64 u0x7dfc3d6d9d8d7b70, ; 261: System.Collections => 118
	i64 u0x7e946809d6008ef2, ; 262: lib_System.ObjectModel.dll.so => 143
	i64 u0x7ecc13347c8fd849, ; 263: lib_System.ComponentModel.dll.so => 121
	i64 u0x7f00ddd9b9ca5a13, ; 264: Xamarin.AndroidX.ViewPager.dll => 104
	i64 u0x7f9351cd44b1273f, ; 265: Microsoft.Extensions.Configuration.Abstractions => 42
	i64 u0x7fbd557c99b3ce6f, ; 266: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 85
	i64 u0x812c069d5cdecc17, ; 267: System.dll => 167
	i64 u0x81ab745f6c0f5ce6, ; 268: zh-Hant/Microsoft.Maui.Controls.resources => 33
	i64 u0x8277f2be6b5ce05f, ; 269: Xamarin.AndroidX.AppCompat => 67
	i64 u0x828f06563b30bc50, ; 270: lib_Xamarin.AndroidX.CardView.dll.so => 76
	i64 u0x82df8f5532a10c59, ; 271: lib_System.Drawing.dll.so => 129
	i64 u0x82f6403342e12049, ; 272: uk/Microsoft.Maui.Controls.resources => 29
	i64 u0x838e92d436c6b50f, ; 273: SpeechToText => 111
	i64 u0x83c14ba66c8e2b8c, ; 274: zh-Hans/Microsoft.Maui.Controls.resources => 32
	i64 u0x83ff1201e4a75eec, ; 275: lib_Microsoft.ML.OnnxRuntime.dll.so => 54
	i64 u0x844ac8f64fd78edc, ; 276: Xamarin.AndroidX.Camera.View.dll => 75
	i64 u0x84f9060cc4a93c8f, ; 277: lib_SkiaSharp.dll.so => 58
	i64 u0x8516eca30f91426f, ; 278: Xamarin.AndroidX.Camera.Extensions => 72
	i64 u0x8664a56f26fd2371, ; 279: Microsoft.ML.OnnxRuntime => 54
	i64 u0x86a909228dc7657b, ; 280: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 33
	i64 u0x86b3e00c36b84509, ; 281: Microsoft.Extensions.Configuration.dll => 41
	i64 u0x87c69b87d9283884, ; 282: lib_System.Threading.Thread.dll.so => 163
	i64 u0x87f6569b25707834, ; 283: System.IO.Compression.Brotli.dll => 132
	i64 u0x8842b3a5d2d3fb36, ; 284: Microsoft.Maui.Essentials => 52
	i64 u0x88ba6bc4f7762b03, ; 285: lib_System.Reflection.dll.so => 148
	i64 u0x88bda98e0cffb7a9, ; 286: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 109
	i64 u0x8930322c7bd8f768, ; 287: netstandard => 169
	i64 u0x897a606c9e39c75f, ; 288: lib_System.ComponentModel.Primitives.dll.so => 119
	i64 u0x898a5c6bc9e47ec1, ; 289: lib_Xamarin.AndroidX.SavedState.SavedState.Android.dll.so => 101
	i64 u0x89c5188089ec2cd5, ; 290: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 152
	i64 u0x8a39f7289921b6e8, ; 291: lib_Xamarin.AndroidX.Media3.DataSource.dll.so => 90
	i64 u0x8ac8d025b93e29e9, ; 292: Syncfusion.Licensing => 62
	i64 u0x8ad229ea26432ee2, ; 293: Xamarin.AndroidX.Loader => 87
	i64 u0x8b4ff5d0fdd5faa1, ; 294: lib_System.Diagnostics.DiagnosticSource.dll.so => 124
	i64 u0x8b8d01333a96d0b5, ; 295: System.Diagnostics.Process.dll => 125
	i64 u0x8b9ceca7acae3451, ; 296: lib-he-Microsoft.Maui.Controls.resources.dll.so => 9
	i64 u0x8ba96f31f69ece34, ; 297: Microsoft.Win32.SystemEvents.dll => 55
	i64 u0x8d0f420977c2c1c7, ; 298: Xamarin.AndroidX.CursorAdapter.dll => 80
	i64 u0x8d7b8ab4b3310ead, ; 299: System.Threading => 164
	i64 u0x8da188285aadfe8e, ; 300: System.Collections.Concurrent => 114
	i64 u0x8ed807bfe9858dfc, ; 301: Xamarin.AndroidX.Navigation.Common => 96
	i64 u0x8ee08b8194a30f48, ; 302: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 10
	i64 u0x8ef7601039857a44, ; 303: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 23
	i64 u0x8f32c6f611f6ffab, ; 304: pt/Microsoft.Maui.Controls.resources.dll => 22
	i64 u0x8f8829d21c8985a4, ; 305: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 21
	i64 u0x8fa33345c880fa18, ; 306: Gym => 112
	i64 u0x8fbf5b0114c6dcef, ; 307: System.Globalization.dll => 131
	i64 u0x90263f8448b8f572, ; 308: lib_System.Diagnostics.TraceSource.dll.so => 127
	i64 u0x903101b46fb73a04, ; 309: _Microsoft.Android.Resource.Designer => 34
	i64 u0x90393bd4865292f3, ; 310: lib_System.IO.Compression.dll.so => 133
	i64 u0x90634f86c5ebe2b5, ; 311: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 86
	i64 u0x907b636704ad79ef, ; 312: lib_Microsoft.Maui.Controls.Xaml.dll.so => 50
	i64 u0x91418dc638b29e68, ; 313: lib_Xamarin.AndroidX.CustomView.dll.so => 81
	i64 u0x9157bd523cd7ed36, ; 314: lib_System.Text.Json.dll.so => 160
	i64 u0x91a74f07b30d37e2, ; 315: System.Linq.dll => 136
	i64 u0x91c7e28b683d07a7, ; 316: CommunityToolkit.Maui.Camera => 37
	i64 u0x91fa41a87223399f, ; 317: ca/Microsoft.Maui.Controls.resources.dll => 1
	i64 u0x93cfa73ab28d6e35, ; 318: ms/Microsoft.Maui.Controls.resources => 17
	i64 u0x944077d8ca3c6580, ; 319: System.IO.Compression.dll => 133
	i64 u0x95c6b36f5f5d7039, ; 320: Xamarin.AndroidX.Camera.Camera2 => 70
	i64 u0x95d757769563d0d3, ; 321: Xamarin.AndroidX.Camera.Lifecycle.dll => 73
	i64 u0x967fc325e09bfa8c, ; 322: es/Microsoft.Maui.Controls.resources => 6
	i64 u0x9732d8dbddea3d9a, ; 323: id/Microsoft.Maui.Controls.resources => 13
	i64 u0x978be80e5210d31b, ; 324: Microsoft.Maui.Graphics.dll => 53
	i64 u0x97b8c771ea3e4220, ; 325: System.ComponentModel.dll => 121
	i64 u0x97b970e9fcbc533a, ; 326: Xamarin.AndroidX.Media3.Common.dll => 89
	i64 u0x97e144c9d3c6976e, ; 327: System.Collections.Concurrent.dll => 114
	i64 u0x98b05cc81e6f333c, ; 328: Xamarin.AndroidX.SavedState.SavedState.Android.dll => 101
	i64 u0x99052c1297204af4, ; 329: lib_Xamarin.AndroidX.Camera.Core.dll.so => 71
	i64 u0x991d510397f92d9d, ; 330: System.Linq.Expressions => 135
	i64 u0x99a00ca5270c6878, ; 331: Xamarin.AndroidX.Navigation.Runtime => 98
	i64 u0x99cdc6d1f2d3a72f, ; 332: ko/Microsoft.Maui.Controls.resources.dll => 16
	i64 u0x9d5dbcf5a48583fe, ; 333: lib_Xamarin.AndroidX.Activity.dll.so => 66
	i64 u0x9d74dee1a7725f34, ; 334: Microsoft.Extensions.Configuration.Abstractions.dll => 42
	i64 u0x9e4534b6adaf6e84, ; 335: nl/Microsoft.Maui.Controls.resources => 19
	i64 u0x9e4b95dec42769f7, ; 336: System.Diagnostics.Debug.dll => 123
	i64 u0x9e87ca1639a441c9, ; 337: lib_SpeechToText.dll.so => 111
	i64 u0x9eaf1efdf6f7267e, ; 338: Xamarin.AndroidX.Navigation.Common.dll => 96
	i64 u0x9ef542cf1f78c506, ; 339: Xamarin.AndroidX.Lifecycle.LiveData.Core => 85
	i64 u0x9f0d70eedb6d4c3b, ; 340: lib_Xamarin.AndroidX.Media3.Ui.dll.so => 95
	i64 u0x9fd3f1a76511cc37, ; 341: OpenCvSharp => 56
	i64 u0x9ff334e3cf272fd6, ; 342: lib_Xamarin.AndroidX.Camera.Lifecycle.dll.so => 73
	i64 u0xa00525bf6a34a781, ; 343: lib_OpenCvSharp.dll.so => 56
	i64 u0xa0d8259f4cc284ec, ; 344: lib_System.Security.Cryptography.dll.so => 158
	i64 u0xa1440773ee9d341e, ; 345: Xamarin.Google.Android.Material => 106
	i64 u0xa1b9d7c27f47219f, ; 346: Xamarin.AndroidX.Navigation.UI.dll => 99
	i64 u0xa2572680829d2c7c, ; 347: System.IO.Pipelines.dll => 134
	i64 u0xa2beee74530fc01c, ; 348: SkiaSharp.Views.Android => 59
	i64 u0xa308401900e5bed3, ; 349: lib_mscorlib.dll.so => 168
	i64 u0xa46aa1eaa214539b, ; 350: ko/Microsoft.Maui.Controls.resources => 16
	i64 u0xa5e599d1e0524750, ; 351: System.Numerics.Vectors.dll => 142
	i64 u0xa5f1ba49b85dd355, ; 352: System.Security.Cryptography.dll => 158
	i64 u0xa68a420042bb9b1f, ; 353: Xamarin.AndroidX.DrawerLayout.dll => 82
	i64 u0xa763fbb98df8d9fb, ; 354: lib_Microsoft.Win32.Primitives.dll.so => 113
	i64 u0xa78ce3745383236a, ; 355: Xamarin.AndroidX.Lifecycle.Common.Jvm => 84
	i64 u0xa7c31b56b4dc7b33, ; 356: hu/Microsoft.Maui.Controls.resources => 12
	i64 u0xa964304b5631e28a, ; 357: CommunityToolkit.Maui.Core.dll => 38
	i64 u0xa97c03d5bf400680, ; 358: SpeechToText.dll => 111
	i64 u0xaa2219c8e3449ff5, ; 359: Microsoft.Extensions.Logging.Abstractions => 46
	i64 u0xaa443ac34067eeef, ; 360: System.Private.Xml.dll => 145
	i64 u0xaa52de307ef5d1dd, ; 361: System.Net.Http => 139
	i64 u0xaaaf86367285a918, ; 362: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 44
	i64 u0xaaf84bb3f052a265, ; 363: el/Microsoft.Maui.Controls.resources => 5
	i64 u0xab9c1b2687d86b0b, ; 364: lib_System.Linq.Expressions.dll.so => 135
	i64 u0xac2af3fa195a15ce, ; 365: System.Runtime.Numerics => 155
	i64 u0xac5376a2a538dc10, ; 366: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 85
	i64 u0xac5acae88f60357e, ; 367: System.Diagnostics.Tools.dll => 126
	i64 u0xacd46e002c3ccb97, ; 368: ro/Microsoft.Maui.Controls.resources => 23
	i64 u0xacf42eea7ef9cd12, ; 369: System.Threading.Channels => 162
	i64 u0xad89c07347f1bad6, ; 370: nl/Microsoft.Maui.Controls.resources.dll => 19
	i64 u0xadbb53caf78a79d2, ; 371: System.Web.HttpUtility => 165
	i64 u0xadc90ab061a9e6e4, ; 372: System.ComponentModel.TypeConverter.dll => 120
	i64 u0xae282bcd03739de7, ; 373: Java.Interop => 171
	i64 u0xae53579c90db1107, ; 374: System.ObjectModel.dll => 143
	i64 u0xb05cc42cd94c6d9d, ; 375: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 26
	i64 u0xb220631954820169, ; 376: System.Text.RegularExpressions => 161
	i64 u0xb2a3f67f3bf29fce, ; 377: da/Microsoft.Maui.Controls.resources => 3
	i64 u0xb3f0a0fcda8d3ebc, ; 378: Xamarin.AndroidX.CardView => 76
	i64 u0xb3f368d446f06540, ; 379: OpenCvSharp.dll => 56
	i64 u0xb3f832258cb83db4, ; 380: Syncfusion.Licensing.dll => 62
	i64 u0xb46be1aa6d4fff93, ; 381: hi/Microsoft.Maui.Controls.resources => 10
	i64 u0xb477491be13109d8, ; 382: ar/Microsoft.Maui.Controls.resources => 0
	i64 u0xb4bd7015ecee9d86, ; 383: System.IO.Pipelines => 134
	i64 u0xb5c7fcdafbc67ee4, ; 384: Microsoft.Extensions.Logging.Abstractions.dll => 46
	i64 u0xb7212c4683a94afe, ; 385: System.Drawing.Primitives => 128
	i64 u0xb7b7753d1f319409, ; 386: sv/Microsoft.Maui.Controls.resources => 26
	i64 u0xb81a2c6e0aee50fe, ; 387: lib_System.Private.CoreLib.dll.so => 170
	i64 u0xb9cc1395d59416a0, ; 388: lib_Autofac.dll.so => 35
	i64 u0xb9f64d3b230def68, ; 389: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 22
	i64 u0xb9fc3c8a556e3691, ; 390: ja/Microsoft.Maui.Controls.resources => 15
	i64 u0xba48785529705af9, ; 391: System.Collections.dll => 118
	i64 u0xbc2cdcdb0eb28b1e, ; 392: lib_OpenCvSharp.Extensions.dll.so => 57
	i64 u0xbd0e2c0d55246576, ; 393: System.Net.Http.dll => 139
	i64 u0xbd437a2cdb333d0d, ; 394: Xamarin.AndroidX.ViewPager2 => 105
	i64 u0xbd5d0b88d3d647a5, ; 395: lib_Xamarin.AndroidX.Browser.dll.so => 69
	i64 u0xbe532a80075c3dc8, ; 396: Xamarin.AndroidX.Camera.Core.dll => 71
	i64 u0xbee1b395605474f1, ; 397: System.Drawing.Common.dll => 65
	i64 u0xbee38d4a88835966, ; 398: Xamarin.AndroidX.AppCompat.AppCompatResources => 68
	i64 u0xbfc1e1fb3095f2b3, ; 399: lib_System.Net.Http.Json.dll.so => 138
	i64 u0xc040a4ab55817f58, ; 400: ar/Microsoft.Maui.Controls.resources.dll => 0
	i64 u0xc077a363fd2fe9db, ; 401: Xamarin.AndroidX.Camera.Extensions.dll => 72
	i64 u0xc0d928351ab5ca77, ; 402: System.Console.dll => 122
	i64 u0xc12b8b3afa48329c, ; 403: lib_System.Linq.dll.so => 136
	i64 u0xc1ff9ae3cdb6e1e6, ; 404: Xamarin.AndroidX.Activity.dll => 66
	i64 u0xc28c50f32f81cc73, ; 405: ja/Microsoft.Maui.Controls.resources.dll => 15
	i64 u0xc2bcfec99f69365e, ; 406: Xamarin.AndroidX.ViewPager2.dll => 105
	i64 u0xc50fded0ded1418c, ; 407: lib_System.ComponentModel.TypeConverter.dll.so => 120
	i64 u0xc519125d6bc8fb11, ; 408: lib_System.Net.Requests.dll.so => 141
	i64 u0xc5293b19e4dc230e, ; 409: Xamarin.AndroidX.Navigation.Fragment => 97
	i64 u0xc5325b2fcb37446f, ; 410: lib_System.Private.Xml.dll.so => 145
	i64 u0xc5a0f4b95a699af7, ; 411: lib_System.Private.Uri.dll.so => 144
	i64 u0xc5cdcd5b6277579e, ; 412: lib_System.Security.Cryptography.Algorithms.dll.so => 157
	i64 u0xc62b529e23234872, ; 413: CommunityToolkit.Maui.Camera.dll => 37
	i64 u0xc6c2d0367d74968d, ; 414: Microcharts.Maui => 40
	i64 u0xc73b58d596292257, ; 415: Xamarin.AndroidX.Media3.DataSource.dll => 90
	i64 u0xc7ce851898a4548e, ; 416: lib_System.Web.HttpUtility.dll.so => 165
	i64 u0xc858a28d9ee5a6c5, ; 417: lib_System.Collections.Specialized.dll.so => 117
	i64 u0xc87a188861588632, ; 418: Xamarin.AndroidX.Camera.Video.dll => 74
	i64 u0xc9e54b32fc19baf3, ; 419: lib_CommunityToolkit.Maui.dll.so => 36
	i64 u0xca3a723e7342c5b6, ; 420: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 28
	i64 u0xcab3493c70141c2d, ; 421: pl/Microsoft.Maui.Controls.resources => 20
	i64 u0xcac6bda44c2b4e1e, ; 422: lib_Syncfusion.Maui.Charts.dll.so => 63
	i64 u0xcacfddc9f7c6de76, ; 423: ro/Microsoft.Maui.Controls.resources.dll => 23
	i64 u0xcbd4fdd9cef4a294, ; 424: lib__Microsoft.Android.Resource.Designer.dll.so => 34
	i64 u0xcc2876b32ef2794c, ; 425: lib_System.Text.RegularExpressions.dll.so => 161
	i64 u0xcc5c3bb714c4561e, ; 426: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 109
	i64 u0xcc76886e09b88260, ; 427: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 110
	i64 u0xccdd881a85a5aa45, ; 428: Xamarin.AndroidX.Media3.Session.dll => 94
	i64 u0xccf25c4b634ccd3a, ; 429: zh-Hans/Microsoft.Maui.Controls.resources.dll => 32
	i64 u0xcd10a42808629144, ; 430: System.Net.Requests => 141
	i64 u0xcdd0c48b6937b21c, ; 431: Xamarin.AndroidX.SwipeRefreshLayout => 102
	i64 u0xcf23d8093f3ceadf, ; 432: System.Diagnostics.DiagnosticSource.dll => 124
	i64 u0xcfb381410135caf8, ; 433: Xamarin.AndroidX.Media3.Ui.dll => 95
	i64 u0xd0fc33d5ae5d4cb8, ; 434: System.Runtime.Extensions => 151
	i64 u0xd1194e1d8a8de83c, ; 435: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 84
	i64 u0xd23f43eaa6c25c64, ; 436: Xamarin.AndroidX.Media.dll => 88
	i64 u0xd3144156a3727ebe, ; 437: Xamarin.Google.Guava.ListenableFuture => 107
	i64 u0xd333d0af9e423810, ; 438: System.Runtime.InteropServices => 153
	i64 u0xd3426d966bb704f5, ; 439: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 68
	i64 u0xd3651b6fc3125825, ; 440: System.Private.Uri.dll => 144
	i64 u0xd373685349b1fe8b, ; 441: Microsoft.Extensions.Logging.dll => 45
	i64 u0xd3e4c8d6a2d5d470, ; 442: it/Microsoft.Maui.Controls.resources => 14
	i64 u0xd40492a1bf1ca3d3, ; 443: Xamarin.AndroidX.Media3.Ui => 95
	i64 u0xd4645626dffec99d, ; 444: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 44
	i64 u0xd6d21782156bc35b, ; 445: Xamarin.AndroidX.SwipeRefreshLayout.dll => 102
	i64 u0xd72329819cbbbc44, ; 446: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 42
	i64 u0xd7b3764ada9d341d, ; 447: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 46
	i64 u0xd7f0088bc5ad71f2, ; 448: Xamarin.AndroidX.VersionedParcelable => 103
	i64 u0xda1dfa4c534a9251, ; 449: Microsoft.Extensions.DependencyInjection => 43
	i64 u0xdad05a11827959a3, ; 450: System.Collections.NonGeneric.dll => 116
	i64 u0xdb5383ab5865c007, ; 451: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 30
	i64 u0xdb8f858873e2186b, ; 452: SkiaSharp.Views.Maui.Controls => 60
	i64 u0xdbeda89f832aa805, ; 453: vi/Microsoft.Maui.Controls.resources.dll => 30
	i64 u0xdbf9607a441b4505, ; 454: System.Linq => 136
	i64 u0xdce2c53525640bf3, ; 455: Microsoft.Extensions.Logging => 45
	i64 u0xdd2b722d78ef5f43, ; 456: System.Runtime.dll => 156
	i64 u0xdd67031857c72f96, ; 457: lib_System.Text.Encodings.Web.dll.so => 159
	i64 u0xdde30e6b77aa6f6c, ; 458: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 32
	i64 u0xde8769ebda7d8647, ; 459: hr/Microsoft.Maui.Controls.resources.dll => 11
	i64 u0xdf1a0f6bc1500859, ; 460: OpenCvSharp.Extensions.dll => 57
	i64 u0xe0142572c095a480, ; 461: Xamarin.AndroidX.AppCompat.dll => 67
	i64 u0xe02f89350ec78051, ; 462: Xamarin.AndroidX.CoordinatorLayout.dll => 78
	i64 u0xe0f282c49dd6bd0a, ; 463: Xamarin.AndroidX.Media => 88
	i64 u0xe192a588d4410686, ; 464: lib_System.IO.Pipelines.dll.so => 134
	i64 u0xe1a08bd3fa539e0d, ; 465: System.Runtime.Loader => 154
	i64 u0xe2420585aeceb728, ; 466: System.Net.Requests.dll => 141
	i64 u0xe29b73bc11392966, ; 467: lib-id-Microsoft.Maui.Controls.resources.dll.so => 13
	i64 u0xe2e426c7714fa0bc, ; 468: Microsoft.Win32.Primitives.dll => 113
	i64 u0xe3811d68d4fe8463, ; 469: pt-BR/Microsoft.Maui.Controls.resources.dll => 21
	i64 u0xe494f7ced4ecd10a, ; 470: hu/Microsoft.Maui.Controls.resources.dll => 12
	i64 u0xe4a9b1e40d1e8917, ; 471: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 7
	i64 u0xe5434e8a119ceb69, ; 472: lib_Mono.Android.dll.so => 173
	i64 u0xe55703b9ce5c038a, ; 473: System.Diagnostics.Tools => 126
	i64 u0xe63b8f15a0000b67, ; 474: lib_Xamarin.AndroidX.Media3.Common.dll.so => 89
	i64 u0xe89a2a9ef110899b, ; 475: System.Drawing.dll => 129
	i64 u0xeb888a433b00d426, ; 476: Microsoft.ML.OnnxRuntime.dll => 54
	i64 u0xeb9e30ac32aac03e, ; 477: lib_Microsoft.Win32.SystemEvents.dll.so => 55
	i64 u0xed19c616b3fcb7eb, ; 478: Xamarin.AndroidX.VersionedParcelable.dll => 103
	i64 u0xedc632067fb20ff3, ; 479: System.Memory.dll => 137
	i64 u0xedc8e4ca71a02a8b, ; 480: Xamarin.AndroidX.Navigation.Runtime.dll => 98
	i64 u0xeeb7ebb80150501b, ; 481: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 77
	i64 u0xef602c523fe2e87a, ; 482: lib_Xamarin.Google.Guava.ListenableFuture.dll.so => 107
	i64 u0xef72742e1bcca27a, ; 483: Microsoft.Maui.Essentials.dll => 52
	i64 u0xefd1e0c4e5c9b371, ; 484: System.Resources.ResourceManager.dll => 149
	i64 u0xefec0b7fdc57ec42, ; 485: Xamarin.AndroidX.Activity => 66
	i64 u0xf00c29406ea45e19, ; 486: es/Microsoft.Maui.Controls.resources.dll => 6
	i64 u0xf0ac2b489fed2e35, ; 487: lib_System.Diagnostics.Debug.dll.so => 123
	i64 u0xf11b621fc87b983f, ; 488: Microsoft.Maui.Controls.Xaml.dll => 50
	i64 u0xf1c4b4005493d871, ; 489: System.Formats.Asn1.dll => 130
	i64 u0xf238bd79489d3a96, ; 490: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 19
	i64 u0xf260dbb5f9e31174, ; 491: CommunityToolkit.Maui.MediaElement.dll => 39
	i64 u0xf32a2fa88738a54c, ; 492: lib_Xamarin.AndroidX.Camera.Video.dll.so => 74
	i64 u0xf37221fda4ef8830, ; 493: lib_Xamarin.Google.Android.Material.dll.so => 106
	i64 u0xf3ddfe05336abf29, ; 494: System => 167
	i64 u0xf468f07aeac0a197, ; 495: lib_Xamarin.AndroidX.Camera.Extensions.dll.so => 72
	i64 u0xf4727d423e5d26f3, ; 496: SkiaSharp => 58
	i64 u0xf4c1dd70a5496a17, ; 497: System.IO.Compression => 133
	i64 u0xf6077741019d7428, ; 498: Xamarin.AndroidX.CoordinatorLayout => 78
	i64 u0xf77b20923f07c667, ; 499: de/Microsoft.Maui.Controls.resources.dll => 4
	i64 u0xf7e2cac4c45067b3, ; 500: lib_System.Numerics.Vectors.dll.so => 142
	i64 u0xf7e74930e0e3d214, ; 501: zh-HK/Microsoft.Maui.Controls.resources.dll => 31
	i64 u0xf84773b5c81e3cef, ; 502: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 29
	i64 u0xf8abd63acd77d37b, ; 503: Xamarin.AndroidX.Camera.View => 75
	i64 u0xf8b77539b362d3ba, ; 504: lib_System.Reflection.Primitives.dll.so => 147
	i64 u0xf8e045dc345b2ea3, ; 505: lib_Xamarin.AndroidX.RecyclerView.dll.so => 100
	i64 u0xf915dc29808193a1, ; 506: System.Web.HttpUtility.dll => 165
	i64 u0xf96c777a2a0686f4, ; 507: hi/Microsoft.Maui.Controls.resources.dll => 10
	i64 u0xf9eec5bb3a6aedc6, ; 508: Microsoft.Extensions.Options => 47
	i64 u0xfa5ed7226d978949, ; 509: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 0
	i64 u0xfa645d91e9fc4cba, ; 510: System.Threading.Thread => 163
	i64 u0xfa99d44ebf9bea5b, ; 511: SkiaSharp.Views.Maui.Core => 61
	i64 u0xfbf0a31c9fc34bc4, ; 512: lib_System.Net.Http.dll.so => 139
	i64 u0xfc719aec26adf9d9, ; 513: Xamarin.AndroidX.Navigation.Fragment.dll => 97
	i64 u0xfd22f00870e40ae0, ; 514: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 82
	i64 u0xfd49b3c1a76e2748, ; 515: System.Runtime.InteropServices.RuntimeInformation => 152
	i64 u0xfd583f7657b6a1cb, ; 516: Xamarin.AndroidX.Fragment => 83
	i64 u0xfdbe4710aa9beeff, ; 517: CommunityToolkit.Maui => 36
	i64 u0xfe30a99332f3d503, ; 518: CommunityToolkit.Maui.MediaElement => 39
	i64 u0xfeae9952cf03b8cb, ; 519: tr/Microsoft.Maui.Controls.resources => 28
	i64 u0xfebc27a2c2be4585, ; 520: Xamarin.AndroidX.Media3.DataSource => 90
	i64 u0xff9b54613e0d2cc8 ; 521: System.Net.Http.Json => 138
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [522 x i32] [
	i32 131, i32 102, i32 98, i32 38, i32 172, i32 67, i32 24, i32 2,
	i32 30, i32 140, i32 100, i32 118, i32 51, i32 150, i32 31, i32 77,
	i32 168, i32 24, i32 116, i32 112, i32 147, i32 82, i32 47, i32 116,
	i32 158, i32 74, i32 162, i32 25, i32 110, i32 104, i32 21, i32 73,
	i32 173, i32 52, i32 59, i32 81, i32 64, i32 132, i32 63, i32 70,
	i32 100, i32 92, i32 65, i32 69, i32 8, i32 171, i32 9, i32 44,
	i32 113, i32 64, i32 157, i32 148, i32 169, i32 93, i32 12, i32 159,
	i32 110, i32 18, i32 75, i32 114, i32 167, i32 27, i32 172, i32 99,
	i32 16, i32 47, i32 132, i32 125, i32 131, i32 156, i32 40, i32 93,
	i32 27, i32 163, i32 149, i32 122, i32 79, i32 8, i32 70, i32 108,
	i32 48, i32 71, i32 35, i32 146, i32 13, i32 11, i32 171, i32 123,
	i32 140, i32 58, i32 29, i32 127, i32 7, i32 161, i32 130, i32 33,
	i32 20, i32 62, i32 164, i32 26, i32 160, i32 5, i32 125, i32 166,
	i32 112, i32 83, i32 34, i32 76, i32 128, i32 60, i32 8, i32 166,
	i32 115, i32 6, i32 51, i32 2, i32 49, i32 105, i32 41, i32 126,
	i32 151, i32 147, i32 115, i32 150, i32 81, i32 104, i32 1, i32 92,
	i32 101, i32 108, i32 89, i32 69, i32 107, i32 35, i32 79, i32 92,
	i32 96, i32 61, i32 91, i32 168, i32 68, i32 149, i32 169, i32 173,
	i32 20, i32 108, i32 127, i32 24, i32 63, i32 22, i32 143, i32 103,
	i32 99, i32 64, i32 151, i32 94, i32 57, i32 160, i32 59, i32 138,
	i32 87, i32 135, i32 145, i32 154, i32 14, i32 87, i32 172, i32 162,
	i32 1, i32 37, i32 49, i32 86, i32 129, i32 140, i32 79, i32 53,
	i32 25, i32 152, i32 31, i32 156, i32 91, i32 84, i32 117, i32 61,
	i32 144, i32 170, i32 124, i32 15, i32 43, i32 78, i32 164, i32 121,
	i32 60, i32 3, i32 146, i32 45, i32 94, i32 153, i32 77, i32 117,
	i32 159, i32 119, i32 166, i32 5, i32 150, i32 43, i32 109, i32 137,
	i32 50, i32 4, i32 154, i32 170, i32 115, i32 106, i32 157, i32 148,
	i32 36, i32 40, i32 49, i32 155, i32 122, i32 86, i32 65, i32 80,
	i32 3, i32 128, i32 130, i32 9, i32 153, i32 18, i32 53, i32 48,
	i32 80, i32 48, i32 97, i32 51, i32 2, i32 88, i32 28, i32 18,
	i32 146, i32 14, i32 119, i32 11, i32 137, i32 93, i32 41, i32 155,
	i32 17, i32 27, i32 83, i32 91, i32 39, i32 55, i32 7, i32 120,
	i32 25, i32 4, i32 38, i32 17, i32 142, i32 118, i32 143, i32 121,
	i32 104, i32 42, i32 85, i32 167, i32 33, i32 67, i32 76, i32 129,
	i32 29, i32 111, i32 32, i32 54, i32 75, i32 58, i32 72, i32 54,
	i32 33, i32 41, i32 163, i32 132, i32 52, i32 148, i32 109, i32 169,
	i32 119, i32 101, i32 152, i32 90, i32 62, i32 87, i32 124, i32 125,
	i32 9, i32 55, i32 80, i32 164, i32 114, i32 96, i32 10, i32 23,
	i32 22, i32 21, i32 112, i32 131, i32 127, i32 34, i32 133, i32 86,
	i32 50, i32 81, i32 160, i32 136, i32 37, i32 1, i32 17, i32 133,
	i32 70, i32 73, i32 6, i32 13, i32 53, i32 121, i32 89, i32 114,
	i32 101, i32 71, i32 135, i32 98, i32 16, i32 66, i32 42, i32 19,
	i32 123, i32 111, i32 96, i32 85, i32 95, i32 56, i32 73, i32 56,
	i32 158, i32 106, i32 99, i32 134, i32 59, i32 168, i32 16, i32 142,
	i32 158, i32 82, i32 113, i32 84, i32 12, i32 38, i32 111, i32 46,
	i32 145, i32 139, i32 44, i32 5, i32 135, i32 155, i32 85, i32 126,
	i32 23, i32 162, i32 19, i32 165, i32 120, i32 171, i32 143, i32 26,
	i32 161, i32 3, i32 76, i32 56, i32 62, i32 10, i32 0, i32 134,
	i32 46, i32 128, i32 26, i32 170, i32 35, i32 22, i32 15, i32 118,
	i32 57, i32 139, i32 105, i32 69, i32 71, i32 65, i32 68, i32 138,
	i32 0, i32 72, i32 122, i32 136, i32 66, i32 15, i32 105, i32 120,
	i32 141, i32 97, i32 145, i32 144, i32 157, i32 37, i32 40, i32 90,
	i32 165, i32 117, i32 74, i32 36, i32 28, i32 20, i32 63, i32 23,
	i32 34, i32 161, i32 109, i32 110, i32 94, i32 32, i32 141, i32 102,
	i32 124, i32 95, i32 151, i32 84, i32 88, i32 107, i32 153, i32 68,
	i32 144, i32 45, i32 14, i32 95, i32 44, i32 102, i32 42, i32 46,
	i32 103, i32 43, i32 116, i32 30, i32 60, i32 30, i32 136, i32 45,
	i32 156, i32 159, i32 32, i32 11, i32 57, i32 67, i32 78, i32 88,
	i32 134, i32 154, i32 141, i32 13, i32 113, i32 21, i32 12, i32 7,
	i32 173, i32 126, i32 89, i32 129, i32 54, i32 55, i32 103, i32 137,
	i32 98, i32 77, i32 107, i32 52, i32 149, i32 66, i32 6, i32 123,
	i32 50, i32 130, i32 19, i32 39, i32 74, i32 106, i32 167, i32 72,
	i32 58, i32 133, i32 78, i32 4, i32 142, i32 31, i32 29, i32 75,
	i32 147, i32 100, i32 165, i32 10, i32 47, i32 0, i32 163, i32 61,
	i32 139, i32 97, i32 82, i32 152, i32 83, i32 36, i32 39, i32 28,
	i32 90, i32 138
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ 1dcfb6f8779c33b6f768c996495cb90ecd729329"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
