// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.maps.internal:
//            IStreetViewPanoramaDelegate

public interface zzu
    extends IInterface
{
    public static abstract class zza extends Binder
        implements zzu
    {

        public static zzu zzbP(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnStreetViewPanoramaReadyCallback");
            if (iinterface != null && (iinterface instanceof zzu))
            {
                return (zzu)iinterface;
            } else
            {
                return new zza(ibinder);
            }
        }

        public IBinder asBinder()
        {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
            throws RemoteException
        {
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, j);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.maps.internal.IOnStreetViewPanoramaReadyCallback");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IOnStreetViewPanoramaReadyCallback");
                zza(IStreetViewPanoramaDelegate.zza.zzbS(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;
            }
        }

        public zza()
        {
            attachInterface(this, "com.google.android.gms.maps.internal.IOnStreetViewPanoramaReadyCallback");
        }
    }

    private static class zza.zza
        implements zzu
    {

        private IBinder zzle;

        public IBinder asBinder()
        {
            return zzle;
        }

        public void zza(IStreetViewPanoramaDelegate istreetviewpanoramadelegate)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IOnStreetViewPanoramaReadyCallback");
            if (istreetviewpanoramadelegate == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            istreetviewpanoramadelegate = istreetviewpanoramadelegate.asBinder();
_L1:
            parcel.writeStrongBinder(istreetviewpanoramadelegate);
            zzle.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            istreetviewpanoramadelegate = null;
              goto _L1
            istreetviewpanoramadelegate;
            parcel1.recycle();
            parcel.recycle();
            throw istreetviewpanoramadelegate;
        }

        zza.zza(IBinder ibinder)
        {
            zzle = ibinder;
        }
    }


    public abstract void zza(IStreetViewPanoramaDelegate istreetviewpanoramadelegate)
        throws RemoteException;
}
