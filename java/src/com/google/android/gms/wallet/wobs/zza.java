// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzls;
import com.google.android.gms.maps.model.LatLng;

// Referenced classes of package com.google.android.gms.wallet.wobs:
//            CommonWalletObject, zzp, zzl, zzd, 
//            zzj, zzn

public class zza
    implements android.os.Parcelable.Creator
{

    public zza()
    {
    }

    static void zza(CommonWalletObject commonwalletobject, Parcel parcel, int i)
    {
        int j = zzb.zzK(parcel);
        zzb.zzc(parcel, 1, commonwalletobject.getVersionCode());
        zzb.zza(parcel, 2, commonwalletobject.zzfl, false);
        zzb.zza(parcel, 3, commonwalletobject.zzaDE, false);
        zzb.zza(parcel, 4, commonwalletobject.name, false);
        zzb.zza(parcel, 5, commonwalletobject.zzaDy, false);
        zzb.zza(parcel, 6, commonwalletobject.zzaDA, false);
        zzb.zza(parcel, 7, commonwalletobject.zzaDB, false);
        zzb.zza(parcel, 8, commonwalletobject.zzaDC, false);
        zzb.zza(parcel, 9, commonwalletobject.zzaDD, false);
        zzb.zzc(parcel, 10, commonwalletobject.state);
        zzb.zzc(parcel, 11, commonwalletobject.zzaDF, false);
        zzb.zza(parcel, 12, commonwalletobject.zzaDG, i, false);
        zzb.zzc(parcel, 13, commonwalletobject.zzaDH, false);
        zzb.zza(parcel, 14, commonwalletobject.zzaDI, false);
        zzb.zza(parcel, 15, commonwalletobject.zzaDJ, false);
        zzb.zza(parcel, 17, commonwalletobject.zzaDL);
        zzb.zzc(parcel, 16, commonwalletobject.zzaDK, false);
        zzb.zzc(parcel, 19, commonwalletobject.zzaDN, false);
        zzb.zzc(parcel, 18, commonwalletobject.zzaDM, false);
        zzb.zzc(parcel, 20, commonwalletobject.zzaDO, false);
        zzb.zzH(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return zzfi(parcel);
    }

    public Object[] newArray(int i)
    {
        return zzhI(i);
    }

    public CommonWalletObject zzfi(Parcel parcel)
    {
        int k = com.google.android.gms.common.internal.safeparcel.zza.zzJ(parcel);
        int j = 0;
        String s9 = null;
        String s8 = null;
        String s7 = null;
        String s6 = null;
        String s5 = null;
        String s4 = null;
        String s3 = null;
        String s2 = null;
        int i = 0;
        java.util.ArrayList arraylist5 = zzls.zzkb();
        zzl zzl1 = null;
        java.util.ArrayList arraylist4 = zzls.zzkb();
        String s1 = null;
        String s = null;
        java.util.ArrayList arraylist3 = zzls.zzkb();
        boolean flag = false;
        java.util.ArrayList arraylist2 = zzls.zzkb();
        java.util.ArrayList arraylist1 = zzls.zzkb();
        java.util.ArrayList arraylist = zzls.zzkb();
        do
        {
            if (parcel.dataPosition() < k)
            {
                int l = com.google.android.gms.common.internal.safeparcel.zza.zzI(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.zza.zzaP(l))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, l);
                    break;

                case 1: // '\001'
                    j = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, l);
                    break;

                case 2: // '\002'
                    s9 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 3: // '\003'
                    s8 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 4: // '\004'
                    s7 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 5: // '\005'
                    s6 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 6: // '\006'
                    s5 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 7: // '\007'
                    s4 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 8: // '\b'
                    s3 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 9: // '\t'
                    s2 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 10: // '\n'
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, l);
                    break;

                case 11: // '\013'
                    arraylist5 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, l, zzp.CREATOR);
                    break;

                case 12: // '\f'
                    zzl1 = (zzl)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, l, zzl.CREATOR);
                    break;

                case 13: // '\r'
                    arraylist4 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, l, LatLng.CREATOR);
                    break;

                case 14: // '\016'
                    s1 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 15: // '\017'
                    s = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, l);
                    break;

                case 17: // '\021'
                    flag = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, l);
                    break;

                case 16: // '\020'
                    arraylist3 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, l, zzd.CREATOR);
                    break;

                case 19: // '\023'
                    arraylist1 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, l, zzj.CREATOR);
                    break;

                case 18: // '\022'
                    arraylist2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, l, zzn.CREATOR);
                    break;

                case 20: // '\024'
                    arraylist = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, l, zzn.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != k)
            {
                throw new com.google.android.gms.common.internal.safeparcel.zza((new StringBuilder()).append("Overread allowed size end=").append(k).toString(), parcel);
            } else
            {
                return new CommonWalletObject(j, s9, s8, s7, s6, s5, s4, s3, s2, i, arraylist5, zzl1, arraylist4, s1, s, arraylist3, flag, arraylist2, arraylist1, arraylist);
            }
        } while (true);
    }

    public CommonWalletObject[] zzhI(int i)
    {
        return new CommonWalletObject[i];
    }
}
