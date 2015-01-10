.class public Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;
.super Lcom/android/mms/ui/MessageNumberPicker;
.source "MessagePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonWrapMessagePicker"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 404
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 405
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 408
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 409
    return-void
.end method
