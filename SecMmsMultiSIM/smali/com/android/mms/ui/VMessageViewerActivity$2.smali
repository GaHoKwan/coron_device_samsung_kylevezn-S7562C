.class Lcom/android/mms/ui/VMessageViewerActivity$2;
.super Ljava/lang/Object;
.source "VMessageViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/VMessageViewerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/VMessageViewerActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/VMessageViewerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/mms/ui/VMessageViewerActivity$2;->this$0:Lcom/android/mms/ui/VMessageViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/VMessageViewerActivity$2;->this$0:Lcom/android/mms/ui/VMessageViewerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 123
    return-void
.end method
