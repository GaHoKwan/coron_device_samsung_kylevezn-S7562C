.class public final enum Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;
.super Ljava/lang/Enum;
.source "ContactListItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CheckBoxPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

.field public static final enum LEFT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

.field public static final enum RIGHT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    new-instance v0, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    .line 171
    new-instance v0, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->RIGHT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    .line 169
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    sget-object v1, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->RIGHT:Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->$VALUES:[Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;
    .locals 1
    .parameter

    .prologue
    .line 169
    const-class v0, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;->$VALUES:[Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/list/ContactListItemView$CheckBoxPosition;

    return-object v0
.end method
