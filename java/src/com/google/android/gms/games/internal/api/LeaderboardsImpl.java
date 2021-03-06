// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.internal.GamesLog;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardBuffer;
import com.google.android.gms.games.leaderboard.LeaderboardScore;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;
import com.google.android.gms.games.leaderboard.Leaderboards;
import com.google.android.gms.games.leaderboard.ScoreSubmissionData;

public final class LeaderboardsImpl
    implements Leaderboards
{
    private static abstract class LoadMetadataImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzT(status);
        }

        public com.google.android.gms.games.leaderboard.Leaderboards.LeaderboardMetadataResult zzT(Status status)
        {
            return new com.google.android.gms.games.leaderboard.Leaderboards.LeaderboardMetadataResult(this, status) {

                final Status zzGT;
                final LoadMetadataImpl zzagp;

                public LeaderboardBuffer getLeaderboards()
                {
                    return new LeaderboardBuffer(DataHolder.zzay(14));
                }

                public Status getStatus()
                {
                    return zzGT;
                }

                public void release()
                {
                }

            
            {
                zzagp = loadmetadataimpl;
                zzGT = status;
                super();
            }
            };
        }

        private LoadMetadataImpl(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }

    }

    private static abstract class LoadPlayerScoreImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzU(status);
        }

        public com.google.android.gms.games.leaderboard.Leaderboards.LoadPlayerScoreResult zzU(Status status)
        {
            return new com.google.android.gms.games.leaderboard.Leaderboards.LoadPlayerScoreResult(this, status) {

                final Status zzGT;
                final LoadPlayerScoreImpl zzagq;

                public LeaderboardScore getScore()
                {
                    return null;
                }

                public Status getStatus()
                {
                    return zzGT;
                }

            
            {
                zzagq = loadplayerscoreimpl;
                zzGT = status;
                super();
            }
            };
        }

        private LoadPlayerScoreImpl(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }

    }

    private static abstract class LoadScoresImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzV(status);
        }

        public com.google.android.gms.games.leaderboard.Leaderboards.LoadScoresResult zzV(Status status)
        {
            return new com.google.android.gms.games.leaderboard.Leaderboards.LoadScoresResult(this, status) {

                final Status zzGT;
                final LoadScoresImpl zzagr;

                public Leaderboard getLeaderboard()
                {
                    return null;
                }

                public LeaderboardScoreBuffer getScores()
                {
                    return new LeaderboardScoreBuffer(DataHolder.zzay(14));
                }

                public Status getStatus()
                {
                    return zzGT;
                }

                public void release()
                {
                }

            
            {
                zzagr = loadscoresimpl;
                zzGT = status;
                super();
            }
            };
        }

        private LoadScoresImpl(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }

    }

    protected static abstract class SubmitScoreImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzW(status);
        }

        public com.google.android.gms.games.leaderboard.Leaderboards.SubmitScoreResult zzW(Status status)
        {
            return new com.google.android.gms.games.leaderboard.Leaderboards.SubmitScoreResult(this, status) {

                final Status zzGT;
                final SubmitScoreImpl zzags;

                public ScoreSubmissionData getScoreData()
                {
                    return new ScoreSubmissionData(DataHolder.zzay(14));
                }

                public Status getStatus()
                {
                    return zzGT;
                }

                public void release()
                {
                }

            
            {
                zzags = submitscoreimpl;
                zzGT = status;
                super();
            }
            };
        }

        protected SubmitScoreImpl(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }
    }


    public LeaderboardsImpl()
    {
    }

    public Intent getAllLeaderboardsIntent(GoogleApiClient googleapiclient)
    {
        return Games.zzd(googleapiclient).zznt();
    }

    public Intent getLeaderboardIntent(GoogleApiClient googleapiclient, String s)
    {
        return getLeaderboardIntent(googleapiclient, s, -1);
    }

    public Intent getLeaderboardIntent(GoogleApiClient googleapiclient, String s, int i)
    {
        return Games.zzd(googleapiclient).zzo(s, i);
    }

    public PendingResult loadCurrentPlayerLeaderboardScore(GoogleApiClient googleapiclient, String s, int i, int j)
    {
        return googleapiclient.zza(new LoadPlayerScoreImpl(googleapiclient, s, i, j) {

            final LeaderboardsImpl zzagg;
            final String zzagh;
            final int zzagi;
            final int zzagj;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zza(this, null, zzagh, zzagi, zzagj);
            }

            
            {
                zzagg = LeaderboardsImpl.this;
                zzagh = s;
                zzagi = i;
                zzagj = j;
                super(googleapiclient);
            }
        });
    }

    public PendingResult loadLeaderboardMetadata(GoogleApiClient googleapiclient, String s, boolean flag)
    {
        return googleapiclient.zza(new LoadMetadataImpl(googleapiclient, s, flag) {

            final boolean zzafy;
            final LeaderboardsImpl zzagg;
            final String zzagh;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zzb(this, zzagh, zzafy);
            }

            
            {
                zzagg = LeaderboardsImpl.this;
                zzagh = s;
                zzafy = flag;
                super(googleapiclient);
            }
        });
    }

    public PendingResult loadLeaderboardMetadata(GoogleApiClient googleapiclient, boolean flag)
    {
        return googleapiclient.zza(new LoadMetadataImpl(googleapiclient, flag) {

            final boolean zzafy;
            final LeaderboardsImpl zzagg;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zzb(this, zzafy);
            }

            
            {
                zzagg = LeaderboardsImpl.this;
                zzafy = flag;
                super(googleapiclient);
            }
        });
    }

    public PendingResult loadMoreScores(GoogleApiClient googleapiclient, LeaderboardScoreBuffer leaderboardscorebuffer, int i, int j)
    {
        return googleapiclient.zza(new LoadScoresImpl(googleapiclient, leaderboardscorebuffer, i, j) {

            final LeaderboardsImpl zzagg;
            final int zzagk;
            final LeaderboardScoreBuffer zzagl;
            final int zzagm;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zza(this, zzagl, zzagk, zzagm);
            }

            
            {
                zzagg = LeaderboardsImpl.this;
                zzagl = leaderboardscorebuffer;
                zzagk = i;
                zzagm = j;
                super(googleapiclient);
            }
        });
    }

    public PendingResult loadPlayerCenteredScores(GoogleApiClient googleapiclient, String s, int i, int j, int k)
    {
        return loadPlayerCenteredScores(googleapiclient, s, i, j, k, false);
    }

    public PendingResult loadPlayerCenteredScores(GoogleApiClient googleapiclient, String s, int i, int j, int k, boolean flag)
    {
        return googleapiclient.zza(new LoadScoresImpl(googleapiclient, s, i, j, k, flag) {

            final boolean zzafy;
            final LeaderboardsImpl zzagg;
            final String zzagh;
            final int zzagi;
            final int zzagj;
            final int zzagk;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zzb(this, zzagh, zzagi, zzagj, zzagk, zzafy);
            }

            
            {
                zzagg = LeaderboardsImpl.this;
                zzagh = s;
                zzagi = i;
                zzagj = j;
                zzagk = k;
                zzafy = flag;
                super(googleapiclient);
            }
        });
    }

    public PendingResult loadTopScores(GoogleApiClient googleapiclient, String s, int i, int j, int k)
    {
        return loadTopScores(googleapiclient, s, i, j, k, false);
    }

    public PendingResult loadTopScores(GoogleApiClient googleapiclient, String s, int i, int j, int k, boolean flag)
    {
        return googleapiclient.zza(new LoadScoresImpl(googleapiclient, s, i, j, k, flag) {

            final boolean zzafy;
            final LeaderboardsImpl zzagg;
            final String zzagh;
            final int zzagi;
            final int zzagj;
            final int zzagk;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zza(this, zzagh, zzagi, zzagj, zzagk, zzafy);
            }

            
            {
                zzagg = LeaderboardsImpl.this;
                zzagh = s;
                zzagi = i;
                zzagj = j;
                zzagk = k;
                zzafy = flag;
                super(googleapiclient);
            }
        });
    }

    public void submitScore(GoogleApiClient googleapiclient, String s, long l)
    {
        submitScore(googleapiclient, s, l, null);
    }

    public void submitScore(GoogleApiClient googleapiclient, String s, long l, String s1)
    {
        googleapiclient = Games.zzb(googleapiclient, false);
        if (googleapiclient == null)
        {
            break MISSING_BLOCK_LABEL_19;
        }
        googleapiclient.zza(null, s, l, s1);
        return;
        googleapiclient;
        GamesLog.zzr("LeaderboardsImpl", "service died");
        return;
    }

    public PendingResult submitScoreImmediate(GoogleApiClient googleapiclient, String s, long l)
    {
        return submitScoreImmediate(googleapiclient, s, l, null);
    }

    public PendingResult submitScoreImmediate(GoogleApiClient googleapiclient, String s, long l, String s1)
    {
        return googleapiclient.zzb(new SubmitScoreImpl(googleapiclient, s, l, s1) {

            final LeaderboardsImpl zzagg;
            final String zzagh;
            final long zzagn;
            final String zzago;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zza(this, zzagh, zzagn, zzago);
            }

            
            {
                zzagg = LeaderboardsImpl.this;
                zzagh = s;
                zzagn = l;
                zzago = s1;
                super(googleapiclient);
            }
        });
    }

    // Unreferenced inner class com/google/android/gms/games/internal/api/LeaderboardsImpl$10

/* anonymous class */
    class _cls10 extends LoadScoresImpl
    {

        final String zzafB;
        final boolean zzafy;
        final String zzagh;
        final int zzagi;
        final int zzagj;
        final int zzagk;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zza(this, zzafB, zzagh, zzagi, zzagj, zzagk, zzafy);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/LeaderboardsImpl$11

/* anonymous class */
    class _cls11 extends LoadScoresImpl
    {

        final String zzafB;
        final boolean zzafy;
        final String zzagh;
        final int zzagi;
        final int zzagj;
        final int zzagk;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzb(this, zzafB, zzagh, zzagi, zzagj, zzagk, zzafy);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/LeaderboardsImpl$8

/* anonymous class */
    class _cls8 extends LoadMetadataImpl
    {

        final String zzafB;
        final boolean zzafy;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzc(this, zzafB, zzafy);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/LeaderboardsImpl$9

/* anonymous class */
    class _cls9 extends LoadMetadataImpl
    {

        final String zzafB;
        final boolean zzafy;
        final String zzagh;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zza(this, zzafB, zzagh, zzafy);
        }
    }

}
