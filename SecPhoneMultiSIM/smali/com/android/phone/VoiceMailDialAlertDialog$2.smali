.class Lcom/android/phone/VoiceMailDialAlertDialog$2;
.super Ljava/lang/Object;
.source "VoiceMailDialAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VoiceMailDialAlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VoiceMailDialAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/VoiceMailDialAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/phone/VoiceMailDialAlertDialog$2;->this$0:Lcom/android/phone/VoiceMailDialAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/VoiceMailDialAlertDialog$2;->this$0:Lcom/android/phone/VoiceMailDialAlertDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 103
    return-void
.end method
