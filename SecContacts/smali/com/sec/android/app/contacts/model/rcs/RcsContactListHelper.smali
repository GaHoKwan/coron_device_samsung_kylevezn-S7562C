.class public Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;
.super Ljava/lang/Object;
.source "RcsContactListHelper.java"

# interfaces
.implements Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

.field mRcsContactLookupSet:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->doRcsContactQuery()V

    return-void
.end method

.method private doRcsContactQuery()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 95
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->TAG:Ljava/lang/String;

    const-string v2, "doRcsContactQuery()"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->mRcsContactLookupSet:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/contacts/model/rcs/RcsContactProviderFields;->CONTACT_CAP_LOOKUP_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/contacts/model/rcs/RcsContactProviderFields;->CAP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 102
    sget-object v5, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->TAG:Ljava/lang/String;

    const-string v6, "onQueryComplete"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz p3, :cond_3

    .line 104
    const-string v5, "capabilities"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 105
    .local v1, capsColumnIdx:I
    const-string v5, "contact_lookup_key"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 107
    .local v3, lookupColumnIdx:I
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 108
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 109
    .local v0, caps:I
    and-int/lit8 v5, v0, 0x40

    if-lez v5, :cond_0

    const/4 v2, 0x1

    .line 110
    .local v2, isRcs:Z
    :goto_1
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, value:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 113
    sget-object v5, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added to set: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    .end local v2           #isRcs:Z
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 115
    .restart local v2       #isRcs:Z
    .restart local v4       #value:Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->TAG:Ljava/lang/String;

    const-string v6, "Empty value"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    .end local v0           #caps:I
    .end local v2           #isRcs:Z
    .end local v4           #value:Ljava/lang/String;
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 124
    .end local v1           #capsColumnIdx:I
    .end local v3           #lookupColumnIdx:I
    :goto_2
    return-void

    .line 120
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->mRcsContactLookupSet:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_2
.end method
