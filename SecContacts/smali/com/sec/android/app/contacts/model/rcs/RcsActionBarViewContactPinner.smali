.class public Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
.super Ljava/lang/Object;
.source "RcsActionBarViewContactPinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;,
        Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;,
        Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescriptionAdapter;,
        Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private final RCSE_ENABLED:Ljava/lang/String;

.field public final RCS_ENABLED_FALSE:Ljava/lang/String;

.field public final RCS_ENABLED_TRUE:Ljava/lang/String;

.field private final RCS_SETTINGS_CONTENT_URI:Landroid/net/Uri;

.field private isRcs:Z

.field private mAsyncQuery:Landroid/content/AsyncQueryHandler;

.field mContext:Landroid/content/Context;

.field private mEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

.field private mFTPossibleActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstQuery:Z

.field private mFreeTextView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

.field private mIMPossibleActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;",
            ">;"
        }
    .end annotation
.end field

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsObserverRegisted:Z

.field private mIsUserProfile:Z

.field private mLookupUri:Landroid/net/Uri;

.field private mMyStatusObserver:Landroid/database/ContentObserver;

.field private mNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryUri:Landroid/net/Uri;

.field private mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

.field private mRcsClicker:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;

.field private mRcsServiceObserver:Landroid/database/ContentObserver;

.field private mRcsStatusObserver:Landroid/database/ContentObserver;

