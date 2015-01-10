.class public interface abstract Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RCSState;
.super Ljava/lang/Object;
.source "FeatureTagGrupper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RCSState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RCSState$State;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DISPLAY_NAME_LOOKUP_URI:Landroid/net/Uri;

.field public static final PRESENCE_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "content://com.samsung.rcs.contacts/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RCSState;->CONTENT_URI:Landroid/net/Uri;

    .line 74
    const-string v0, "content://com.samsung.rcs.presence/rcs_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RCSState;->PRESENCE_CONTENT_URI:Landroid/net/Uri;

    .line 80
    const-string v0, "content://com.samsung.rcs.contacts/displayname/lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RCSState;->DISPLAY_NAME_LOOKUP_URI:Landroid/net/Uri;

    return-void
.end method
