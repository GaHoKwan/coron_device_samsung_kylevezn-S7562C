.class Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner$RcsServiceObserver;
.super Landroid/database/ContentObserver;
.source "RcsDetailViewPinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RcsServiceObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner$RcsServiceObserver;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->query()Landroid/database/Cursor;

    move-result-object v0

    .line 75
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner$RcsServiceObserver;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinner;->readDataFromQuery(Landroid/database/Cursor;)V

    .line 78
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_0
    return-void
.end method
