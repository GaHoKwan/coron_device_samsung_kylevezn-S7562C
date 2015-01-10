.class Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask$1;
.super Landroid/app/ProgressDialog;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 19122
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$PickContactAddButtonTask;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 19131
    const/4 v0, 0x0

    return v0
.end method
