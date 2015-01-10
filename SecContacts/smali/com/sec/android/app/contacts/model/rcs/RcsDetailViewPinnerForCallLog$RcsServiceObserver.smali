.class Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;
.super Landroid/database/ContentObserver;
.source "RcsDetailViewPinnerForCallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RcsServiceObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    .line 95
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 97
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->query()V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->readDataFromQuery()V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->updateUi()V

    .line 104
    return-void
.end method
