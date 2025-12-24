package mono.androidx.camera.core;


public class CameraPresenceListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		androidx.camera.core.CameraPresenceListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onCamerasAdded:(Ljava/util/Set;)V:GetOnCamerasAdded_Ljava_util_Set_Handler:AndroidX.Camera.Core.ICameraPresenceListenerInvoker, Xamarin.AndroidX.Camera.Core\n" +
			"n_onCamerasRemoved:(Ljava/util/Set;)V:GetOnCamerasRemoved_Ljava_util_Set_Handler:AndroidX.Camera.Core.ICameraPresenceListenerInvoker, Xamarin.AndroidX.Camera.Core\n" +
			"";
		mono.android.Runtime.register ("AndroidX.Camera.Core.ICameraPresenceListenerImplementor, Xamarin.AndroidX.Camera.Core", CameraPresenceListenerImplementor.class, __md_methods);
	}

	public CameraPresenceListenerImplementor ()
	{
		super ();
		if (getClass () == CameraPresenceListenerImplementor.class) {
			mono.android.TypeManager.Activate ("AndroidX.Camera.Core.ICameraPresenceListenerImplementor, Xamarin.AndroidX.Camera.Core", "", this, new java.lang.Object[] {  });
		}
	}

	public void onCamerasAdded (java.util.Set p0)
	{
		n_onCamerasAdded (p0);
	}

	private native void n_onCamerasAdded (java.util.Set p0);

	public void onCamerasRemoved (java.util.Set p0)
	{
		n_onCamerasRemoved (p0);
	}

	private native void n_onCamerasRemoved (java.util.Set p0);

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
