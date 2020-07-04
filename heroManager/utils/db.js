// 导入模块
const fs = require("fs");
const path = require("path");

// 基地址
const fileName = path.join(__dirname, "./data/hero.json");

function getAllhero() {
    const heros = JSON.parse(fs.readFileSync(fileName, "utf-8"));
    return heros;
}
module.exports = {
    // 获取所有数据
    getHeros() {
        const heros = JSON.parse(fs.readFileSync(fileName, "utf-8"));
        return heros
            .filter((v) => !v.isDelete)
            .map(({id, name, skill, icon}) => {
                return {
                    id,
                    name,
                    skill,
                    icon,
                }
            })
    },
    addHero({ name, skill, icon }) {
        const heros = JSON.parse(fs.readFileSync(fileName, "utf-8"));
        heros.push({
            id: heros.length + 1,
            name,
            skill,
            icon,
            usDelete: false,
        });
        //   保存回去
        if (!fs.writeFileSync(fileName, JSON.stringify(heros))) {
            return true;
        } else {
            return false;
        }
    },
    //   根据ID获取数据
    getHeroById(id) {
        const heros = this.getHeros();
        const filterArr = heros.filter((v) => {
            return v.id == id;
        });
        if (filterArr[0]) {
            return filterArr[0];
        } else {
            return false;
        }
    },
    //   根据ID删除英雄（软删除）
    deleteHeroById(id) {
        const heros = getAllhero();
        const filterArr = heros.filter((v) => {
            return v.id == id;
        });
        if (filterArr[0]) {
            filterArr[0].isDelete = true;
            if (!fs.writeFileSync(fileName, JSON.stringify(heros))) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    },
    //   编辑英雄
    editHero({ id, name, skill, icon }) {
        let heros = getAllhero();
        const filterArr = heros.filter((v) => {
            return v.id == id;
        });
        if (filterArr[0]) {
            filterArr[0].name = name;
            filterArr[0].skill = skill;
            filterArr[0].icon = icon;
            if (!fs.writeFileSync(fileName, JSON.stringify(heros))) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    },
};





