.field private mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    const-class v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->isRcs:Z

    .line 273
    iput-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mAsyncQuery:Landroid/content/AsyncQueryHandler;

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIMPossibleActions:Ljava/util/ArrayList;

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFTPossibleActions:Ljava/util/ArrayList;

    .line 279
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRcsClicker:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;

    .line 281
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsObserverRegisted:Z

    .line 290
    iput-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mNumbers:Ljava/util/ArrayList;

    .line 292
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsUserProfile:Z

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFirstQuery:Z

    .line 312
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    .line 314
    const-string v0, "content://com.samsung.rcs.settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->RCS_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    .line 315
    const-string v0, "rcse_enabled"

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->RCSE_ENABLED:Ljava/lang/String;

    .line 316
    const-string v0, "1"

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->RCS_ENABLED_TRUE:Ljava/lang/String;

    .line 317
    const-string v0, "0"

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->RCS_ENABLED_FALSE:Ljava/lang/String;

    .line 321
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mNumbers:Ljava/util/ArrayList;

    .line 326
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$2;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRcsServiceObserver:Landroid/database/ContentObserver;

    .line 343
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$3;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mMyStatusObserver:Landroid/database/ContentObserver;

    .line 350
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$4;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRcsStatusObserver:Landroid/database/ContentObserver;

    .line 357
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$5;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$5;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mAsyncQuery:Landroid/content/AsyncQueryHandler;

    .line 377
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIMPossibleActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->reOrdering(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->buildDialog(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFTPossibleActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->queryForRCSContact()V

    return-void
.end method

.method static synthetic access$702(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->isRcs:Z

    return p1
.end method

.method private buildDialog(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, possibleActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gez v2, :cond_0

    .line 257
    :goto_0
    return-void

    .line 232
    :cond_0
    move-object v0, p1

    .line 233
    .local v0, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 234
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescriptionAdapter;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescriptionAdapter;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Ljava/util/ArrayList;)V

    new-instance v3, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$1;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$1;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 253
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;

    iget-object v2, v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 255
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private closeStatusObserver()V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mMyStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRcsStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 752
    return-void
.end method

.method private queryForRCSContact()V
    .locals 2

    .prologue
    .line 756
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsUserProfile:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->queryMyStatusData()Landroid/database/Cursor;

    move-result-object v0

    .line 758
    .local v0, cursor:Landroid/database/Cursor;
    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->setupStatusItem(Landroid/database/Cursor;)V

    .line 759
    if-eqz v0, :cond_0

    .line 760
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 762
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->updateFreeTextUI()V

    .line 763
    return-void

    .line 756
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->queryFriendData()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method private queryFriendData()Landroid/database/Cursor;
    .locals 10

    .prologue
    .line 773
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "display_name"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "mood_text"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "homepage"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "email"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "birthday"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "facebook"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, "twitter"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    const-string v3, "cyworld"

    aput-object v3, v2, v0

    .line 780
    .local v2, projectionRcsState:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 783
    .local v6, RcsStateCursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 784
    .local v9, lookupKeyId:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "content://com.android.contacts/contacts/"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.samsung.rcs.presence/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 787
    .local v1, CONTENT_URI:Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v7, v6

    .line 793
    .end local v1           #CONTENT_URI:Landroid/net/Uri;
    .end local v6           #RcsStateCursor:Landroid/database/Cursor;
    .local v7, RcsStateCursor:Landroid/database/Cursor;
    :goto_0
    return-object v7

    .line 790
    .end local v7           #RcsStateCursor:Landroid/database/Cursor;
    .restart local v6       #RcsStateCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 791
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v3, "queryFriendData() : DB query error for rcs_state!"

    invoke-static {v0, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v6

    .line 793
    .end local v6           #RcsStateCursor:Landroid/database/Cursor;
    .restart local v7       #RcsStateCursor:Landroid/database/Cursor;
    goto :goto_0

    .end local v7           #RcsStateCursor:Landroid/database/Cursor;
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v6       #RcsStateCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    move-object v7, v6

    .end local v6           #RcsStateCursor:Landroid/database/Cursor;
    .restart local v7       #RcsStateCursor:Landroid/database/Cursor;
    goto :goto_0
.end method

.method private queryMyStatusData()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 766
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$Own;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 768
    .local v6, newCursor:Landroid/database/Cursor;
    return-object v6
.end method

.method private reOrdering(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 19
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    .local p1, tmpActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mNumbers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mNumbers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_2

    :cond_0
    move-object/from16 v15, p1

    .line 493
    :cond_1
    return-object v15

    .line 447
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v3, actionStrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;

    .line 449
    .local v4, ad:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;
    iget-object v0, v4, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;->mSipUri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 450
    iget-object v0, v4, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;->mSipUri:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 453
    .end local v4           #ad:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;
    :cond_4
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v15, retActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;>;"
    const/4 v9, 0x0

    .line 456
    .local v9, index:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v7           #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 457
    .local v11, phoneNumber:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    const/4 v5, 0x7

    .line 459
    .local v5, compareLength:I
    :goto_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v17, v17, v5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 461
    .local v6, compareString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mNumbers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 462
    .local v16, string:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;->mSipUri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 464
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    .end local v16           #string:Ljava/lang/String;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 469
    goto :goto_1

    .line 457
    .end local v5           #compareLength:I
    .end local v6           #compareString:Ljava/lang/String;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_7
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_2

    .line 471
    .end local v11           #phoneNumber:Ljava/lang/String;
    :cond_8
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 472
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v13, remainActions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;>;"
    const/4 v10, 0x0

    .line 474
    .local v10, isAdded:Z
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;

    .line 475
    .local v2, action:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;

    .line 476
    .local v14, retAction:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;
    invoke-virtual {v2, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 477
    const/4 v10, 0x1

    .line 482
    .end local v14           #retAction:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;
    :cond_a
    if-nez v10, :cond_b

    .line 483
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 485
    :cond_b
    const/4 v10, 0x0

    goto :goto_3

    .line 487
    .end local v2           #action:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_c
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_1

    .line 488
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;

    .line 489
    .local v12, remainAction:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private setupStatusItem(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 798
    if-nez p1, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 802
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsUserProfile:Z

    if-eqz v0, :cond_4

    .line 803
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    const-string v1, "display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->displayName:Ljava/lang/String;

    .line 805
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    const-string v1, "mood_text"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->moodText:Ljava/lang/String;

    .line 827
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 828
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->displayName:Ljava/lang/String;

    goto :goto_0

    .line 808
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    const-string v1, "display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->displayName:Ljava/lang/String;

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    const-string v1, "mood_text"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->moodText:Ljava/lang/String;

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    const-string v1, "homepage"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->homepage:Ljava/lang/String;

    .line 814
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    const-string v1, "email"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->email:Ljava/lang/String;

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    const-string v1, "birthday"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->birthday:Ljava/lang/String;

    .line 818
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    const-string v1, "facebook"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->facebook:Ljava/lang/String;

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    const-string v1, "twitter"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->twitter:Ljava/lang/String;

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    const-string v1, "cyworld"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->cyworld:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private setupStatusObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 740
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$Own;->CONTENT_URI:Landroid/net/Uri;

    .line 741
    .local v0, queryUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mMyStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 744
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RCSState;->CONTENT_URI:Landroid/net/Uri;

    .line 745
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRcsStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 746
    return-void
.end method


# virtual methods
.method public getFreeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->moodText:Ljava/lang/String;

    return-object v0
.end method

.method public getIsRcs()Z
    .locals 1

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->isRcs:Z

    return v0
.end method

.method public getIsRcsForRawContact(J)Z
    .locals 11
    .parameter "rawContactId"

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 593
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getIsRcs()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v9

    .line 655
    :goto_0
    return v0

    .line 597
    :cond_0
    const/4 v6, 0x0

    .line 600
    .local v6, cursorForContact:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mimetype"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "= \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 606
    if-nez v6, :cond_1

    move v0, v9

    .line 607
    goto :goto_0

    .line 609
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 610
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 611
    goto :goto_0

    .line 614
    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 616
    const/4 v7, 0x0

    .line 617
    .local v7, cursorForRcs:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 619
    .local v8, numberForRawcontact:Ljava/lang/String;
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 620
    if-eqz v8, :cond_2

    .line 623
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 627
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RcsContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "phone_number"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phone_number="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 637
    if-eqz v7, :cond_2

    .line 639
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 640
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 641
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 642
    goto/16 :goto_0

    .line 645
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 651
    .end local v7           #cursorForRcs:Landroid/database/Cursor;
    .end local v8           #numberForRawcontact:Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_5

    .line 652
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v9

    .line 655
    goto/16 :goto_0
.end method

.method public getRCSContactInfo()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    return-object v0
.end method

.method public getRcsListener()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRcsClicker:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;

    return-object v0
.end method

.method public isAvailableFT()Z
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFTPossibleActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAvailableIM()Z
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIMPossibleActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pinOnPause()V
    .locals 2

    .prologue
    .line 548
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v1, "pinOnPause"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->unregisterObserver()V

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mAsyncQuery:Landroid/content/AsyncQueryHandler;

    const v1, 0x4e97c7

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 551
    return-void
.end method

.method public pinOnResume(Landroid/net/Uri;)V
    .locals 2
    .parameter "lookupUri"

    .prologue
    .line 554
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v1, "pinOnResume"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mLookupUri:Landroid/net/Uri;

    .line 557
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->registerObserver()V

    .line 559
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->query(Z)V

    .line 560
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->queryForRCSContact()V

    .line 561
    return-void
.end method

.method public pinStartEntityQuery(Landroid/net/Uri;)V
    .locals 2
    .parameter "lookupUri"

    .prologue
    .line 380
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v1, "pinStartEntityQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    if-nez p1, :cond_0

    .line 391
    :goto_0
    return-void

    .line 385
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mLookupUri:Landroid/net/Uri;

    .line 387
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->registerObserver()V

    .line 389
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->query(Z)V

    .line 390
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->queryForRCSContact()V

    goto :goto_0
.end method

.method query(Z)V
    .locals 11
    .parameter "disableRequery"

    .prologue
    const v1, 0x4e97c7

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 497
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v2, "query"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v2, "query, lookupuri is OK"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mLookupUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/sec/android/app/contacts/model/rcs/UriUtils;->extractLookupPart(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 506
    .local v10, lookupString:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 507
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SERVICE_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mQueryUri:Landroid/net/Uri;

    .line 508
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mQueryUri:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->addOptionsToQuery(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v3

    .line 510
    .local v3, toQuery:Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mQueryUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 511
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFirstQuery:Z

    if-eqz v0, :cond_4

    .line 512
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v1, "Is First Query"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mQueryUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v3           #toQuery:Landroid/net/Uri;
    move-result-object v8

    .line 516
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_2

    .line 517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->isRcs:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .end local v8           #cursor:Landroid/database/Cursor;
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->updateUI()V

    .line 531
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->updateFreeTextUI()V

    .line 532
    iput-boolean v6, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFirstQuery:Z

    goto :goto_0

    .line 519
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->isRcs:Z

    .line 524
    :goto_2
    invoke-virtual {p0, v8}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->readDataFromQuery(Landroid/database/Cursor;)V

    .line 525
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 527
    .end local v8           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 528
    .local v9, ise:Ljava/lang/IllegalStateException;
    const-string v0, "RcsActionBarViewContactPinner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCS Query Failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 522
    .end local v9           #ise:Ljava/lang/IllegalStateException;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->isRcs:Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 534
    .end local v8           #cursor:Landroid/database/Cursor;
    .restart local v3       #toQuery:Landroid/net/Uri;
    :cond_4
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v2, "Is NOT First Query"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v0, "RcsActionBarViewContactPinner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Making query for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mAsyncQuery:Landroid/content/AsyncQueryHandler;

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mAsyncQuery:Landroid/content/AsyncQueryHandler;

    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mQueryUri:Landroid/net/Uri;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method readDataFromQuery(Landroid/database/Cursor;)V
    .locals 21
    .parameter "cursor"

    .prologue
    .line 394
    const-string v18, "RcsActionBarViewContactPinner"

    const-string v19, "readDataFromQuery"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIMPossibleActions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFTPossibleActions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 398
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v18

    if-lez v18, :cond_2

    .line 400
    const-string v18, "feature_tag"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 401
    .local v14, serviceTagNo:I
    const-string v18, "is_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 402
    .local v6, enabledNo:I
    const-string v18, "int_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 403
    .local v11, intentNameNo:I
    const-string v18, "int_category"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 405
    .local v10, intentCategoryNo:I
    const-string v18, "displayname"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 406
    .local v4, displayNameNo:I
    const-string v18, "sip_uri"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 407
    .local v16, sipUriNo:I
    const-string v18, "service_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 409
    .local v13, serviceNameNo:I
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 411
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 412
    .local v17, tag:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 414
    .local v5, enabled:I
    if-lez v5, :cond_0

    .line 416
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 417
    .local v15, sipUri:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 418
    .local v8, intentAction:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 419
    .local v9, intentCategory:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, displayName:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 422
    .local v12, serviceName:Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 423
    .local v7, i:Landroid/content/Intent;
    invoke-virtual {v7, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    new-instance v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;-><init>()V

    .line 425
    .local v2, ad:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;
    iput-object v3, v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;->mDisplayName:Ljava/lang/String;

    .line 426
    const-string v18, "sip:"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "tel:"

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;->mSipUri:Ljava/lang/String;

    .line 427
    iput-object v7, v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;->mIntent:Landroid/content/Intent;

    .line 428
    iput-object v12, v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;->mServiceName:Ljava/lang/String;

    .line 430
    const-string v18, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIMPossibleActions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_1
    const-string v18, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFTPossibleActions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 440
    .end local v2           #ad:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;
    .end local v3           #displayName:Ljava/lang/String;
    .end local v4           #displayNameNo:I
    .end local v5           #enabled:I
    .end local v6           #enabledNo:I
    .end local v7           #i:Landroid/content/Intent;
    .end local v8           #intentAction:Ljava/lang/String;
    .end local v9           #intentCategory:Ljava/lang/String;
    .end local v10           #intentCategoryNo:I
    .end local v11           #intentNameNo:I
    .end local v12           #serviceName:Ljava/lang/String;
    .end local v13           #serviceNameNo:I
    .end local v14           #serviceTagNo:I
    .end local v15           #sipUri:Ljava/lang/String;
    .end local v16           #sipUriNo:I
    .end local v17           #tag:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method registerObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 564
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsObserverRegisted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mQueryUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mQueryUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRcsServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 567
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsObserverRegisted:Z

    .line 569
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->setupStatusObserver()V

    .line 570
    return-void
.end method

.method public resetCurrentViewAndEntry()V
    .locals 1

    .prologue
    .line 693
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    .line 695
    return-void
.end method

.method public setCurrentViewAndEntry(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V
    .locals 2
    .parameter "view"
    .parameter "entry"

    .prologue
    .line 676
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v1, "setCurrentViewAndEntry"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    const-string v1, "rcs_free_text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFreeTextView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    .line 690
    :goto_0
    return-void

    .line 680
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    .line 681
    iput-object p2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 683
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_im_action:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getRcsListener()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_ft_action:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getRcsListener()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_vt_action:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getRcsListener()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;

    move-result-object v0

    goto :goto_1
.end method

.method public setInflater(Landroid/view/LayoutInflater;)V
    .locals 0
    .parameter "inflater"

    .prologue
    .line 659
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mInflater:Landroid/view/LayoutInflater;

    .line 660
    return-void
.end method

.method public setIsUserProfile(Z)V
    .locals 0
    .parameter "userProfile"

    .prologue
    .line 735
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsUserProfile:Z

    .line 736
    return-void
.end method

.method unregisterObserver()V
    .locals 2

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsObserverRegisted:Z

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRcsServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 576
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->closeStatusObserver()V

    .line 577
    return-void
.end method

.method public updateFreeTextUI()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 833
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v1, "updateFreeTextUI"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFreeTextView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFreeTextView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    if-nez v0, :cond_1

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    const/4 v7, 0x0

    .line 841
    .local v7, isRcseEnabled:Z
    const/4 v8, 0x0

    .line 843
    .local v8, rcsContext:Landroid/content/Context;
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->RCS_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "value"

    aput-object v3, v2, v10

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "rcse_enabled"

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 844
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 845
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 846
    const/4 v9, 0x0

    .line 847
    .local v9, value:Ljava/lang/String;
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 849
    const-string v0, "1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 850
    const/4 v7, 0x1

    .line 855
    .end local v9           #value:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 858
    :cond_3
    if-eqz v7, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsUserProfile:Z

    if-eqz v0, :cond_5

    .line 859
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFreeTextView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFreeTextView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    iget-object v1, v1, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->moodText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 851
    .restart local v9       #value:Ljava/lang/String;
    :cond_4
    const-string v0, "0"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 852
    const/4 v7, 0x0

    goto :goto_1

    .line 861
    .end local v9           #value:Ljava/lang/String;
    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->isRcs:Z

    if-eqz v0, :cond_7

    .line 862
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->moodText:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 863
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFreeTextView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 864
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFreeTextView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    iget-object v1, v1, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->moodText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 867
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFreeTextView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 870
    :cond_7
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->TAG:Ljava/lang/String;

    const-string v1, "updateUI, is not Rcs"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFreeTextView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public updateUI()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 698
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v1, "updateUI"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcsButtonRow:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->isRcs:Z

    if-eqz v0, :cond_2

    .line 704
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->TAG:Ljava/lang/String;

    const-string v1, "updateUI, isRcs"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcsButtonRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcsButtonRow:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_im_action:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->isAvailableIM()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 709
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_ft_action:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->isAvailableFT()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 710
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_vt_action:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 712
    :cond_2
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->TAG:Ljava/lang/String;

    const-string v1, "updateUI, is not Rcs"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcsButtonRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
