.class Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$2;
.super Landroid/database/ContentObserver;
.source "RcsActionBarViewContactPinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$2;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 329
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v1, "mRcsServiceObserver, onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$2;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    #getter for: Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mLookupUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->access$500(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 334
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->TAG:Ljava/lang/String;

    const-string v1, "mRcsServiceObserver, reaction on notification - "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$2;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->query(Z)V

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$2;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->updateUI()V

    goto :goto_0
.end method
