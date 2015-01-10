.class Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$5;
.super Landroid/content/AsyncQueryHandler;
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
.method constructor <init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 357
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$5;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 360
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v1, "mAsyncQuery, onQueryComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    if-nez p3, :cond_0

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$5;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    #setter for: Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->isRcs:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->access$702(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Z)Z

    .line 373
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$5;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->updateUI()V

    .line 374
    return-void

    .line 365
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$5;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->isRcs:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->access$702(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Z)Z

    .line 370
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$5;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v0, p3}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->readDataFromQuery(Landroid/database/Cursor;)V

    .line 371
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$5;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    #setter for: Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->isRcs:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->access$702(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Z)Z

    goto :goto_1
.end method
