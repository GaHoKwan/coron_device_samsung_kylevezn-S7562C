.class Lcom/android/mms/ui/SmsViewerActivity$2;
.super Ljava/lang/Object;
.source "SmsViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SmsViewerActivity;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsViewerActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsViewerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/mms/ui/SmsViewerActivity$2;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity$2;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity$2;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    #getter for: Lcom/android/mms/ui/SmsViewerActivity;->mRecipients:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/SmsViewerActivity;->access$200(Lcom/android/mms/ui/SmsViewerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SmsViewerActivity;->viewContactDetailORList(Ljava/util/ArrayList;)V

    .line 265
    return-void
.end method
