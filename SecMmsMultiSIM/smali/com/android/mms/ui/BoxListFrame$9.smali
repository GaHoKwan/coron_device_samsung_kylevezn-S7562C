.class Lcom/android/mms/ui/BoxListFrame$9;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/BoxListFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$9;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 2

    .prologue
    .line 1135
    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[onContentChanged] trigger query"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$9;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #calls: Lcom/android/mms/ui/BoxListFrame;->startAsyncQuery()V
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$1500(Lcom/android/mms/ui/BoxListFrame;)V

    .line 1137
    return-void
.end method
