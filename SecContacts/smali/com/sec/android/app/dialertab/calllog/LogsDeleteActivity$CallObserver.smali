.class Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;
.super Landroid/database/ContentObserver;
.source "LogsDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "h"

    .prologue
    .line 977
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    .line 978
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 979
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 983
    const-string v0, "LogsDeleteActivity"

    const-string v1, "onChange()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->access$1202(Z)Z

    .line 987
    return-void
.end method
