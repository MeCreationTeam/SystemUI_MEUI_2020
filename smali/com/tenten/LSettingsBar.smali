.class public Lcom/tenten/LSettingsBar;
.super Landroid/widget/ImageView;
.source "LSettingsBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "ic_launcher_settings"

    invoke-virtual {p0, v0}, Lcom/tenten/LSettingsBar;->setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tenten/LSettingsBar;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/tenten/LSettingsBar$1;

    invoke-direct {v0, p0, p1}, Lcom/tenten/LSettingsBar$1;-><init>(Lcom/tenten/LSettingsBar;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/tenten/LSettingsBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const-string v5, "com.android.settings"

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/tenten/LSettingsBar;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "com.android.systemui"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    const-string v6, "drawable"

    const-string v7, "com.android.systemui"

    invoke-virtual {v1, p1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
