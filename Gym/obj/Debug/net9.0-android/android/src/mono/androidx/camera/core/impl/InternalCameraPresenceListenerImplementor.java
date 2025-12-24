package mono.androidx.camera.core.impl;


public class InternalCameraPresenceListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		androidx.camera.core.impl.InternalCameraPresenceListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onCamerasUpdated:(Ljava/util/List;)V:GetOnCamerasUpdated_Ljava_util_List_Handler:AndroidX.Camera.Core.Impl.IInternalCameraPresenceListenerInvoker, Xamarin.AndroidX.Camera.Core\n" +
			"";
		mono.android.Runtime.register ("AndroidX.Camera.Core.Impl.IInternalCameraPresenceListenerImplementor, Xamarin.AndroidX.Camera.Core", InternalCameraPresenceListenerImplementor.class, __md_methods);
	}

	public InternalCameraPresenceListenerImplementor ()
	{
		super ();
		if (getClass () == InternalCameraPresenceListenerImplementor.class) {
			mono.android.TypeManager.Activate ("AndroidX.Camera.Core.Impl.IInternalCameraPresenceListenerImplementor, Xamarin.AndroidX.Camera.Core", "", this, new java.lang.Object[] {  });
		}
	}

	public void onCamerasUpdated (java.util.List p0)
	{
		n_onCamerasUpdated (p0);
	}

	private native void n_onCamerasUpdated (java.util.List p0);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
