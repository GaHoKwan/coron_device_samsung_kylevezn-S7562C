.class Landroid/text/method/CharacterPickerDialog$1;
.super Ljava/lang/Object;
.source "CharacterPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/text/method/CharacterPickerDialog;


# direct methods
.method constructor <init>(Landroid/text/method/CharacterPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Landroid/text/method/CharacterPickerDialog$1;->this$0:Landroid/text/method/CharacterPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 87
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog$1;->this$0:Landroid/text/method/CharacterPickerDialog;

    const/4 v1, 0x1

    #calls: Landroid/text/method/CharacterPickerDialog;->sendShowState(Z)V
    invoke-static {v0, v1}, Landroid/text/method/CharacterPickerDialog;->access$000(Landroid/text/method/CharacterPickerDialog;Z)V

    .line 88
    return-void
.end method