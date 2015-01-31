.class Lcom/sec/android/app/camera/AbstractCameraActivity$45;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;->showAquaShotHelpDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2555
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$45;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$45;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mAquaShotHelpDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$300(Lcom/sec/android/app/camera/AbstractCameraActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2558
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$45;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    #getter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mAquaShotHelpDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$300(Lcom/sec/android/app/camera/AbstractCameraActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2559
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$45;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/camera/AbstractCameraActivity;->mAquaShotHelpDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->access$302(Lcom/sec/android/app/camera/AbstractCameraActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2561
    :cond_0
    return-void
.end method
