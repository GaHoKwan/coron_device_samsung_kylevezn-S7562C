.class Lcom/sec/android/app/camera/AbstractCameraActivity$27;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 1928
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$27;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 1930
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$27;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setGpsPopupDisplayed(Z)V

    .line 1931
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$27;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGpsChanged(I)V

    .line 1932
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$27;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    .line 1933
    return-void
.end method
