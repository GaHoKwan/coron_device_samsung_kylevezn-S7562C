.class Lcom/android/phone/InVTCallScreen$50;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 11829
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$50;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 11831
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$50;->this$0:Lcom/android/phone/InVTCallScreen;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 11833
    return-void
.end method