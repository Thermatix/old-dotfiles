Vim�UnDo� 0p7����I7I낶?�;���s� �O8��@�   #                                  Y���    _�                             ����                                                                                                                                                                                                                                                                                                                                                             Y��Y    �                   �               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Y��>     �                  �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Y��@     �                  �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  v        Y��D    �                 �                end�                  end�                    end�   
             	      end�   	             `        row(attribute){ |model| model[attribute] ? '&#x2714;'.html_safe : '&#x2717;'.html_safe }�      
                def bool_row(attribute)�      	              class AttributesTable�                    end�                	      end�                c        column(attribute){ |model| model[attribute] ? '&#x2714;'.html_safe : '&#x2717;'.html_safe }�                       def bool_column(attribute)�                    class TableFor�                  module Views�                 module ActiveAdmin5�_�                             ����                                                                                                                                                                                                                                                                                                                                                  v        Y���    �   "   $          end�   !   #            end�       "              end�      !          8        item.column_for_attribute(data).type == :boolean�                 *        item.column_for_attribute(data) &&�                "      item.has_attribute?(data) &&�                '    if item.respond_to? :has_attribute?�                  def is_boolean?(data, item)�                 �                  end�                T    value.blank? && current_arbre_element.children.to_s.empty? ? empty_value : value�                    end�                "      value = pretty_format(value)�                    else�                      value = status_tag(value)�                     if is_boolean?(attr, record)�                )    value = find_attr_value(record, attr)�                  def content_for(record, attr)�                1ActiveAdmin::Views::AttributesTable.class_eval do�                 5��